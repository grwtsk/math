# ExternalOnlyAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5060c0b9f963174a99368ce36dce437ae83cd61852ffb8bf47d46b86ef4adb1f",
  "kind": "def",
  "lexical_name": "ExternalOnlyAt",
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
  "slug": "externalonlyat--c6466519f1fc8e92b1267190",
  "source": {
    "blob": "7e02fb860ff80b2d21ede0fe05c37fd595249c23",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 183,
    "line": 175,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ReductiveSiteSelection/Variant572f006a09f39c1f6c596f4043a40723db36fea1a17ffb97d4d82520bde71c98.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c6466519f1fc8e92b1267190316c4c671b713ceec331ae9a022a1a9401b748fa",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/ReductiveSiteSelection/Variant572f006a09f39c1f6c596f4043a40723db36fea1a17ffb97d4d82520bde71c98.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5060c0b9f963174a99368ce36dce437ae83cd61852ffb8bf47d46b86ef4adb1f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 175–183.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ExternalOnlyAt
    (theoremAdapter :
      RegisteredAnalyticSiteTheorem State decomposition.Piece objective)
    (state : State)
    (site : decomposition.Piece) : Prop :=
  theoremAdapter.pin.sourceAuthority = .externalCapability ∧
    ¬ Nonempty (ExternalSafeExclusionBridge objective state site)

/-- At least one selected adapter is an unbridged external annotation here. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/ReductiveSiteSelection/Variant572f006a09f39c1f6c596f4043a40723db36fea1a17ffb97d4d82520bde71c98.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/ReductiveSiteSelection/Variant572f006a09f39c1f6c596f4043a40723db36fea1a17ffb97d4d82520bde71c98.lean#L175).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7e02fb860ff80b2d21ede0fe05c37fd595249c23` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
