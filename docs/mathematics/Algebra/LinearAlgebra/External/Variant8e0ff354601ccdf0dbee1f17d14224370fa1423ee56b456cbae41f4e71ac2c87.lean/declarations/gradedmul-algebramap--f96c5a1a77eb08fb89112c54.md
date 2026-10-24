# gradedMul_algebraMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:03bbc2bb-f00d-3396-f7c1-82533eb1f321",
  "kind": "theorem",
  "lexical_name": "gradedMul_algebraMap",
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
  "slug": "gradedmul-algebramap--f96c5a1a77eb08fb89112c54",
  "source": {
    "blob": "f5ee8cd012f0f550712fc01902938e036c3a6b15",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 241,
    "line": 231,
    "path": "GRWTSK/Algebra/LinearAlgebra/External/Variant8e0ff354601ccdf0dbee1f17d14224370fa1423ee56b456cbae41f4e71ac2c87.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f96c5a1a77eb08fb89112c54c81bdf91667a0e4a7aa1bceec6a5985422a05ac7",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/External/Variant8e0ff354601ccdf0dbee1f17d14224370fa1423ee56b456cbae41f4e71ac2c87.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:03bbc2bb-f00d-3396-f7c1-82533eb1f321`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 231–241.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem gradedMul_algebraMap (x : (⨁ i, 𝒜 i) ⊗[R] (⨁ i, ℬ i)) (r : R) :
    gradedMul R 𝒜 ℬ x (algebraMap R _ r ⊗ₜ 1) = r • x := by
  suffices (gradedMul R 𝒜 ℬ).flip (algebraMap R _ r ⊗ₜ 1) = DistribSMul.toLinearMap R _ r by
    exact DFunLike.congr_fun this x
  ext
  dsimp
  erw [tmul_of_gradedMul_of_tmul]
  rw [mul_zero, uzpow_zero, one_smul, smul_tmul',
      mul_one, _root_.Algebra.smul_def, Algebra.commutes]
  rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/External/Variant8e0ff354601ccdf0dbee1f17d14224370fa1423ee56b456cbae41f4e71ac2c87.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/External/Variant8e0ff354601ccdf0dbee1f17d14224370fa1423ee56b456cbae41f4e71ac2c87.lean#L231).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f5ee8cd012f0f550712fc01902938e036c3a6b15` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
