# hasEigenvalue_zero_tfae

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5d3b7961-f029-7d1a-7ccf-f4225303d81b",
  "kind": "lemma",
  "lexical_name": "hasEigenvalue_zero_tfae",
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
  "slug": "haseigenvalue-zero-tfae--458c0f5cfd6a28a91d706c09",
  "source": {
    "blob": "4940665ab696f06f1926d25fc5e1b59b556fad89",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 127,
    "line": 97,
    "path": "GRWTSK/Algebra/LinearAlgebra/Zero/Variantd8eb1711e721dfd17af4a92309bd221c7f058711013486e8413e45449d99f518.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:458c0f5cfd6a28a91d706c0946748fc51ca236a994bf30170693a1844eb4a166",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Zero/Variantd8eb1711e721dfd17af4a92309bd221c7f058711013486e8413e45449d99f518.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5d3b7961-f029-7d1a-7ccf-f4225303d81b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 97–127.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma hasEigenvalue_zero_tfae (φ : Module.End K M) :
    List.TFAE [
      Module.End.HasEigenvalue φ 0,
      IsRoot (minpoly K φ) 0,
      constantCoeff φ.charpoly = 0,
      LinearMap.det φ = 0,
      ⊥ < ker φ,
      ∃ (m : M), m ≠ 0 ∧ φ m = 0 ] := by
  tfae_have 1 ↔ 2 := Module.End.hasEigenvalue_iff_isRoot
  tfae_have 2 → 3 := by
    obtain ⟨F, hF⟩ := minpoly_dvd_charpoly φ
    simp only [IsRoot.def, constantCoeff_apply, coeff_zero_eq_eval_zero, hF, eval_mul]
    intro h; rw [h, zero_mul]
  tfae_have 3 → 4 := by
    rw [← LinearMap.det_toMatrix (chooseBasis K M), Matrix.det_eq_sign_charpoly_coeff,
      constantCoeff_apply, charpoly]
    intro h; rw [h, mul_zero]
  tfae_have 4 → 5 := bot_lt_ker_of_det_eq_zero
  tfae_have 5 → 6 := by
    contrapose!
    simp only [not_bot_lt_iff, eq_bot_iff]
    intro h x
    simp only [mem_ker, Submodule.mem_bot]
    contrapose!
    apply h
  tfae_have 6 → 1
  | ⟨x, h1, h2⟩ => by
    apply Module.End.hasEigenvalue_of_hasEigenvector ⟨_, h1⟩
    simpa only [Module.End.eigenspace_zero, mem_ker] using h2
  tfae_finish

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Zero/Variantd8eb1711e721dfd17af4a92309bd221c7f058711013486e8413e45449d99f518.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Zero/Variantd8eb1711e721dfd17af4a92309bd221c7f058711013486e8413e45449d99f518.lean#L97).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4940665ab696f06f1926d25fc5e1b59b556fad89` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
