# mabs_mul_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a2fde2dc-ff95-38da-2b14-59c92e49897f",
  "kind": "lemma",
  "lexical_name": "mabs_mul_le",
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
  "slug": "mabs-mul-le--09b4fb5106dd6cff3b8d4223",
  "source": {
    "blob": "d34a1b16aa34ad61d8e5d1338243f20d42e45a2e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 133,
    "line": 127,
    "path": "GRWTSK/Algebra/GroupTheory/Abs/Variantbc25e95213eb53622886bb362025ed5fcef86d54ab844e35fa0d2a179e905d62.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:09b4fb5106dd6cff3b8d4223ec292d338b26158a316f266c4fd909b83cfc4eea",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Abs/Variantbc25e95213eb53622886bb362025ed5fcef86d54ab844e35fa0d2a179e905d62.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a2fde2dc-ff95-38da-2b14-59c92e49897f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 127–133.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma mabs_mul_le (a b : α) : |a * b|ₘ ≤ |a|ₘ * |b|ₘ := by
  apply sup_le
  · exact mul_le_mul' (le_mabs_self a) (le_mabs_self b)
  · rw [mul_inv]
    exact mul_le_mul' (inv_le_mabs _) (inv_le_mabs _)

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Abs/Variantbc25e95213eb53622886bb362025ed5fcef86d54ab844e35fa0d2a179e905d62.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Abs/Variantbc25e95213eb53622886bb362025ed5fcef86d54ab844e35fa0d2a179e905d62.lean#L127).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d34a1b16aa34ad61d8e5d1338243f20d42e45a2e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
