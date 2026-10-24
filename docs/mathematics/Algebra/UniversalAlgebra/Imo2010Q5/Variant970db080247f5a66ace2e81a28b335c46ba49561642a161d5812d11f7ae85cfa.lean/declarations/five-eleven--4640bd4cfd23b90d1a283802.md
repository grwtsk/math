# five_eleven

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:530203ba-f7fd-d734-27ef-fff2ce3474f0",
  "kind": "lemma",
  "lexical_name": "five_eleven",
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
  "slug": "five-eleven--4640bd4cfd23b90d1a283802",
  "source": {
    "blob": "8bc691bd9ccaa26445ba576e92accb19587359de",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 124,
    "line": 105,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Imo2010Q5/Variant970db080247f5a66ace2e81a28b335c46ba49561642a161d5812d11f7ae85cfa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4640bd4cfd23b90d1a2838024f9e3a85c81a88b180137cc1142f78b25aed195b",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Imo2010Q5/Variant970db080247f5a66ace2e81a28b335c46ba49561642a161d5812d11f7ae85cfa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:530203ba-f7fd-d734-27ef-fff2ce3474f0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 105–124.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma five_eleven : Reachable (single 2 5 + single 3 11) := by
  have R : Reachable (single 1 3 + single 2 1 + single 3 1 + single 4 1 + single 5 1) := by
    convert! base.push (show 0 < 5 by decide) using 1; decide
  replace R : Reachable (single 2 7 + single 3 1 + single 4 1 + single 5 1) := by
    convert! R.push (show 1 < 5 by decide) using 1; decide
  replace R : Reachable (single 2 7 + single 4 3 + single 5 1) := by
    convert! R.push (show 3 < 5 by decide) using 1; decide
  replace R : Reachable (single 2 7 + single 5 7) := by
    convert! R.push (show 4 < 5 by decide) using 1; decide
  replace R : Reachable (single 2 6 + single 3 2 + single 5 7) := by
    convert! R.move1 (show 2 < 5 by decide) (by decide) using 1; decide
  replace R : Reachable (single 2 6 + single 3 1 + single 4 2 + single 5 7) := by
    convert! R.move1 (show 3 < 5 by decide) (by decide) using 1; decide
  replace R : Reachable (single 2 6 + single 3 1 + single 5 11) := by
    convert! R.push (show 4 < 5 by decide) using 1; decide
  replace R : Reachable (single 2 6 + single 4 11) := by
    convert! R.move2 (show 3 < 4 by decide) (by decide) using 1; decide
  convert! R.move2 (show 2 < 4 by decide) (by decide) using 1; decide

/-- Decrement $B_i$ and double $B_{i+1}$, assuming $B_{i+2} = 0$, by doing `push, move2`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Imo2010Q5/Variant970db080247f5a66ace2e81a28b335c46ba49561642a161d5812d11f7ae85cfa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Imo2010Q5/Variant970db080247f5a66ace2e81a28b335c46ba49561642a161d5812d11f7ae85cfa.lean#L105).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8bc691bd9ccaa26445ba576e92accb19587359de` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
