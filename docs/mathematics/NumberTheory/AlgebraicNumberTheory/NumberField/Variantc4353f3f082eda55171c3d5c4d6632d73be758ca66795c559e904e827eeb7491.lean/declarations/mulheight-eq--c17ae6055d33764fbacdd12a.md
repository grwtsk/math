# mulHeight₁_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:42a212e7-236d-fd57-0545-f962c0f9c230",
  "kind": "lemma",
  "lexical_name": "mulHeight₁_eq",
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
  "slug": "mulheight-eq--c17ae6055d33764fbacdd12a",
  "source": {
    "blob": "f31734cef92e81cc9730af18839c0b50fcfc9003",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 127,
    "line": 120,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/NumberField/Variantc4353f3f082eda55171c3d5c4d6632d73be758ca66795c559e904e827eeb7491.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c17ae6055d33764fbacdd12aa55f0e4bb7c3d240ba081e9e7cfe1ae8dcdf019e",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/NumberField/Variantc4353f3f082eda55171c3d5c4d6632d73be758ca66795c559e904e827eeb7491.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:42a212e7-236d-fd57-0545-f962c0f9c230`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 120–127.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma mulHeight₁_eq (x : K) :
    mulHeight₁ x =
      (∏ v : InfinitePlace K, max (v x) 1 ^ v.mult) * ∏ᶠ v : FinitePlace K, max (v x) 1 := by
  simp only [FinitePlace.coe_apply, InfinitePlace.coe_apply, Height.mulHeight₁_eq,
    prod_archAbsVal_eq, prod_nonarchAbsVal_eq fun v ↦ max (v x) 1]

open Real in
/-- This is the familiar definition of the logarithmic height on a number field. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AlgebraicNumberTheory/NumberField/Variantc4353f3f082eda55171c3d5c4d6632d73be758ca66795c559e904e827eeb7491.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/NumberField/Variantc4353f3f082eda55171c3d5c4d6632d73be758ca66795c559e904e827eeb7491.lean#L120).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f31734cef92e81cc9730af18839c0b50fcfc9003` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
