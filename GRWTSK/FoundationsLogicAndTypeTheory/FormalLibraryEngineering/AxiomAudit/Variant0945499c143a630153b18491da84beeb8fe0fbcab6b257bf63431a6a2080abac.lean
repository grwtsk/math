-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Examples.Variant6da9ab270dfc05b54880d8eac74a9d4fb49c9126a17b6c477fb5d895d1d69f13","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6da9ab270dfc05b54880d8eac74a9d4fb49c9126a17b6c477fb5d895d1d69f13","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.Examples.Variant6da9ab270dfc05b54880d8eac74a9d4fb49c9126a17b6c477fb5d895d1d69f13","mathematical_subject":"Foundations.Unclassified","original_sha256":"6da9ab270dfc05b54880d8eac74a9d4fb49c9126a17b6c477fb5d895d1d69f13","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Atomize/Formal/AxiomAudit.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Atomize.Formal.Examples

/-!
# Kernel-authority audit for the bounded M1a exports

**Architectural problem:** A successful build alone does not show which logical
axioms an exported theorem depends on.  The audit therefore asks the pinned
Lean environment to print both each public type and its transitive axiom set.

**Important data and indices:** The eight declarations below cover structural
recovery, root/size/height preservation, constant/root-variable/leaf-origin
accounting, and the conditional boundary-closed recovery theorem.

**Type-enforced invariant:** `#check` must elaborate each exact declaration
name. `#print axioms` then queries the checked environment for that declaration;
an absent or renamed witness makes this module fail to elaborate.

**Layer boundary:** The resulting text is a Lean environment observation.  Its
capture, hashing, and replay are external evidence, while the referenced proof
terms retain only the authority granted by Lean's kernel and their printed
logical assumptions.

**Worked example:** `eval_comp` is expected to report the ordinary logical
closure needed by its proof, not a fabricated claim that the theorem is
"axiom-free" in every sense.

**Used by:** `Surface.ContinuousAssurance.AxiomAudit` imports this module, and
the evidence controller binds the emitted paragraphs to `ATOMIZE-M1A-001`.

**Proof idea:** This file proves no new theorem.  It makes the load-bearing
exports mandatory inputs to a separate kernel-environment inspection step.

**Equality notion:** The printed theorem types contain Lean propositional
equalities from the source modules; the audit does not replace them with hash,
pretty-print, or normalized-text equality.

**Boundary cases:** A declaration may have an empty printed axiom set or may
depend on explicitly permitted logical principles.  Either result is recorded;
the audit must not silently turn an unexpected dependency into acceptance.

**Validation consequence:** A current successful audit binds the named M1a
exports and their observed axiom closure.  It does not certify a concrete Lean
frontend adapter, Rust runtime, historical trace, or any later milestone.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Examples.Variant6da9ab270dfc05b54880d8eac74a9d4fb49c9126a17b6c477fb5d895d1d69f13

#check Atomize.Formal.eval_comp
#print axioms Atomize.Formal.eval_comp
#check Atomize.Formal.root_comp
#print axioms Atomize.Formal.root_comp
#check Atomize.Formal.size_comp
#print axioms Atomize.Formal.size_comp
#check Atomize.Formal.height_comp
#print axioms Atomize.Formal.height_comp
#check Atomize.Formal.constantReferences_comp
#print axioms Atomize.Formal.constantReferences_comp
#check Atomize.Formal.rootVariables_comp
#print axioms Atomize.Formal.rootVariables_comp
#check Atomize.Formal.leafOrigins_comp
#print axioms Atomize.Formal.leafOrigins_comp
#check Atomize.Formal.eval_compB
#print axioms Atomize.Formal.eval_compB
