# actual_good_jacobi_nonvacuous

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:60dc9d85-08d2-6dbd-884d-41614f78e8a1",
  "kind": "theorem",
  "lexical_name": "actual_good_jacobi_nonvacuous",
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
  "slug": "actual-good-jacobi-nonvacuous--5f3fbaf48fc1f55021555664",
  "source": {
    "blob": "87b59d75ed5f4a0e57a24148f1da613fc568ee28",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 66,
    "line": 48,
    "path": "GRWTSK/NumberTheory/Cyclotomic/Checks/Positive/ThirdCyclotomicJacobi.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5f3fbaf48fc1f55021555664e9b8982c5c5381fc2da853858ca214d8144144dc",
  "verification": {
    "reference": "docs/verification/NumberTheory/Cyclotomic/Checks/Positive/ThirdCyclotomicJacobi.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:60dc9d85-08d2-6dbd-884d-41614f78e8a1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 48–66.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_good_jacobi_nonvacuous :
    ∃ (P : Ideal O) (hP : P.IsMaximal),
      letI : P.IsMaximal := hP
      ∃ (hgood : lambda ∉ P) (z : O),
        (2 : O) ∈ P ∧ z ∈ Algebra.adjoin ℤ {omega} ∧
          jacobiSum (cubicChar P hgood) (cubicChar P hgood) = -1 + z * lambda ^ 2 ∧
          lambda ^ 2 ∣ jacobiSum (cubicChar P hgood) (cubicChar P hgood) + 1 ∧
          lambda ^ 2 ∣ -(jacobiSum (cubicChar P hgood) (cubicChar P hgood)) - 1 ∧
          ¬lambda ^ 2 ∣ jacobiSum (cubicChar P hgood) (cubicChar P hgood) - 1 := by
  obtain ⟨P, hP, htwo, hgood⟩ := exists_good_maximal_above_two
  let : P.IsMaximal := hP
  obtain ⟨z, hz, hJ⟩ := cubicJacobi_primary P hgood
  exact ⟨P, hP, hgood, z, htwo, hz, hJ,
    lambda_sq_dvd_cubicJacobi_add_one P hgood,
    lambda_sq_dvd_neg_cubicJacobi_sub_one P hgood,
    lambda_sq_not_dvd_cubicJacobi_sub_one P hgood⟩

end
end GRWTSK.NumberTheory.Cyclotomic.ThirdCyclotomicJacobi.Checks.Positive
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/Cyclotomic/Checks/Positive/ThirdCyclotomicJacobi.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Cyclotomic/Checks/Positive/ThirdCyclotomicJacobi.lean#L48).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `87b59d75ed5f4a0e57a24148f1da613fc568ee28` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
