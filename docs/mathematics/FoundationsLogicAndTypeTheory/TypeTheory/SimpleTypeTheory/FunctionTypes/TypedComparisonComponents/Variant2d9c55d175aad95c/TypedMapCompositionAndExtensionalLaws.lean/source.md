# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.SimpleTypeTheory.FunctionTypes.TypedComparisonComponents.Variant2d9c55d175aad95c.TypedMapCompositionAndExtensionalLaws

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5c75f5f90a45f3dbc10917db2e79588960a50c11` · SHA-256 `7d954eec2e0e907fd41483e3a0019edef68e5fb812564be7983672b598964b45`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
TypedMapCompositionAndExtensionalLaws - exact source component
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: 2d9c55d175aad95c3ac015bc32e24bc6220e1c62be7890edd5aaa738f7d7310f
Organized SHA-256: ff21d381c45596762de63f5b9d4aeb1e89ce727ac071280081c8022678f4b145
PMD: 510.0.070.010.020 function types (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/-
Scope: The whole single-function Spec carrier and exact identity/composition/application/extensionality/associativity/unit laws. These ordinary typed maps assert no injectivity, surjectivity or equivalence. Exact per-component contents are its complete command map. Whole-file documentation below is copied unchanged and can describe other archived/components.
-/

/-!
# Typed comparison maps

A `Spec` contains only a function.  Construction provenance, logical status,
coefficients, scope, and determinant transport are deliberately owned by
separate modules.  In particular, metadata attached elsewhere cannot turn a
map into an injection, surjection, or equivalence.
-/

namespace DAF.Comparison

universe u v w x

/-- A typed comparison map, without any claim about that map. -/
structure Spec (A : Sort u) (B : Sort v) where
  map : A → B

namespace Spec

/-- The identity comparison. -/
def id (A : Sort u) : Spec A A :=
  ⟨_root_.id⟩

/-- Composition, written as `g` after `f`. -/
def comp (g : Spec B C) (f : Spec A B) : Spec A C :=
  ⟨fun a ↦ g.map (f.map a)⟩

@[simp]
theorem id_apply (a : A) : (id A).map a = a :=
  rfl

@[simp]
theorem comp_apply (g : Spec B C) (f : Spec A B) (a : A) :
    (g.comp f).map a = g.map (f.map a) :=
  rfl

@[ext]
theorem ext {f g : Spec A B} (h : f.map = g.map) : f = g := by
  cases f
  cases g
  cases h
  rfl

theorem comp_assoc (h : Spec C D) (g : Spec B C) (f : Spec A B) :
    (h.comp g).comp f = h.comp (g.comp f) :=
  rfl

@[simp]
theorem id_comp (f : Spec A B) : (id B).comp f = f :=
  rfl

@[simp]
theorem comp_id (f : Spec A B) : f.comp (id A) = f :=
  rfl

end Spec

end DAF.Comparison
```
