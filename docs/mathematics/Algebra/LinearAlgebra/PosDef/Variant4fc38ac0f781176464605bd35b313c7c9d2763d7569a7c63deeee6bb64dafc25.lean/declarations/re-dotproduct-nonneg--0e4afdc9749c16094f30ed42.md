# re_dotProduct_nonneg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:76b0927a-d8f3-5298-9e44-853ded1a3253",
  "kind": "lemma",
  "lexical_name": "re_dotProduct_nonneg",
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
  "slug": "re-dotproduct-nonneg--0e4afdc9749c16094f30ed42",
  "source": {
    "blob": "6a770bc7c60ce017c00d946d3827ec60ab04d216",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 58,
    "line": 53,
    "path": "GRWTSK/Algebra/LinearAlgebra/PosDef/Variant4fc38ac0f781176464605bd35b313c7c9d2763d7569a7c63deeee6bb64dafc25.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0e4afdc9749c16094f30ed4263181bcbd6387329b8339288fff5a1cc4f20830b",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/PosDef/Variant4fc38ac0f781176464605bd35b313c7c9d2763d7569a7c63deeee6bb64dafc25.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:76b0927a-d8f3-5298-9e44-853ded1a3253`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 53–58.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma re_dotProduct_nonneg (hA : A.PosSemidef) (x : n → 𝕜) : 0 ≤ RCLike.re (star x ⬝ᵥ (A *ᵥ x)) :=
  RCLike.nonneg_iff.mp (hA.dotProduct_mulVec_nonneg _) |>.1

-- TODO generalise this lemma. Similarly to `Matrix.PosDef.det_pos`, it requires just the following
-- assumptions on the scalars `R`:
-- `[CommRing R] [PartialOrder R] [StarRing R] [Nontrivial R] [IsOrderedRing R] [PosMulReflectLE R]`
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/PosDef/Variant4fc38ac0f781176464605bd35b313c7c9d2763d7569a7c63deeee6bb64dafc25.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/PosDef/Variant4fc38ac0f781176464605bd35b313c7c9d2763d7569a7c63deeee6bb64dafc25.lean#L53).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6a770bc7c60ce017c00d946d3827ec60ab04d216` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
