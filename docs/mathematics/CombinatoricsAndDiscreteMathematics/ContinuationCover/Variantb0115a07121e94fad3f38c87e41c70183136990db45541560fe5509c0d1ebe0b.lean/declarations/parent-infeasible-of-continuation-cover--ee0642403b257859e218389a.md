# parent_infeasible_of_continuation_cover

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0ba621a4-de69-4cf7-2346-d7f03c0d7525",
  "kind": "theorem",
  "lexical_name": "parent_infeasible_of_continuation_cover",
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
  "slug": "parent-infeasible-of-continuation-cover--ee0642403b257859e218389a",
  "source": {
    "blob": "2eaa81bd0b6e4631e30e1088b678426841605e9f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 69,
    "line": 42,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ContinuationCover/Variantb0115a07121e94fad3f38c87e41c70183136990db45541560fe5509c0d1ebe0b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ee0642403b257859e218389a7d4fdef9c8d351d347a57a8e8479a39243984f9c",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/ContinuationCover/Variantb0115a07121e94fad3f38c87e41c70183136990db45541560fe5509c0d1ebe0b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0ba621a4-de69-4cf7-2346-d7f03c0d7525`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 42–69.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem parent_infeasible_of_continuation_cover
    {Partial : Type uPartial}
    {Full : Type uFull}
    {Constraint : Type uConstraint}
    {semantics :
      Semantics Partial Full Constraint}
    {constraints : Finset Constraint}
    {parent : Partial}
    {children : Finset Partial}
    (cover :
      ContinuationCover
        semantics constraints parent children)
    (childrenInfeasible :
      ∀ child ∈ children,
        semantics.Infeasible
          constraints child) :
    semantics.Infeasible constraints parent := by
  intro completion parentExtends satisfies
  rcases
      cover.completion_covered
        completion parentExtends satisfies with
    ⟨child, childMember, childExtends⟩
  exact
    childrenInfeasible
      child childMember
      completion childExtends satisfies

end Mathematics.BinaryFrontier.Completion
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/ContinuationCover/Variantb0115a07121e94fad3f38c87e41c70183136990db45541560fe5509c0d1ebe0b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/ContinuationCover/Variantb0115a07121e94fad3f38c87e41c70183136990db45541560fe5509c0d1ebe0b.lean#L42).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2eaa81bd0b6e4631e30e1088b678426841605e9f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
