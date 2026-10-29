import Think.Logic.Category.Hom

namespace Think.Logic

/-! Object, morphism, and layer bridges under the category boundary. -/

structure CategoricalBridgeEquivalence where
  Logic : Category
  Knowledge : Category

  toKnowledge : Functor Logic Knowledge
  toLogic : Functor Knowledge Logic

  logicObjectRoundTrip :
    ∀ L : Logic.Obj, toLogic.obj (toKnowledge.obj L) = L
  knowledgeObjectRoundTrip :
    ∀ K : Knowledge.Obj, toKnowledge.obj (toLogic.obj K) = K

  toKnowledgeHomEquivalence : HomEquivalence toKnowledge
  toLogicHomEquivalence : HomEquivalence toLogic

  bridgeToposHash : String
  logicSiteHash : String
  knowledgeSiteHash : String
  unitIsoHash : String
  counitIsoHash : String
  homInjectivityHash : String
  homSurjectivityHash : String
  semanticPreservationReceiptHash : String
  kernelStatus : Bool
  claimBearing : Bool

theorem CategoricalBridgeEquivalence.object_injective
  (B : CategoricalBridgeEquivalence) :
  Injective B.toKnowledge.obj :=
by
  intro x y h
  calc
    x = B.toLogic.obj (B.toKnowledge.obj x) :=
      (B.logicObjectRoundTrip x).symm
    _ = B.toLogic.obj (B.toKnowledge.obj y) := by rw [h]
    _ = y := B.logicObjectRoundTrip y

theorem CategoricalBridgeEquivalence.object_surjective
  (B : CategoricalBridgeEquivalence) :
  Surjective B.toKnowledge.obj :=
by
  intro y
  exact ⟨B.toLogic.obj y, B.knowledgeObjectRoundTrip y⟩

theorem CategoricalBridgeEquivalence.object_bijective
  (B : CategoricalBridgeEquivalence) :
  Bijective B.toKnowledge.obj :=
by
  exact ⟨CategoricalBridgeEquivalence.object_injective B,
         CategoricalBridgeEquivalence.object_surjective B⟩

theorem CategoricalBridgeEquivalence.morphism_injective
  (B : CategoricalBridgeEquivalence)
  {A C : B.Logic.Obj}
  (f g : B.Logic.Hom A C) :
  B.toKnowledge.map f = B.toKnowledge.map g → f = g :=
by
  exact HomEquivalence.injective_on_hom B.toKnowledgeHomEquivalence f g

theorem CategoricalBridgeEquivalence.morphism_surjective
  (B : CategoricalBridgeEquivalence)
  {A C : B.Logic.Obj}
  (g : B.Knowledge.Hom (B.toKnowledge.obj A) (B.toKnowledge.obj C)) :
  ∃ f : B.Logic.Hom A C, B.toKnowledge.map f = g :=
by
  exact HomEquivalence.surjective_on_hom B.toKnowledgeHomEquivalence g

structure LayerCategories where
  Log : Category
  Inf : Category
  Epist : Category
  Kn : Category
  Wis : Category

  logicToInformation : Functor Log Inf
  informationToLogic : Functor Inf Log

  informationToEpistemology : Functor Inf Epist
  epistemologyToInformation : Functor Epist Inf

  epistemologyToKnowledge : Functor Epist Kn
  knowledgeToEpistemology : Functor Kn Epist

  knowledgeToWisdom : Functor Kn Wis
  wisdomToKnowledge : Functor Wis Kn

  logicInformationReceiptHash : String
  informationEpistemologyReceiptHash : String
  epistemologyKnowledgeReceiptHash : String
  knowledgeWisdomReceiptHash : String
  claimBearing : Bool

structure LayerObjectRoundTrips (L : LayerCategories) where
  logicInformation :
    ∀ A : L.Log.Obj,
      L.informationToLogic.obj (L.logicToInformation.obj A) = A
  informationLogic :
    ∀ A : L.Inf.Obj,
      L.logicToInformation.obj (L.informationToLogic.obj A) = A
  informationEpistemology :
    ∀ A : L.Inf.Obj,
      L.epistemologyToInformation.obj (L.informationToEpistemology.obj A) = A
  epistemologyInformation :
    ∀ A : L.Epist.Obj,
      L.informationToEpistemology.obj (L.epistemologyToInformation.obj A) = A
  epistemologyKnowledge :
    ∀ A : L.Epist.Obj,
      L.knowledgeToEpistemology.obj (L.epistemologyToKnowledge.obj A) = A
  knowledgeEpistemology :
    ∀ A : L.Kn.Obj,
      L.epistemologyToKnowledge.obj (L.knowledgeToEpistemology.obj A) = A
  knowledgeWisdom :
    ∀ A : L.Kn.Obj,
      L.wisdomToKnowledge.obj (L.knowledgeToWisdom.obj A) = A
  wisdomKnowledge :
    ∀ A : L.Wis.Obj,
      L.knowledgeToWisdom.obj (L.wisdomToKnowledge.obj A) = A

structure LayerHomRoundTrips (L : LayerCategories) where
  logicInformationHom : HomEquivalence L.logicToInformation
  informationLogicHom : HomEquivalence L.informationToLogic
  informationEpistemologyHom : HomEquivalence L.informationToEpistemology
  epistemologyInformationHom : HomEquivalence L.epistemologyToInformation
  epistemologyKnowledgeHom : HomEquivalence L.epistemologyToKnowledge
  knowledgeEpistemologyHom : HomEquivalence L.knowledgeToEpistemology
  knowledgeWisdomHom : HomEquivalence L.knowledgeToWisdom
  wisdomKnowledgeHom : HomEquivalence L.wisdomToKnowledge

structure LayerCategoryEquivalence where
  layers : LayerCategories
  objectRoundTrips : LayerObjectRoundTrips layers
  homRoundTrips : LayerHomRoundTrips layers
  totalCategoryHash : String
  semanticPreservationReceiptHash : String
  kernelStatus : Bool
  visualAuthority : Bool
  claimBearing : Bool

def LayerCategoryEquivalence.logicToWisdom
    (E : LayerCategoryEquivalence) :
    Functor E.layers.Log E.layers.Wis where
  obj A :=
    E.layers.knowledgeToWisdom.obj
      (E.layers.epistemologyToKnowledge.obj
        (E.layers.informationToEpistemology.obj
          (E.layers.logicToInformation.obj A)))
  map {A B} f :=
    E.layers.knowledgeToWisdom.map
      (E.layers.epistemologyToKnowledge.map
        (E.layers.informationToEpistemology.map
          (E.layers.logicToInformation.map f)))
  map_id A := by
    rw [E.layers.logicToInformation.map_id]
    rw [E.layers.informationToEpistemology.map_id]
    rw [E.layers.epistemologyToKnowledge.map_id]
    rw [E.layers.knowledgeToWisdom.map_id]
  map_comp f g := by
    rw [E.layers.logicToInformation.map_comp]
    rw [E.layers.informationToEpistemology.map_comp]
    rw [E.layers.epistemologyToKnowledge.map_comp]
    rw [E.layers.knowledgeToWisdom.map_comp]

def LayerCategoryEquivalence.wisdomToLogic
    (E : LayerCategoryEquivalence) :
    Functor E.layers.Wis E.layers.Log where
  obj A :=
    E.layers.informationToLogic.obj
      (E.layers.epistemologyToInformation.obj
        (E.layers.knowledgeToEpistemology.obj
          (E.layers.wisdomToKnowledge.obj A)))
  map {A B} f :=
    E.layers.informationToLogic.map
      (E.layers.epistemologyToInformation.map
        (E.layers.knowledgeToEpistemology.map
          (E.layers.wisdomToKnowledge.map f)))
  map_id A := by
    rw [E.layers.wisdomToKnowledge.map_id]
    rw [E.layers.knowledgeToEpistemology.map_id]
    rw [E.layers.epistemologyToInformation.map_id]
    rw [E.layers.informationToLogic.map_id]
  map_comp f g := by
    rw [E.layers.wisdomToKnowledge.map_comp]
    rw [E.layers.knowledgeToEpistemology.map_comp]
    rw [E.layers.epistemologyToInformation.map_comp]
    rw [E.layers.informationToLogic.map_comp]

theorem LayerCategoryEquivalence.logic_wisdom_object_round_trip
    (E : LayerCategoryEquivalence)
    (A : E.layers.Log.Obj) :
    E.wisdomToLogic.obj (E.logicToWisdom.obj A) = A :=
by
  simp [LayerCategoryEquivalence.wisdomToLogic,
        LayerCategoryEquivalence.logicToWisdom,
        E.objectRoundTrips.knowledgeWisdom,
        E.objectRoundTrips.epistemologyKnowledge,
        E.objectRoundTrips.informationEpistemology,
        E.objectRoundTrips.logicInformation]

theorem LayerCategoryEquivalence.wisdom_logic_object_round_trip
    (E : LayerCategoryEquivalence)
    (A : E.layers.Wis.Obj) :
    E.logicToWisdom.obj (E.wisdomToLogic.obj A) = A :=
by
  simp [LayerCategoryEquivalence.wisdomToLogic,
        LayerCategoryEquivalence.logicToWisdom,
        E.objectRoundTrips.informationLogic,
        E.objectRoundTrips.epistemologyInformation,
        E.objectRoundTrips.knowledgeEpistemology,
        E.objectRoundTrips.wisdomKnowledge]

theorem LayerCategoryEquivalence.logicToWisdom_object_bijective
    (E : LayerCategoryEquivalence) :
    Bijective E.logicToWisdom.obj :=
by
  constructor
  · intro A B h
    calc
      A = E.wisdomToLogic.obj (E.logicToWisdom.obj A) :=
        (E.logic_wisdom_object_round_trip A).symm
      _ = E.wisdomToLogic.obj (E.logicToWisdom.obj B) := by rw [h]
      _ = B := E.logic_wisdom_object_round_trip B
  · intro W
    exact ⟨E.wisdomToLogic.obj W, E.wisdom_logic_object_round_trip W⟩

end Think.Logic
