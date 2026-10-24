# ResidualFreshTrail.closed_of_balanced_maximal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e7fff53a-ccab-d855-0370-79ea47beff0a",
  "kind": "theorem",
  "lexical_name": "ResidualFreshTrail.closed_of_balanced_maximal",
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
  "slug": "residualfreshtrail-closed-of-balanced-maximal--0caa0ab796607a1d142b398e",
  "source": {
    "blob": "449ded2bf1599439d1fef91b2276b08fb428f476",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 304,
    "line": 283,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCountedEulerResidualTrail.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0caa0ab796607a1d142b398e5c7b04ec465e2ac88ee023262c06b8da23cd5957",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCountedEulerResidualTrail.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e7fff53a-ccab-d855-0370-79ea47beff0a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 283–304.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ResidualFreshTrail.closed_of_balanced_maximal
    {m : ℕ} {c : BinaryEdgeWord m → ℕ}
    {U : Finset (CountedBinaryEdge m c)}
    {a b : Fin m → Bool}
    (R : ResidualFreshTrail m c U a b)
    (hbalance : ResidualDegreeBalanced m c U)
    (hmax : R.Maximal) :
    a = b := by
  by_contra hne
  have hall := hbalance b
  have hout := R.out_degree_partition b
  have hin := R.in_degree_partition b
  have hzero := R.unused_out_card_zero_of_maximal hmax
  have htrail := R.trail.used_degree_imbalance b
  have hbb : b = b := rfl
  simp [hne, hbb] at htrail
  omega



/-- The empty residual fresh trail at a vertex uses no edge instances
and is supported in every finite residual edge universe U. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCountedEulerResidualTrail.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCountedEulerResidualTrail.lean#L283).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `449ded2bf1599439d1fef91b2276b08fb428f476` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
