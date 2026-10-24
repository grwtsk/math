# stale_ranks

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ecf054d3-c734-3dde-f5af-8d011afcbdfd",
  "kind": "theorem",
  "lexical_name": "stale_ranks",
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
  "slug": "stale-ranks--bf438b91fc321d810d04adbf",
  "source": {
    "blob": "4795d4847796ce4aa5121701caf7b85bd9e3995c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 217,
    "line": 194,
    "path": "GRWTSK/Combinatorics/DirectedGraph/Checks/Positive/PrefixTableReindex.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bf438b91fc321d810d04adbfe0454d1faa69df6b8360da8bccda856ee1ecbeb3",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableReindex.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ecf054d3-c734-3dde-f5af-8d011afcbdfd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 194–217.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem stale_ranks : ValidRanks stale.nodes := by
  intro slot node hlookup
  cases slot with
  | zero =>
    have hequal : (1, some (1, newTag0)) = node := Option.some.inj hlookup
    subst node
    exact ⟨(0, none), rfl, by decide⟩
  | succ slot =>
    cases slot with
    | zero =>
      have hequal : (0, none) = node := Option.some.inj hlookup
      subst node
      rfl
    | succ slot =>
      cases slot with
      | zero =>
        have hequal : (1, some (1, newTag1)) = node := Option.some.inj hlookup
        subst node
        exact ⟨(0, none), rfl, by decide⟩
      | succ slot =>
        have hnone : stale.nodes[slot + 1 + 1 + 1]? = none := rfl
        rw [hnone] at hlookup
        cases hlookup

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableReindex.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Combinatorics/DirectedGraph/Checks/Positive/PrefixTableReindex.lean#L194).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4795d4847796ce4aa5121701caf7b85bd9e3995c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
