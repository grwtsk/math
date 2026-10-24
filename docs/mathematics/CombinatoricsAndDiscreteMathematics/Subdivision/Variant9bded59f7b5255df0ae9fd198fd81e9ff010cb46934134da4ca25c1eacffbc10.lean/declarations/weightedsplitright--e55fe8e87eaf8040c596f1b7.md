# weightedSplitRight

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6403e54c0dc1c0e649af3f7d55e1a2cc6491e7f87c25aa5f5c4c8b0d0a1ede23",
  "kind": "def",
  "lexical_name": "weightedSplitRight",
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
  "slug": "weightedsplitright--e55fe8e87eaf8040c596f1b7",
  "source": {
    "blob": "c54559a1bd84860a2281fef77dffd7188c66a935",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 316,
    "line": 311,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Subdivision/Variant9bded59f7b5255df0ae9fd198fd81e9ff010cb46934134da4ca25c1eacffbc10.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e55fe8e87eaf8040c596f1b76d702049a29298b3a441a175fbf4622bae2ba1b0",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Subdivision/Variant9bded59f7b5255df0ae9fd198fd81e9ff010cb46934134da4ca25c1eacffbc10.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6403e54c0dc1c0e649af3f7d55e1a2cc6491e7f87c25aa5f5c4c8b0d0a1ede23`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 311–316.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def weightedSplitRight (n : ℕ) (p : FiniteWeightedControl n M) (u : ℝ) :
    FiniteWeightedControl n M :=
  finiteSplitRight n p u

/-- Totalized dehomogenization.  A geometric use should additionally require
`point.2 ≠ 0`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Subdivision/Variant9bded59f7b5255df0ae9fd198fd81e9ff010cb46934134da4ca25c1eacffbc10.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Subdivision/Variant9bded59f7b5255df0ae9fd198fd81e9ff010cb46934134da4ca25c1eacffbc10.lean#L311).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c54559a1bd84860a2281fef77dffd7188c66a935` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
