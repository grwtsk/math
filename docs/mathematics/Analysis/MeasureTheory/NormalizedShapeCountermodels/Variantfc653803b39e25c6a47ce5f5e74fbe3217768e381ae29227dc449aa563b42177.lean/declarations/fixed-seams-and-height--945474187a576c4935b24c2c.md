# fixed_seams_and_height

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:222c6e6f-bb32-bceb-c970-c82f25546d00",
  "kind": "theorem",
  "lexical_name": "fixed_seams_and_height",
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
  "slug": "fixed-seams-and-height--945474187a576c4935b24c2c",
  "source": {
    "blob": "f3b865810fc6e9703769a2811d9764eb2f65395f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 68,
    "line": 64,
    "path": "GRWTSK/Analysis/MeasureTheory/NormalizedShapeCountermodels/Variantfc653803b39e25c6a47ce5f5e74fbe3217768e381ae29227dc449aa563b42177.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:945474187a576c4935b24c2c338a7ceb790043754886e71bf213f66f14a3cb8b",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/NormalizedShapeCountermodels/Variantfc653803b39e25c6a47ce5f5e74fbe3217768e381ae29227dc449aa563b42177.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:222c6e6f-bb32-bceb-c970-c82f25546d00`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 64–68.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fixed_seams_and_height {k : ℕ} (hk : 0 < k) :
    concentrated k 0 = 0 ∧ concentrated k 1 = 0 ∧ concentrated k (1 / 2) = 1 ∧
      broad k 0 = 0 ∧ broad k 1 = 0 ∧ broad k (1 / 2) = 1 := by
  norm_num [concentrated, broad, hk.ne', pow_mul]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/NormalizedShapeCountermodels/Variantfc653803b39e25c6a47ce5f5e74fbe3217768e381ae29227dc449aa563b42177.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/NormalizedShapeCountermodels/Variantfc653803b39e25c6a47ce5f5e74fbe3217768e381ae29227dc449aa563b42177.lean#L64).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f3b865810fc6e9703769a2811d9764eb2f65395f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
