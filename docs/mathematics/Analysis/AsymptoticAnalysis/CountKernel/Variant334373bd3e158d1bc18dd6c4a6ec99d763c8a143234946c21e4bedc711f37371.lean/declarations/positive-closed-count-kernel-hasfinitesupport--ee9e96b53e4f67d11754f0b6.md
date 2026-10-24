# positive_closed_count_kernel_hasFiniteSupport

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f8ad5e38-25e5-18b7-d2e7-dacbe75aa700",
  "kind": "theorem",
  "lexical_name": "positive_closed_count_kernel_hasFiniteSupport",
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
  "slug": "positive-closed-count-kernel-hasfinitesupport--ee9e96b53e4f67d11754f0b6",
  "source": {
    "blob": "793660772c6c93ad115204162fda625cd4925825",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 49,
    "line": 41,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/CountKernel/Variant334373bd3e158d1bc18dd6c4a6ec99d763c8a143234946c21e4bedc711f37371.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ee9e96b53e4f67d11754f0b681c75eb4c0d939e5cb1ed7986ce6169ec1c19d39",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/CountKernel/Variant334373bd3e158d1bc18dd6c4a6ec99d763c8a143234946c21e4bedc711f37371.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f8ad5e38-25e5-18b7-d2e7-dacbe75aa700`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 41–49.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem positive_closed_count_kernel_hasFiniteSupport (t c : ℝ) :
    Function.HasFiniteSupport (positiveClosedCountKernel t c) := by
  apply (positive_closed_count_set_finite t).subset
  intro o ho
  change positiveOrdinate o ≤ t
  by_contra h
  change positiveClosedCountKernel t c o ≠ 0 at ho
  exact ho (by simp only [positiveClosedCountKernel, if_neg h])

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/CountKernel/Variant334373bd3e158d1bc18dd6c4a6ec99d763c8a143234946c21e4bedc711f37371.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/CountKernel/Variant334373bd3e158d1bc18dd6c4a6ec99d763c8a143234946c21e4bedc711f37371.lean#L41).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `793660772c6c93ad115204162fda625cd4925825` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
