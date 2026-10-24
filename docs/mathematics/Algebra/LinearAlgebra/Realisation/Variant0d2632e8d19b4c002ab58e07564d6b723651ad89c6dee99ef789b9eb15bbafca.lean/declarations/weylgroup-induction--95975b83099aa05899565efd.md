# weylGroup.induction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cfbffa37-d78f-d39f-0fb2-d126dd9c46af",
  "kind": "lemma",
  "lexical_name": "weylGroup.induction",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "weylgroup-induction--95975b83099aa05899565efd",
  "source": {
    "blob": "48b70d9ca47fc2bca74198387059bd39e4994868",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 253,
    "line": 234,
    "path": "GRWTSK/Algebra/LinearAlgebra/Realisation/Variant0d2632e8d19b4c002ab58e07564d6b723651ad89c6dee99ef789b9eb15bbafca.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:95975b83099aa05899565efdd031c51e7024a065c80a5f424f088b44f16cff7b",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Realisation/Variant0d2632e8d19b4c002ab58e07564d6b723651ad89c6dee99ef789b9eb15bbafca.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cfbffa37-d78f-d39f-0fb2-d126dd9c46af`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 234–253.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma weylGroup.induction {pred : (g : (M ≃ₗ[R] M) × (N ≃ₗ[R] N)) → g ∈ rl.weylGroup → Prop}
    (mem : ∀ i, pred (rl.reflection i, rl.coreflection i) (rl.mem_weyl i))
    (one : pred 1 (one_mem _))
    (mul : ∀ x y hx hy, pred x hx → pred y hy → pred (x * y) (mul_mem hx hy))
    {w} (hw : w ∈ rl.weylGroup) :
    pred w hw := by
  set S := (range <| Function.prod rl.reflection rl.coreflection) with S_def
  have : rl.weylGroup.toSubmonoid = .closure S := by
    suffices S = S⁻¹ by rw [weylGroup, Subgroup.closure_toSubmonoid, ← this, union_self]
    ext; simp [S_def, ← inv_eq_iff_eq_inv]
  let pred' : (g : (M ≃ₗ[R] M) × (N ≃ₗ[R] N)) → g ∈ Submonoid.closure S → Prop :=
    fun g hg ↦ pred g <| by rwa [← Subgroup.mem_toSubmonoid, this]
  replace hw' : w ∈ Submonoid.closure S := by rwa [← this]
  suffices pred' w hw' from this
  clear hw
  induction hw' using Submonoid.closure_induction with
  | mem u hu => obtain ⟨i, rfl⟩ := hu; exact mem i
  | one => exact one
  | mul u v hu hv hu' hv' => rw [← this] at hu hv; exact mul u v hu hv hu' hv'

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Realisation/Variant0d2632e8d19b4c002ab58e07564d6b723651ad89c6dee99ef789b9eb15bbafca.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Realisation/Variant0d2632e8d19b4c002ab58e07564d6b723651ad89c6dee99ef789b9eb15bbafca.lean#L234).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `48b70d9ca47fc2bca74198387059bd39e4994868` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
