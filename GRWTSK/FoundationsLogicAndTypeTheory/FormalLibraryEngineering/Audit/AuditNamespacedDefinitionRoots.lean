-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DeclarationInspection.Variant99ae30f034fa9e9fde425aa76972c910123321e8b880fa27026e1967c82a3b9a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"99ae30f034fa9e9fde425aa76972c910123321e8b880fa27026e1967c82a3b9a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.DeclarationInspection.Variant99ae30f034fa9e9fde425aa76972c910123321e8b880fa27026e1967c82a3b9a","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"99ae30f034fa9e9fde425aa76972c910123321e8b880fa27026e1967c82a3b9a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/24/\\/indiscrete-terminal-topos/lean/IndiscreteTerminalTopos/Audit.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-!
Environment-backed declaration inspection and transitive axiom auditing.

This module reads the checked `Lean.Environment`. It does not infer declaration
existence from source text or pretty-printed output, and it does not perform the
host-owned build or `leanchecker` process steps.
-/

import IndiscreteTerminalTopos.Chamber
import Lean
import Lean.Util.CollectAxioms


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DeclarationInspection.Variant99ae30f034fa9e9fde425aa76972c910123321e8b880fa27026e1967c82a3b9a

namespace IndiscreteTerminalTopos.Audit

/-- Definition roots required by the represented canonical space. -/
def definitionRoots : Array Name := #[
  ``IndiscreteTerminalTopos.structuralUniverse,
  ``IndiscreteTerminalTopos.canonicalTopos,
  ``IndiscreteTerminalTopos.IndiscreteLocale,
  ``IndiscreteTerminalTopos.Open,
  ``IndiscreteTerminalTopos.F2,
  ``IndiscreteTerminalTopos.constantSheaf,
  ``IndiscreteTerminalTopos.uniquePoint,
  ``IndiscreteTerminalTopos.stalk,
  ``IndiscreteTerminalTopos.TerminalCarrier,
  ``IndiscreteTerminalTopos.terminate
]

/-- Kernel theorem obligations required by the represented canonical space. -/
def theoremObligations : Array Name := #[
  ``IndiscreteTerminalTopos.indiscreteLocaleWitness,
  ``IndiscreteTerminalTopos.fieldWitness,
  ``IndiscreteTerminalTopos.simpleAlgebraWitness,
  ``IndiscreteTerminalTopos.localAlgebraWitness,
  ``IndiscreteTerminalTopos.sheafWitness,
  ``IndiscreteTerminalTopos.stalkIdentification,
  ``IndiscreteTerminalTopos.terminateUnique
]

/-- Additional declarations referenced by the comparative operation suite. -/
def comparativeDeclarations : Array Name := #[
  ``IndiscreteTerminalTopos.Open.meet,
  ``IndiscreteTerminalTopos.Open.join,
  ``IndiscreteTerminalTopos.Open.complement,
  ``IndiscreteTerminalTopos.Open.isSubset,
  ``IndiscreteTerminalTopos.isCover,
  ``IndiscreteTerminalTopos.F2.add,
  ``IndiscreteTerminalTopos.F2.mul,
  ``IndiscreteTerminalTopos.F2.neg,
  ``IndiscreteTerminalTopos.F2.inverse,
  ``IndiscreteTerminalTopos.F2Ideal,
  ``IndiscreteTerminalTopos.F2Ideal.contains,
  ``IndiscreteTerminalTopos.generatedIdeal,
  ``IndiscreteTerminalTopos.uniqueMaximalIdeal,
  ``IndiscreteTerminalTopos.Section,
  ``IndiscreteTerminalTopos.emptySection,
  ``IndiscreteTerminalTopos.wholeSection,
  ``IndiscreteTerminalTopos.zeroSection,
  ``IndiscreteTerminalTopos.oneSection,
  ``IndiscreteTerminalTopos.restrict,
  ``IndiscreteTerminalTopos.addSection,
  ``IndiscreteTerminalTopos.multiplySection,
  ``IndiscreteTerminalTopos.negateSection,
  ``IndiscreteTerminalTopos.glue
]

/-- Declarations owned by the parametric Landau chamber extension. -/
def chamberDeclarations : Array Name := #[
  ``IndiscreteTerminalTopos.Chamber.PrimePowerEvent,
  ``IndiscreteTerminalTopos.Chamber.ChamberState,
  ``IndiscreteTerminalTopos.Chamber.initialState,
  ``IndiscreteTerminalTopos.Chamber.advance,
  ``IndiscreteTerminalTopos.Chamber.stateRecurrence,
  ``IndiscreteTerminalTopos.Chamber.ScalarKernel,
  ``IndiscreteTerminalTopos.Chamber.chamberFunction,
  ``IndiscreteTerminalTopos.Chamber.ChamberConvexity,
  ``IndiscreteTerminalTopos.Chamber.ClampRegime,
  ``IndiscreteTerminalTopos.Chamber.clampedMinimum,
  ``IndiscreteTerminalTopos.Chamber.OnePointCriterion,
  ``IndiscreteTerminalTopos.Chamber.legendreState,
  ``IndiscreteTerminalTopos.Chamber.LegendreImpulseIdentity,
  ``IndiscreteTerminalTopos.Chamber.HardyGramData,
  ``IndiscreteTerminalTopos.Chamber.GramPositivity,
  ``IndiscreteTerminalTopos.Chamber.FiniteFrontCertificate,
  ``IndiscreteTerminalTopos.Chamber.LinearDriftObligation,
  ``IndiscreteTerminalTopos.Chamber.HardyTailObligation,
  ``IndiscreteTerminalTopos.Chamber.ChamberObject,
  ``IndiscreteTerminalTopos.Chamber.mkChamberObject,
  ``IndiscreteTerminalTopos.Chamber.RoundTripStatement
]

/-- Every declaration in the canonical space verification request. -/
def requiredDeclarations : Array Name := definitionRoots ++ theoremObligations

/-- Open declaration-kind classification derived from `ConstantInfo`. -/
def declarationKind : Lean.ConstantInfo → String
  | .axiomInfo _ => "axiom"
  | .defnInfo _ => "definition"
  | .thmInfo _ => "theorem"
  | .opaqueInfo _ => "opaque"
  | .quotInfo _ => "quotient"
  | .inductInfo _ => "inductive"
  | .ctorInfo _ => "constructor"
  | .recInfo _ => "recursor"

/-- Checked-environment inspection result for one declaration. -/
structure DeclarationInspection where
  /-- Fully qualified declaration name. -/
  declaration : Name
  /-- Actual checked declaration kind, when present. -/
  actualKind : Option String
  /-- Whether the declaration is present in the checked kernel environment. -/
  present : Bool
  deriving Repr

/-- Inspects one declaration in the checked kernel environment. -/
def inspectDeclaration (environment : Lean.Environment) (name : Name) :
    DeclarationInspection :=
  match environment.checked.get.find? name with
  | some info =>
      { declaration := name, actualKind := some (declarationKind info), present := true }
  | none =>
      { declaration := name, actualKind := none, present := false }

/-- Inspects the complete represented space in the checked kernel environment. -/
def inspectSpace (environment : Lean.Environment) : Array DeclarationInspection :=
  requiredDeclarations.map (inspectDeclaration environment)

/-- Inspects all declarations used by the comparative operation suite. -/
def inspectComparativeFeatures (environment : Lean.Environment) :
    Array DeclarationInspection :=
  comparativeDeclarations.map (inspectDeclaration environment)

/-- Verifies declaration presence in the checked kernel environment. -/
def verifyDeclarations (environment : Lean.Environment) (declarations : Array Name) : Bool :=
  declarations.all fun name => (inspectDeclaration environment name).present

/-- Verifies every canonical represented-space declaration. -/
def verifySpace (environment : Lean.Environment) : Bool :=
  verifyDeclarations environment requiredDeclarations

/-- Inspects the complete chamber declaration map. -/
def inspectChamber (environment : Lean.Environment) : Array DeclarationInspection :=
  chamberDeclarations.map (inspectDeclaration environment)

/-- Verifies the complete chamber declaration map. -/
def verifyChamber (environment : Lean.Environment) : Bool :=
  verifyDeclarations environment chamberDeclarations

/-- Verifies declarations supplied for a represented internal object. -/
def verifyObject (environment : Lean.Environment) (typeDecl termDecl : Name) : Bool :=
  verifyDeclarations environment #[typeDecl, termDecl]

/-- Verifies declarations supplied for one represented terminal morphism. -/
def verifyTerminalMorphism
    (environment : Lean.Environment)
    (sourceType sourceTerm morphism uniqueness : Name) : Bool :=
  verifyDeclarations environment #[sourceType, sourceTerm, morphism, uniqueness]

/-- Lifecycle observation for a declaration after pending tasks are complete. -/
structure DeclarationLifecycle where
  /-- Fully qualified declaration name. -/
  declaration : Name
  /-- Presence in the checked environment. -/
  present : Bool
  /-- Actual open declaration-kind classification. -/
  actualKind : Option String
  deriving Repr

/-- Observes declaration lifecycle in the checked environment. -/
def declarationLifecycle (environment : Lean.Environment) (name : Name) :
    DeclarationLifecycle :=
  let inspection := inspectDeclaration environment name
  {
    declaration := name
    present := inspection.present
    actualKind := inspection.actualKind
  }

/-- Collects transitive axiom dependencies using Lean's checked environment. -/
def collectAxiomsFor (name : Name) : Lean.CoreM (Array Name) :=
  Lean.collectAxioms name

/-- Provider operations whose process-level execution is supplied by the host. -/
def providerOperations : Array String := #[
  "inspectSpace",
  "inspectDeclaration",
  "inspectCapabilities",
  "declarationLifecycle",
  "goalsAt",
  "verifySpace",
  "inspectChamber",
  "verifyChamber",
  "verifyObject",
  "verifyTerminalMorphism",
  "collectAxioms",
  "build",
  "independentCheck"
]

end IndiscreteTerminalTopos.Audit
