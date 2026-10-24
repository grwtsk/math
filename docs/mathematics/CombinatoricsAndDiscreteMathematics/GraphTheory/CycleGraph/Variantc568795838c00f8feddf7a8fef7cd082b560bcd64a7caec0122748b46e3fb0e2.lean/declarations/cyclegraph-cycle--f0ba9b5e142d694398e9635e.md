# cycleGraph.cycle

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:094534fcde4d4484b50b1264ec534aea3ec9f74cb0dc3e3336d70f20f3ffa59c",
  "kind": "def",
  "lexical_name": "cycleGraph.cycle",
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
  "slug": "cyclegraph-cycle--f0ba9b5e142d694398e9635e",
  "source": {
    "blob": "6682f24503a9cf51472a668d1c96f89f39c35978",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 129,
    "line": 125,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/CycleGraph/Variantc568795838c00f8feddf7a8fef7cd082b560bcd64a7caec0122748b46e3fb0e2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f0ba9b5e142d694398e9635ee2448a8f6fb3ee899551c02c1dae58832d45428b",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/GraphTheory/CycleGraph/Variantc568795838c00f8feddf7a8fef7cd082b560bcd64a7caec0122748b46e3fb0e2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:094534fcde4d4484b50b1264ec534aea3ec9f74cb0dc3e3336d70f20f3ffa59c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 125–129.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def cycleGraph.cycle (n : ℕ) : (cycleGraph (n + 3)).Walk 0 0 :=
  have hadj : (cycleGraph (n + 3)).Adj 0 (Fin.last (n + 2)) := by
    simp [cycleGraph_adj]
  Walk.cons hadj (cycleGraph.cycleCons n (Fin.last (n + 2)))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/GraphTheory/CycleGraph/Variantc568795838c00f8feddf7a8fef7cd082b560bcd64a7caec0122748b46e3fb0e2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/CycleGraph/Variantc568795838c00f8feddf7a8fef7cd082b560bcd64a7caec0122748b46e3fb0e2.lean#L125).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6682f24503a9cf51472a668d1c96f89f39c35978` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
