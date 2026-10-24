# weylGroup.induction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "61c5a78924657bcf15c3fa4c05b3c9967e7bcb1e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 226,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/76/76a073517de0efa56b2f5fa3203c39889126f6044cba96b5e48c83286fd327bd.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ee5d49ea-3e8f-d25d-3b5f-e690a1f1b141",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:97b22fb2-2e9b-dd5f-2d16-40695ad07d3b",
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
  "slug": "weylgroup-induction--0c33bd690d7e2da183444a08",
  "source": {
    "blob": "61c5a78924657bcf15c3fa4c05b3c9967e7bcb1e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 245,
    "line": 226,
    "path": "GRWTSK/Algebra/LinearAlgebra/Realisation/Variant76a073517de0efa56b2f5fa3203c39889126f6044cba96b5e48c83286fd327bd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0c33bd690d7e2da183444a08fe750b1c9d222d9b40ea73418da807b6a9f8a827",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Realisation/Variant76a073517de0efa56b2f5fa3203c39889126f6044cba96b5e48c83286fd327bd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:97b22fb2-2e9b-dd5f-2d16-40695ad07d3b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 226–245.

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

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Realisation/Variant76a073517de0efa56b2f5fa3203c39889126f6044cba96b5e48c83286fd327bd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Realisation/Variant76a073517de0efa56b2f5fa3203c39889126f6044cba96b5e48c83286fd327bd.lean#L226).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `61c5a78924657bcf15c3fa4c05b3c9967e7bcb1e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
