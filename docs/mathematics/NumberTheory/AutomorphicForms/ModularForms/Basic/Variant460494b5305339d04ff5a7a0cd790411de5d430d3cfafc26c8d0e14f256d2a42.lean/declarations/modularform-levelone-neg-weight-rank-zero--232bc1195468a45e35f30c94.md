# ModularForm.levelOne_neg_weight_rank_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a600f9eb-f3d9-e936-8865-7c0de9aa1a2c",
  "kind": "lemma",
  "lexical_name": "ModularForm.levelOne_neg_weight_rank_zero",
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
  "slug": "modularform-levelone-neg-weight-rank-zero--232bc1195468a45e35f30c94",
  "source": {
    "blob": "abafa2680456df6ea78dc9a5ffeb88b3f78281a2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 127,
    "line": 124,
    "path": "GRWTSK/NumberTheory/AutomorphicForms/ModularForms/Basic/Variant460494b5305339d04ff5a7a0cd790411de5d430d3cfafc26c8d0e14f256d2a42.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:232bc1195468a45e35f30c9476da3e0aa67c7f416b203dcb411cdea87e6ecc17",
  "verification": {
    "reference": "docs/verification/NumberTheory/AutomorphicForms/ModularForms/Basic/Variant460494b5305339d04ff5a7a0cd790411de5d430d3cfafc26c8d0e14f256d2a42.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a600f9eb-f3d9-e936-8865-7c0de9aa1a2c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 124–127.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma ModularForm.levelOne_neg_weight_rank_zero (hk : k < 0) :
    Module.rank ℂ (ModularForm 𝒮ℒ k) = 0 := by
  refine rank_eq_zero_iff.mpr fun f ↦ ⟨_, one_ne_zero, ?_⟩
  simpa [← FunLike.coe_zero_iff] using levelOne_neg_weight_eq_zero hk f
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AutomorphicForms/ModularForms/Basic/Variant460494b5305339d04ff5a7a0cd790411de5d430d3cfafc26c8d0e14f256d2a42.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AutomorphicForms/ModularForms/Basic/Variant460494b5305339d04ff5a7a0cd790411de5d430d3cfafc26c8d0e14f256d2a42.lean#L124).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `abafa2680456df6ea78dc9a5ffeb88b3f78281a2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
