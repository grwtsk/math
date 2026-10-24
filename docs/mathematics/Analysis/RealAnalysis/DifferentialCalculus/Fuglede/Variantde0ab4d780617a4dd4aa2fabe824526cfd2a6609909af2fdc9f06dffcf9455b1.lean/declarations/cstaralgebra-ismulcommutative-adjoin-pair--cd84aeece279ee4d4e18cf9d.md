# CStarAlgebra.isMulCommutative_adjoin_pair

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d3ee0e67-232b-daa8-1c98-71e51b67438b",
  "kind": "lemma",
  "lexical_name": "CStarAlgebra.isMulCommutative_adjoin_pair",
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
  "slug": "cstaralgebra-ismulcommutative-adjoin-pair--cd84aeece279ee4d4e18cf9d",
  "source": {
    "blob": "fa1c8cc85608a37cd06ecb3ba0cb802aa95a44b8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 241,
    "line": 236,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Fuglede/Variantde0ab4d780617a4dd4aa2fabe824526cfd2a6609909af2fdc9f06dffcf9455b1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cd84aeece279ee4d4e18cf9d71bbd2352a41a0f224d1cae7b0bb13798cab1cfb",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Fuglede/Variantde0ab4d780617a4dd4aa2fabe824526cfd2a6609909af2fdc9f06dffcf9455b1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d3ee0e67-232b-daa8-1c98-71e51b67438b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 236–241.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public lemma CStarAlgebra.isMulCommutative_adjoin_pair {x y : A} (h : Commute x y)
    (hx : IsStarNormal x := by cfc_tac) (hy : IsStarNormal y := by cfc_tac) :
    IsMulCommutative (adjoin ℂ {x, y}) :=
  isMulCommutative_adjoin (by grind) (Set.pairwise_pair_of_symm_of_refl.mpr h)

end Unital
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Fuglede/Variantde0ab4d780617a4dd4aa2fabe824526cfd2a6609909af2fdc9f06dffcf9455b1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Fuglede/Variantde0ab4d780617a4dd4aa2fabe824526cfd2a6609909af2fdc9f06dffcf9455b1.lean#L236).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fa1c8cc85608a37cd06ecb3ba0cb802aa95a44b8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
