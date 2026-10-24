import Think.Logic.Core

namespace Think.Logic

/-! Structural layer receipts for the lightweight Think category schema. -/

structure CartesianClosed (C : Category) where
  terminal : C.Obj
  product : C.Obj → C.Obj → C.Obj
  exponential : C.Obj → C.Obj → C.Obj
  terminalHash : String
  productHash : String
  exponentialHash : String

structure SymmetricMonoidal (C : Category) where
  tensor : C.Obj → C.Obj → C.Obj
  unit : C.Obj
  symmetryHash : String
  associatorHash : String
  unitorHash : String

structure ProofRelevantPreorder (C : Category) where
  justified : C.Obj → C.Obj → Prop
  reflexive : ∀ A : C.Obj, justified A A
  transitive : ∀ {A B D : C.Obj}, justified A B → justified B D → justified A D

structure Adjunction {C D : Category} (L : Functor C D) (E : Functor D C) where
  unitHash : String
  counitHash : String
  triangleLeftHash : String
  triangleRightHash : String

structure SheafTopos (C : Category) where
  siteHash : String
  coverageHash : String
  sheafificationHash : String
  gluingTheoremHash : String

structure MonadOn (C : Category) where
  carrier : Functor C C
  etaHash : String
  muHash : String
  lawHash : String

structure CosliceWisdom (Kn Wis : Category) where
  terminalValue : Kn.Obj
  utilityFunctor : Functor Kn Wis
  optimizationMonad : MonadOn Wis
  cosliceHash : String

structure ThinkLayerStack where
  Think : Category
  Log : Category
  Inf : Category
  Epist : Category
  Kn : Category
  Wis : Category

  logicCCC : CartesianClosed Log
  informationMonoidal : SymmetricMonoidal Inf
  epistemicPreorder : ProofRelevantPreorder Epist
  knowledgeTopos : SheafTopos Kn
  wisdomCoslice : CosliceWisdom Kn Wis

  logicToInformation : Functor Log Inf
  informationToLogic : Functor Inf Log
  epistemicReflection : Functor Inf Epist
  knowledgeReflection : Functor Epist Kn
  wisdomProjection : Functor Kn Wis

  logicInformationAdjunction : Adjunction logicToInformation informationToLogic

  totalFibrationHash : String
  localizationHash : String
  sheafificationHash : String

end Think.Logic
