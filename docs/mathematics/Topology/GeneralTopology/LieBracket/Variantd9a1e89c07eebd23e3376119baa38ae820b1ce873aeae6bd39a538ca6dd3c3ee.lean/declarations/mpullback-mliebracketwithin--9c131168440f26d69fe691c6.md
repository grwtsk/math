# mpullback_mlieBracketWithin

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d1be8b63db73d21e9a34ba421d3fea814566239d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 695,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d9/d9a1e89c07eebd23e3376119baa38ae820b1ce873aeae6bd39a538ca6dd3c3ee.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f2bb88be-2edb-ce43-611c-ba9f782f96a5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b5df782d-2ffa-6ffa-0057-26637a9d134d",
  "kind": "lemma",
  "lexical_name": "mpullback_mlieBracketWithin",
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
  "slug": "mpullback-mliebracketwithin--9c131168440f26d69fe691c6",
  "source": {
    "blob": "d1be8b63db73d21e9a34ba421d3fea814566239d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 726,
    "line": 695,
    "path": "GRWTSK/Topology/GeneralTopology/LieBracket/Variantd9a1e89c07eebd23e3376119baa38ae820b1ce873aeae6bd39a538ca6dd3c3ee.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9c131168440f26d69fe691c620c6cfcee7ffa571bbeb6f7c474378f46795f2cf",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LieBracket/Variantd9a1e89c07eebd23e3376119baa38ae820b1ce873aeae6bd39a538ca6dd3c3ee.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b5df782d-2ffa-6ffa-0057-26637a9d134d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 695–726.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma mpullback_mlieBracketWithin
    {f : M → M'} {V W : Π (x : M'), TangentSpace I' x} {x₀ : M} {s : Set M} {t : Set M'}
    (hV : MDifferentiableWithinAt I' I'.tangent (fun x ↦ (V x : TangentBundle I' M')) t (f x₀))
    (hW : MDifferentiableWithinAt I' I'.tangent (fun x ↦ (W x : TangentBundle I' M')) t (f x₀))
    (hu : UniqueMDiffOn I s) (hf : ContMDiffAt I I' n f x₀) (hx₀ : x₀ ∈ s)
    (hn : minSmoothness 𝕜 2 ≤ n) (hst : f ⁻¹' t ∈ 𝓝[s] x₀) :
    mpullback I I' f (mlieBracketWithin I' V W t) x₀ =
      mlieBracketWithin I (mpullback I I' f V) (mpullback I I' f W) s x₀ := by
  have : mpullback I I' f (mlieBracketWithin I' V W t) x₀ =
      mpullbackWithin I I' f (mlieBracketWithin I' V W t) s x₀ := by
    simp only [mpullback, mpullbackWithin]
    congr
    apply (mfderivWithin_eq_mfderiv (hu _ hx₀) _).symm
    exact hf.mdifferentiableAt (one_le_two.trans (le_minSmoothness.trans hn))
  rw [this, mpullbackWithin_mlieBracketWithin' hV hW hu uniqueMDiffOn_univ hf.contMDiffWithinAt
    hx₀ hn hst (by simp) (subset_univ _)]
  apply Filter.EventuallyEq.mlieBracketWithin_vectorField_of_insert
  · rw [insert_eq_of_mem hx₀]
    filter_upwards [nhdsWithin_le_nhds ((contMDiffAt_iff_contMDiffAt_nhds (by simp)).1
      (hf.of_le (le_minSmoothness.trans hn))), self_mem_nhdsWithin] with y hy h'y
    simp only [mpullback, mpullbackWithin]
    congr
    apply mfderivWithin_eq_mfderiv (hu _ h'y)
    exact hy.mdifferentiableAt one_le_two
  · rw [insert_eq_of_mem hx₀]
    filter_upwards [nhdsWithin_le_nhds ((contMDiffAt_iff_contMDiffAt_nhds (by simp)).1
      (hf.of_le (le_minSmoothness.trans hn))), self_mem_nhdsWithin] with y hy h'y
    simp only [mpullback, mpullbackWithin]
    congr
    apply mfderivWithin_eq_mfderiv (hu _ h'y)
    exact hy.mdifferentiableAt one_le_two

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LieBracket/Variantd9a1e89c07eebd23e3376119baa38ae820b1ce873aeae6bd39a538ca6dd3c3ee.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LieBracket/Variantd9a1e89c07eebd23e3376119baa38ae820b1ce873aeae6bd39a538ca6dd3c3ee.lean#L695).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d1be8b63db73d21e9a34ba421d3fea814566239d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
