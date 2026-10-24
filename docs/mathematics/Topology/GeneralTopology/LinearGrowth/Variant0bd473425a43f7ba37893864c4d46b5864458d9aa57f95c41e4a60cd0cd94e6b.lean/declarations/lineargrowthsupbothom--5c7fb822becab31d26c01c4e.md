# linearGrowthSupBotHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5565ee6b4847d08935f5cba4dcbfb1de095071d49a58e63f47b8a9d32fb3a694",
  "kind": "def",
  "lexical_name": "linearGrowthSupBotHom",
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
  "slug": "lineargrowthsupbothom--5c7fb822becab31d26c01c4e",
  "source": {
    "blob": "28acaa665cef35aee63fcac75ec086d4c3ead33b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 316,
    "line": 312,
    "path": "GRWTSK/Topology/GeneralTopology/LinearGrowth/Variant0bd473425a43f7ba37893864c4d46b5864458d9aa57f95c41e4a60cd0cd94e6b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5c7fb822becab31d26c01c4e51c578a733273d62348a0beb87b2f83cb2e92e1d",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LinearGrowth/Variant0bd473425a43f7ba37893864c4d46b5864458d9aa57f95c41e4a60cd0cd94e6b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5565ee6b4847d08935f5cba4dcbfb1de095071d49a58e63f47b8a9d32fb3a694`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 312–316.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def linearGrowthSupBotHom : SupBotHom (ℕ → EReal) EReal where
  toFun := linearGrowthSup
  map_sup' _ _ := linearGrowthSup_sup
  map_bot' := linearGrowthSup_bot

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LinearGrowth/Variant0bd473425a43f7ba37893864c4d46b5864458d9aa57f95c41e4a60cd0cd94e6b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LinearGrowth/Variant0bd473425a43f7ba37893864c4d46b5864458d9aa57f95c41e4a60cd0cd94e6b.lean#L312).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `28acaa665cef35aee63fcac75ec086d4c3ead33b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
