# finiteZetaEulerProductComplex_expands_boundedSmoothNumbers

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c53fa6d3-a270-e84e-f078-2f2c51ddbe72",
  "kind": "theorem",
  "lexical_name": "finiteZetaEulerProductComplex_expands_boundedSmoothNumbers",
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
  "slug": "finitezetaeulerproductcomplex-expands-boundedsmoothnumbers--62a7e6b5f5882965df86bc1b",
  "source": {
    "blob": "821b20220191c2851962d78d0ce3bed618a56035",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 52,
    "line": 37,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ComplexEulerProductFinite/Variantcf1d038845529c86e024747763b4ad51a424828e5b209239697947a60b960a91.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:62a7e6b5f5882965df86bc1b4e7b3ad77e5fcb1317aaa3ee59049b435ca7566f",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/ComplexEulerProductFinite/Variantcf1d038845529c86e024747763b4ad51a424828e5b209239697947a60b960a91.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c53fa6d3-a270-e84e-f078-2f2c51ddbe72`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 37–52.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finiteZetaEulerProductComplex_expands_boundedSmoothNumbers
    (S : Finset Nat)
    (K : Nat)
    (s : Complex)
    (hSprime : ∀ p ∈ S, Nat.Prime p) :
    finiteZetaEulerProductComplex S s K =
      ∑ n ∈ boundedSmoothNumbers S K, complexWeight s n := by
  change
    finiteEulerProductOf (fun n => complexWeight s n) S K =
      ∑ n ∈ boundedSmoothNumbers S K, complexWeight s n
  exact
    finiteEulerProductOf_expands_boundedSmoothNumbers
      (fun n => complexWeight s n)
      (complexWeight_completely_multiplicative s)
      S K hSprime

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/ComplexEulerProductFinite/Variantcf1d038845529c86e024747763b4ad51a424828e5b209239697947a60b960a91.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/ComplexEulerProductFinite/Variantcf1d038845529c86e024747763b4ad51a424828e5b209239697947a60b960a91.lean#L37).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `821b20220191c2851962d78d0ce3bed618a56035` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
