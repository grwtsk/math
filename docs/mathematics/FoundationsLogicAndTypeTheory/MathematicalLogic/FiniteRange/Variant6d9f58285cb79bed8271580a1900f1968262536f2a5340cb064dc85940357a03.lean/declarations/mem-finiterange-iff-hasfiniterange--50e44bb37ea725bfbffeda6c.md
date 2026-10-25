# mem_finiteRange_iff_hasFiniteRange

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ca0f30d6-269a-11f4-673c-cfce72cbfbd1",
  "kind": "lemma",
  "lexical_name": "mem_finiteRange_iff_hasFiniteRange",
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
  "slug": "mem-finiterange-iff-hasfiniterange--50e44bb37ea725bfbffeda6c",
  "source": {
    "blob": "ae840994d7757047bc3cd05ab9478f56de05f12d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 236,
    "line": 215,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteRange/Variant6d9f58285cb79bed8271580a1900f1968262536f2a5340cb064dc85940357a03.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:50e44bb37ea725bfbffeda6c18d61e4fbaccc39e57977164ca9c44dd6d56fadd",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteRange/Variant6d9f58285cb79bed8271580a1900f1968262536f2a5340cb064dc85940357a03.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ca0f30d6-269a-11f4-673c-cfce72cbfbd1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 215–236.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma mem_finiteRange_iff_hasFiniteRange [IsNoetherianRing K] {f : V →ₗ[K] V₂} :
    f ∈ finiteRange K V V₂ ↔ f.HasFiniteRange := by
  rw [mem_finiteRange_iff_hasNoetherianRange, hasNoetherianRange_iff_hasFiniteRange]

end CommRing

section Setoid

variable [CommRing K]
  [AddCommGroup V] [Module K V]
  [AddCommGroup V₂] [Module K V₂]
  [AddCommGroup V₃] [Module K V₃]

namespace FiniteRangeSetoid

/-- This is the equivalence relation on linear maps such that `u ≈ v` precisely
when `u - v` is a linear map with noetherian range. We allow ourself this slightly abusive name
because the more natural definition (`u - v` has finitely generated range) only yields a
well-behaved relation (more precisely, an additive congruence relation compatible with composition
on both sides) over a noetherian ring, in which case the two notions agree.

This setoid is declared as an instance in scope `LinearMap.FiniteRangeSetoid`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteRange/Variant6d9f58285cb79bed8271580a1900f1968262536f2a5340cb064dc85940357a03.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteRange/Variant6d9f58285cb79bed8271580a1900f1968262536f2a5340cb064dc85940357a03.lean#L215).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ae840994d7757047bc3cd05ab9478f56de05f12d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
