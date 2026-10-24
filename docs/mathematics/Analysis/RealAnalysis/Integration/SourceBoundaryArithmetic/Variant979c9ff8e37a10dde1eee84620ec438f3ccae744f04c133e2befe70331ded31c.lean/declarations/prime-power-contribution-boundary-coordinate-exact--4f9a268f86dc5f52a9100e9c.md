# prime_power_contribution_boundary_coordinate_exact

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "dac4d3faa3684e69bf16c4db86ea5c5e1285c812",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 217,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/97/979c9ff8e37a10dde1eee84620ec438f3ccae744f04c133e2befe70331ded31c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4195d003-c12c-9736-88b8-c9d15276457e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:cbe38c86-c069-3f10-ec3d-a5b6ec6a9380",
  "kind": "theorem",
  "lexical_name": "prime_power_contribution_boundary_coordinate_exact",
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
  "slug": "prime-power-contribution-boundary-coordinate-exact--4f9a268f86dc5f52a9100e9c",
  "source": {
    "blob": "dac4d3faa3684e69bf16c4db86ea5c5e1285c812",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 229,
    "line": 217,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceBoundaryArithmetic/Variant979c9ff8e37a10dde1eee84620ec438f3ccae744f04c133e2befe70331ded31c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4f9a268f86dc5f52a9100e9ce862a23d35680d56983d2fa46711ed9547e9113e",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceBoundaryArithmetic/Variant979c9ff8e37a10dde1eee84620ec438f3ccae744f04c133e2befe70331ded31c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cbe38c86-c069-3f10-ec3d-a5b6ec6a9380`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 217–229.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem prime_power_contribution_boundary_coordinate_exact (A : ℝ) (hA : 1 ≤ A) :
    primePowerContribution explicitSecondDerivative A =
      Real.exp (-A) / A ^ 9 *
        (∑ n ∈ primeIndices A, ArithmeticFunction.vonMangoldt n *
          Real.exp (boundaryDistance A n / 2) * boundaryKernel A (boundaryDistance A n)) := by
  change (∑ n ∈ primeIndices A, _) = _
  rw [Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro n hn
  exact weighted_atom_boundary A (by linarith) n
    (by have := ((mem_primeIndices_iff A n).mp hn).1; omega)

/-- Exact boundary coordinates for the separate native prime-and-square restriction. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceBoundaryArithmetic/Variant979c9ff8e37a10dde1eee84620ec438f3ccae744f04c133e2befe70331ded31c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceBoundaryArithmetic/Variant979c9ff8e37a10dde1eee84620ec438f3ccae744f04c133e2befe70331ded31c.lean#L217).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dac4d3faa3684e69bf16c4db86ea5c5e1285c812` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
