# assemblyDatum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ff77fb091916f5b69e1ed9f3dffd25c917ea86d8f9dc954b357e1604b9de4bc7",
  "kind": "def",
  "lexical_name": "assemblyDatum",
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
  "slug": "assemblydatum--b976bcc1ebf292d591e8946d",
  "source": {
    "blob": "469722554822223ecb508922a9562473daa9d008",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 134,
    "line": 127,
    "path": "GRWTSK/Algebra/GroupTheory/TilingArithmeticComparison/Variant440fc2cb5fdaafcc41fd4968e1997af6912ecc5b3c4ee200d7907e51784056ca.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b976bcc1ebf292d591e8946d26157c67321a353ecfd9f5ebcf87ea21e841e642",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/TilingArithmeticComparison/Variant440fc2cb5fdaafcc41fd4968e1997af6912ecc5b3c4ee200d7907e51784056ca.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ff77fb091916f5b69e1ed9f3dffd25c917ea86d8f9dc954b357e1604b9de4bc7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 127–134.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def assemblyDatum : Assembly.Datum where
  Group := A.Group
  instGroup := inferInstance
  EquivariantHomology := T.EquivariantHomology
  GroupRingKTheory := T.GroupRingKTheory
  assembly := T.assembly

/-- The assembly construction is canonical under its supplied characterization. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/TilingArithmeticComparison/Variant440fc2cb5fdaafcc41fd4968e1997af6912ecc5b3c4ee200d7907e51784056ca.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/TilingArithmeticComparison/Variant440fc2cb5fdaafcc41fd4968e1997af6912ecc5b3c4ee200d7907e51784056ca.lean#L127).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `469722554822223ecb508922a9562473daa9d008` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
