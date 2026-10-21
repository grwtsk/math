/-
WholeUniquenessCharacterization - exact source component
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: 208ddf85e8d31445d17e4dd5beed5cd6d67286608eaa1733265aba3aaf42943a
Organized SHA-256: b1f4a31fa4aeefdf9f5337deaa0ec908ba147be7ad95f883494009d2ea3ca9ea
PMD: 510.0.070.020.010.030 function equality (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/-
Scope: The full equality-reference witness, full three-field characterization/uniqueness package, and whole representation-indexed function packages preserve all fields and supplied proofs. Canonical composition requires a freshly supplied composite characterization, its proof and uniqueness; the original component canonical witnesses remain unused arguments. Equality of representation parameters, or the explicit independence hypothesis, is retained. Exact per-component contents are its complete command map. Whole-file documentation below is copied unchanged and can describe other archived/components.
-/

import DAF.Comparison.Core

/-!
# Construction provenance

Provenance is independent of logical status.  “Canonical” means uniquely
characterized, not definitionally equal; a canonical map may still have only
a conjectural isomorphism property.  A representation-dependent map is
canonical only after its representation has been fixed, unless a separate
independence theorem removes that dependence.
-/

namespace DAF.Comparison

universe u v w

namespace Definitional

end Definitional

/-- A proof-bearing uniqueness characterization of a comparison. -/
structure Canonical (C : Spec A B) where
  Characterizes : (A → B) → Prop
  characterized : Characterizes C.map
  unique : ∀ f, Characterizes f → f = C.map

namespace Canonical

/-- Any map satisfying the characterization equals the canonical map. -/
theorem eq {A : Sort u} {B : Sort v} {C : Spec A B}
    (h : Canonical C) {f : A → B} (hf : h.Characterizes f) :
    f = C.map :=
  h.unique f hf

/--
Compose canonical maps only after supplying a characterization and its
uniqueness proof for the composite.  Canonicality is not inferred from tags.
-/
def comp
    {f : Spec A B} {g : Spec B C}
    (_hg : Canonical g) (_hf : Canonical f)
    (Characterizes : (A → C) → Prop)
    (characterized : Characterizes (g.comp f).map)
    (unique : ∀ h, Characterizes h → h = (g.comp f).map) :
    Canonical (g.comp f) where
  Characterizes := Characterizes
  characterized := characterized
  unique := unique

end Canonical

end DAF.Comparison
