# orientationLossObstruction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:76705c001458c97470217d67996b2e1ad46091c8e4ab10c52f215e76203e0be2",
  "kind": "def",
  "lexical_name": "orientationLossObstruction",
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
  "slug": "orientationlossobstruction--22e0868fb7affd7f84f50321",
  "source": {
    "blob": "acfdfacf7f5e1f57d84cbccaf543ca33358aeb31",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 176,
    "line": 170,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Obstruction/Variant2b3e513b24cf0c00f72f668e42d648c5ad09027eb3c2598e4199c80aaaf22075.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:22e0868fb7affd7f84f50321564445d99ca487bc5e1c3b1bcef1233393e9cc8a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Obstruction/Variant2b3e513b24cf0c00f72f668e42d648c5ad09027eb3c2598e4199c80aaaf22075.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:76705c001458c97470217d67996b2e1ad46091c8e4ab10c52f215e76203e0be2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 170–176.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def orientationLossObstruction : CechObstruction PrototypeVertex where
  cochain := orientationLossCochain
  meaning := .translationNoncommutativity
  affectedObjects := orientationLossTriangle.affectedObjects
  obligations := orientationLossTriangle.obligations

/-- The declared translation triangle defect is machine-computably nonzero. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Obstruction/Variant2b3e513b24cf0c00f72f668e42d648c5ad09027eb3c2598e4199c80aaaf22075.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Obstruction/Variant2b3e513b24cf0c00f72f668e42d648c5ad09027eb3c2598e4199c80aaaf22075.lean#L170).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `acfdfacf7f5e1f57d84cbccaf543ca33358aeb31` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
