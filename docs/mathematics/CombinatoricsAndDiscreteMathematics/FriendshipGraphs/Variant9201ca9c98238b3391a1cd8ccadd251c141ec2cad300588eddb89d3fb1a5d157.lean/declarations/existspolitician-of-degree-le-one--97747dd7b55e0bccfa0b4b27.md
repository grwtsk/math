# existsPolitician_of_degree_le_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f969698a-189c-2fea-9eef-ff28aee2f916",
  "kind": "theorem",
  "lexical_name": "existsPolitician_of_degree_le_one",
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
  "slug": "existspolitician-of-degree-le-one--97747dd7b55e0bccfa0b4b27",
  "source": {
    "blob": "baa781c85fcefc058bf9cc49da7de0ceb0fb817e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 300,
    "line": 283,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/FriendshipGraphs/Variant9201ca9c98238b3391a1cd8ccadd251c141ec2cad300588eddb89d3fb1a5d157.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:97747dd7b55e0bccfa0b4b271ec19b0e83c8f1312f484e644162d4169a9e0467",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/FriendshipGraphs/Variant9201ca9c98238b3391a1cd8ccadd251c141ec2cad300588eddb89d3fb1a5d157.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f969698a-189c-2fea-9eef-ff28aee2f916`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 283–300.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem existsPolitician_of_degree_le_one (hd : G.IsRegularOfDegree d) (hd1 : d ≤ 1) :
    ExistsPolitician G := by
  have sq : d * d = d := by interval_cases d <;> norm_num
  have h := card_of_regular hG hd
  rw [sq] at h
  have : Fintype.card V ≤ 1 := by
    cases hn : Fintype.card V with
    | zero => exact zero_le _
    | succ n => omega
  use Classical.arbitrary V
  intro w h; exfalso
  apply h
  apply Fintype.card_le_one_iff.mp this

open scoped Classical in
include hG in
/-- If `d = 2`, a `d`-regular friendship graph has 3 vertices, so it must be complete graph,
  and all the vertices are politicians. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/FriendshipGraphs/Variant9201ca9c98238b3391a1cd8ccadd251c141ec2cad300588eddb89d3fb1a5d157.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/FriendshipGraphs/Variant9201ca9c98238b3391a1cd8ccadd251c141ec2cad300588eddb89d3fb1a5d157.lean#L283).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `baa781c85fcefc058bf9cc49da7de0ceb0fb817e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
