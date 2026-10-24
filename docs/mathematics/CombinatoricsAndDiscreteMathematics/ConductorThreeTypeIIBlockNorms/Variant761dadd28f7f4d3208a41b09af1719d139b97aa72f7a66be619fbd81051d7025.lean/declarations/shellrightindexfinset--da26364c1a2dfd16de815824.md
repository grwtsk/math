# shellRightIndexFinset

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9734099db6efce05f6e86cc87870632b228ca69e9a29ec4cf348d7be1207e7e2",
  "kind": "def",
  "lexical_name": "shellRightIndexFinset",
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
  "slug": "shellrightindexfinset--da26364c1a2dfd16de815824",
  "source": {
    "blob": "c671112b21e31264fb82ae7f977de5bb083e7d0c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 296,
    "line": 293,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ConductorThreeTypeIIBlockNorms/Variant761dadd28f7f4d3208a41b09af1719d139b97aa72f7a66be619fbd81051d7025.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:da26364c1a2dfd16de8158240da21a97eee832f23f3fca7cb9c916a71eba4b7b",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/ConductorThreeTypeIIBlockNorms/Variant761dadd28f7f4d3208a41b09af1719d139b97aa72f7a66be619fbd81051d7025.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9734099db6efce05f6e86cc87870632b228ca69e9a29ec4cf348d7be1207e7e2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 293–296.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def shellRightIndexFinset {N q : ℕ}
    (B : TypeIIShellFactorBlock N q) : Finset ℕ :=
  Finset.univ.image (fun k : B.Right ↦ k.1.1)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/ConductorThreeTypeIIBlockNorms/Variant761dadd28f7f4d3208a41b09af1719d139b97aa72f7a66be619fbd81051d7025.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/ConductorThreeTypeIIBlockNorms/Variant761dadd28f7f4d3208a41b09af1719d139b97aa72f7a66be619fbd81051d7025.lean#L293).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c671112b21e31264fb82ae7f977de5bb083e7d0c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
