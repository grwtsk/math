# iSup_normal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5430c2dfd2523027a806b5f4b168aeef5c2e81cd0e79ca7fe17bfe1503e36408",
  "kind": "instance",
  "lexical_name": "iSup_normal",
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
  "slug": "isup-normal--fea577ea2248250704ec4b38",
  "source": {
    "blob": "f867af3f7197b3ab4e73ed9fd8e962de31033208",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 382,
    "line": 377,
    "path": "GRWTSK/Algebra/GroupTheory/Pointwise/Variantafd6df1ee002a89109353507b1f1fa83e40b4dbcf1523050be4407733689268e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fea577ea2248250704ec4b386ad11debc66c838ea3d19461070f0efa3a774f12",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Pointwise/Variantafd6df1ee002a89109353507b1f1fa83e40b4dbcf1523050be4407733689268e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5430c2dfd2523027a806b5f4b168aeef5c2e81cd0e79ca7fe17bfe1503e36408`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 377–382.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance iSup_normal {ι : Sort*} (H : ι → Subgroup G) [∀ i, (H i).Normal] :
    ⨆ i, H i |>.Normal := by
  grw [← normalizer_eq_top_iff, eq_top_iff, ← iInf_normalizer_le_normalizer_iSup]
  simp [normalizer_eq_top]

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Pointwise/Variantafd6df1ee002a89109353507b1f1fa83e40b4dbcf1523050be4407733689268e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Pointwise/Variantafd6df1ee002a89109353507b1f1fa83e40b4dbcf1523050be4407733689268e.lean#L377).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f867af3f7197b3ab4e73ed9fd8e962de31033208` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
