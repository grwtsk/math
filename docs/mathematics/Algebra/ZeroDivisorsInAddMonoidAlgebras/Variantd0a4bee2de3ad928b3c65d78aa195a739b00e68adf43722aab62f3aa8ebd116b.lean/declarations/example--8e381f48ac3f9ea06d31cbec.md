# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1e88fff14300b08ed4fd5ada62fa5493b04020341b7a0f424b080f72337319da",
  "kind": "example",
  "lexical_name": null,
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
  "slug": "example--8e381f48ac3f9ea06d31cbec",
  "source": {
    "blob": "ce54372923f016593fc044f3d30ca4752942bc9d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 244,
    "line": 239,
    "path": "GRWTSK/Algebra/ZeroDivisorsInAddMonoidAlgebras/Variantd0a4bee2de3ad928b3c65d78aa195a739b00e68adf43722aab62f3aa8ebd116b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8e381f48ac3f9ea06d31cbecc327ed4ae9ff7dbf1add1542c5d416e8c77513cf",
  "verification": {
    "reference": "docs/verification/Algebra/ZeroDivisorsInAddMonoidAlgebras/Variantd0a4bee2de3ad928b3c65d78aa195a739b00e68adf43722aab62f3aa8ebd116b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1e88fff14300b08ed4fd5ada62fa5493b04020341b7a0f424b080f72337319da`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 239–244.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example : ¬UniqueProds ℕ := by
  rintro ⟨h⟩
  refine not_not.mpr (h (Finset.singleton_nonempty 0) (Finset.insert_nonempty 0 {1})) ?_
  simp [UniqueMul, not_or]

/-- Some Types that do not have `UniqueSums`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/ZeroDivisorsInAddMonoidAlgebras/Variantd0a4bee2de3ad928b3c65d78aa195a739b00e68adf43722aab62f3aa8ebd116b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/ZeroDivisorsInAddMonoidAlgebras/Variantd0a4bee2de3ad928b3c65d78aa195a739b00e68adf43722aab62f3aa8ebd116b.lean#L239).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ce54372923f016593fc044f3d30ca4752942bc9d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
