# join_refines_first

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:477ed457-6f40-0621-b2e7-07f8a68c4116",
  "kind": "theorem",
  "lexical_name": "join_refines_first",
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
  "slug": "join-refines-first--c92db3e67f21d6ddac51fce6",
  "source": {
    "blob": "ec9637454cab67a51953364bd800ea3fb9a7375f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 144,
    "line": 139,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/NotionJoin/Variant39e37cf8367d24e35c499b93e98a2f5fec41b9cf610e35b76c9720e68cdb74ac.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c92db3e67f21d6ddac51fce640c3378670777155580f006017e211995e90ea04",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/NotionJoin/Variant39e37cf8367d24e35c499b93e98a2f5fec41b9cf610e35b76c9720e68cdb74ac.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:477ed457-6f40-0621-b2e7-07f8a68c4116`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 139–144.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem join_refines_first [DecidableEq Test] (first second : FiniteNotion Object Test Value)
    (commonPolicy : first.policy = second.policy) (identity : String) (budget : ℕ) :
    (first.join second commonPolicy identity).RefinesAt first budget :=
  fun x y hxy ↦ ((equivalent_join_iff first second commonPolicy identity budget x y).mp hxy).1

/-- A joined inventory always semantically refines its second component. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/NotionJoin/Variant39e37cf8367d24e35c499b93e98a2f5fec41b9cf610e35b76c9720e68cdb74ac.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/NotionJoin/Variant39e37cf8367d24e35c499b93e98a2f5fec41b9cf610e35b76c9720e68cdb74ac.lean#L139).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ec9637454cab67a51953364bd800ea3fb9a7375f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
