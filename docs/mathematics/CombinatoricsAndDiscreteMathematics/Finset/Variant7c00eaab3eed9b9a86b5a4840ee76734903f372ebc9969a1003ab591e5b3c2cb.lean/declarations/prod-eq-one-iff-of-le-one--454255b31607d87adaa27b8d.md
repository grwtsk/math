# prod_eq_one_iff_of_le_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4367604b-b840-6b76-dbcb-8a94bbb822c8",
  "kind": "lemma",
  "lexical_name": "prod_eq_one_iff_of_le_one",
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
  "slug": "prod-eq-one-iff-of-le-one--454255b31607d87adaa27b8d",
  "source": {
    "blob": "fba71c0ed3c5667eb8dcfa13f957fa480188a737",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 545,
    "line": 537,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Finset/Variant7c00eaab3eed9b9a86b5a4840ee76734903f372ebc9969a1003ab591e5b3c2cb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:454255b31607d87adaa27b8d0d13898fae7a7cd838311183027ac9009259021f",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Finset/Variant7c00eaab3eed9b9a86b5a4840ee76734903f372ebc9969a1003ab591e5b3c2cb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4367604b-b840-6b76-dbcb-8a94bbb822c8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 537–545.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma prod_eq_one_iff_of_le_one (hf : f ≤ 1) : ∏ i, f i = 1 ↔ f = 1 :=
  (Finset.prod_eq_one_iff_of_le_one' fun i _ ↦ hf i).trans <| by simp [funext_iff]

end OrderedCommMonoid

section OrderedCancelCommMonoid
variable [Fintype ι] [CommMonoid M] [PartialOrder M] [IsOrderedCancelMonoid M] {f : ι → M}

@[to_additive sum_strictMono]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Finset/Variant7c00eaab3eed9b9a86b5a4840ee76734903f372ebc9969a1003ab591e5b3c2cb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Finset/Variant7c00eaab3eed9b9a86b5a4840ee76734903f372ebc9969a1003ab591e5b3c2cb.lean#L537).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fba71c0ed3c5667eb8dcfa13f957fa480188a737` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
