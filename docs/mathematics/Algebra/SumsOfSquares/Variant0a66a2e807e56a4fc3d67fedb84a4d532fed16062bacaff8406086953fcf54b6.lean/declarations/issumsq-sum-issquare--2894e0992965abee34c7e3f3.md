# IsSumSq.sum_isSquare

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4d0f839c-00c6-1b74-9e4b-147dfb54adac",
  "kind": "theorem",
  "lexical_name": "IsSumSq.sum_isSquare",
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
  "slug": "issumsq-sum-issquare--2894e0992965abee34c7e3f3",
  "source": {
    "blob": "4521b56cf8f3960b41d378c5076fa961c1d5fd72",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 129,
    "line": 121,
    "path": "GRWTSK/Algebra/SumsOfSquares/Variant0a66a2e807e56a4fc3d67fedb84a4d532fed16062bacaff8406086953fcf54b6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2894e0992965abee34c7e3f343cab4ae263f9354e2a0be6cf95e229d32be64ea",
  "verification": {
    "reference": "docs/verification/Algebra/SumsOfSquares/Variant0a66a2e807e56a4fc3d67fedb84a4d532fed16062bacaff8406086953fcf54b6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4d0f839c-00c6-1b74-9e4b-147dfb54adac`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 121–129.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsSumSq.sum_isSquare [AddCommMonoid R] [Mul R] {ι : Type*} (I : Finset ι) {x : ι → R}
    (hx : ∀ i ∈ I, IsSquare <| x i) : IsSumSq (∑ i ∈ I, x i) :=
  .sum fun _ hi => IsSquare.isSumSq (hx _ hi)

/--
In an additive commutative monoid with multiplication,
`∑ i ∈ I, a i * a i` is a sum of squares.
-/
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/SumsOfSquares/Variant0a66a2e807e56a4fc3d67fedb84a4d532fed16062bacaff8406086953fcf54b6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/SumsOfSquares/Variant0a66a2e807e56a4fc3d67fedb84a4d532fed16062bacaff8406086953fcf54b6.lean#L121).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4521b56cf8f3960b41d378c5076fa961c1d5fd72` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
