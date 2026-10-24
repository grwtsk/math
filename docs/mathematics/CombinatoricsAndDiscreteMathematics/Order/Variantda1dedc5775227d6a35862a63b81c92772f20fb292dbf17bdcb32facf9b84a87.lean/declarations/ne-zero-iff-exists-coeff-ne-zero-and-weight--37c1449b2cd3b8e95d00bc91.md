# ne_zero_iff_exists_coeff_ne_zero_and_weight

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f1deeecb9de62504fd2418d334e1c860f4251931",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 129,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/da/da1dedc5775227d6a35862a63b81c92772f20fb292dbf17bdcb32facf9b84a87.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a9d5832a-e4ca-494a-7cfd-f9a7c79e7274",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c60bc3c9-8c83-18d0-7acf-2f94b486b8ca",
  "kind": "theorem",
  "lexical_name": "ne_zero_iff_exists_coeff_ne_zero_and_weight",
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
  "slug": "ne-zero-iff-exists-coeff-ne-zero-and-weight--37c1449b2cd3b8e95d00bc91",
  "source": {
    "blob": "f1deeecb9de62504fd2418d334e1c860f4251931",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 135,
    "line": 129,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Order/Variantda1dedc5775227d6a35862a63b81c92772f20fb292dbf17bdcb32facf9b84a87.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:37c1449b2cd3b8e95d00bc91935a09f28c1e925366da5f65a0df6ba2c67fc279",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Order/Variantda1dedc5775227d6a35862a63b81c92772f20fb292dbf17bdcb32facf9b84a87.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c60bc3c9-8c83-18d0-7acf-2f94b486b8ca`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 129–135.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ne_zero_iff_exists_coeff_ne_zero_and_weight :
    f ≠ 0 ↔ (∃ n : ℕ, ∃ d : σ →₀ ℕ, coeff R d f ≠ 0 ∧ weight w d = n) := by
  refine not_iff_not.mp ?_
  simp only [ne_eq, not_not, not_exists, not_and, forall_apply_eq_imp_iff₂, imp_false]
  exact MvPowerSeries.ext_iff

/-- The weighted order of a mv_power_series -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Order/Variantda1dedc5775227d6a35862a63b81c92772f20fb292dbf17bdcb32facf9b84a87.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Order/Variantda1dedc5775227d6a35862a63b81c92772f20fb292dbf17bdcb32facf9b84a87.lean#L129).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f1deeecb9de62504fd2418d334e1c860f4251931` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
