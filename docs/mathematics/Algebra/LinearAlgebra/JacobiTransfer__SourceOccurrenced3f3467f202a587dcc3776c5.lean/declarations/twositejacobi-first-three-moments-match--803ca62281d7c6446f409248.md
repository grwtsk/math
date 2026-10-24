# twoSiteJacobi_first_three_moments_match

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d3e4090b-f093-539c-0d36-add6db9d45ff",
  "kind": "theorem",
  "lexical_name": "twoSiteJacobi_first_three_moments_match",
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
  "slug": "twositejacobi-first-three-moments-match--803ca62281d7c6446f409248",
  "source": {
    "blob": "355e6fe28df83abc7f46c574a7f7575552fadb1d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 301,
    "line": 291,
    "path": "GRWTSK/LinearAlgebra/JacobiTransfer.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:803ca62281d7c6446f4092483a04e83384f1882ea8968330f7a9061c89965dd7",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/JacobiTransfer__SourceOccurrenced3f3467f202a587dcc3776c5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d3e4090b-f093-539c-0d36-add6db9d45ff`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 291–301.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem twoSiteJacobi_first_three_moments_match (n : ℕ) (hn : n ≤ 2) :
    rawState (1 : ℚ) 0 ⬝ᵥ (twoSiteJacobi 0 ^ n).mulVec (rawState 1 0) =
      rawState (1 : ℚ) 0 ⬝ᵥ (twoSiteJacobi 1 ^ n).mulVec (rawState 1 0) := by
  interval_cases n <;>
    norm_num [rawState, twoSiteJacobi, Matrix.mulVec, dotProduct, Fin.sum_univ_two,
      pow_succ, Matrix.mul_apply]



/-- Matching those moments does not imply even invertible similarity,
and hence cannot imply unitary equivalence. Trace separates the fixtures. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/LinearAlgebra/JacobiTransfer__SourceOccurrenced3f3467f202a587dcc3776c5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/LinearAlgebra/JacobiTransfer.lean#L291).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `355e6fe28df83abc7f46c574a7f7575552fadb1d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
