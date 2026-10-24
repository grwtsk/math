# spanRank_restrictScalars_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ad1d6c70-48f3-2d3d-08df-8bbd6d03ca03",
  "kind": "lemma",
  "lexical_name": "spanRank_restrictScalars_eq",
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
  "slug": "spanrank-restrictscalars-eq--bf65224e5ebffcbb00e3a450",
  "source": {
    "blob": "712209238faaaa1f7a4e5a77cc3ef70b9cf2d6f9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 396,
    "line": 382,
    "path": "GRWTSK/Algebra/LinearAlgebra/SpanRank/Variantf58e1e2b93d9afc21e0ae6069c887be17c93383e993ec2806fe66bed6eebb169.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bf65224e5ebffcbb00e3a450f520b715f1ef84047d078811a0aa06d104225b32",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/SpanRank/Variantf58e1e2b93d9afc21e0ae6069c887be17c93383e993ec2806fe66bed6eebb169.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ad1d6c70-48f3-2d3d-08df-8bbd6d03ca03`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 382–396.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma spanRank_restrictScalars_eq (H : Function.Surjective (algebraMap R S))
    (N : Submodule S M) : (N.restrictScalars R).spanRank = N.spanRank := by
  refine N.le_spanRank_restrictScalars.antisymm' ?_
  obtain ⟨s, hs, rfl⟩ := N.exists_span_set_card_eq_spanRank
  grw [restrictScalars_span R S H s, ← hs, spanRank_span_le_card]

end RestrictScalars

end Submodule

section Ideal

variable {R S : Type u} [Semiring R] [Semiring S] {T : Type v} [Semiring T]

open Submodule in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/SpanRank/Variantf58e1e2b93d9afc21e0ae6069c887be17c93383e993ec2806fe66bed6eebb169.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/SpanRank/Variantf58e1e2b93d9afc21e0ae6069c887be17c93383e993ec2806fe66bed6eebb169.lean#L382).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `712209238faaaa1f7a4e5a77cc3ef70b9cf2d6f9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
