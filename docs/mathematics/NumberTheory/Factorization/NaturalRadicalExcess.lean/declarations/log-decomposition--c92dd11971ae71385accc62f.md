# log_decomposition

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4a73e93d-18e7-4c42-bac6-f3ee4e31646e",
  "kind": "theorem",
  "lexical_name": "log_decomposition",
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
  "slug": "log-decomposition--c92dd11971ae71385accc62f",
  "source": {
    "blob": "1392f6a2237cc7af5ebc6d994188900c6e0f4657",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 138,
    "line": 123,
    "path": "GRWTSK/NumberTheory/Factorization/NaturalRadicalExcess.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c92dd11971ae71385accc62f19d28cd8fac0836d2f0f7fa221ec106eae14f29f",
  "verification": {
    "reference": "docs/verification/NumberTheory/Factorization/NaturalRadicalExcess.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4a73e93d-18e7-4c42-bac6-f3ee4e31646e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 123–138.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem log_decomposition (n : ℕ) (_hn : n ≠ 0) :
    Real.log (n : ℝ) = supportLog n + excessLog n := by
  rw [Real.log_nat_eq_sum_factorization]
  change (∑ p ∈ occupied n, (n.factorization p : ℝ) * Real.log (p : ℝ)) = _
  unfold supportLog excessLog
  rw [← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro p hp
  have hd : n.factorization p ≠ 0 := Finsupp.mem_support_iff.mp hp
  have hnat : n.factorization p = 1 + excess n p := by
    simpa [indicator, hd] using multiplicity_split n p
  have hcast : (n.factorization p : ℝ) = 1 + (excess n p : ℝ) := by
    simpa only [Nat.cast_add, Nat.cast_one] using congrArg (fun x : ℕ => (x : ℝ)) hnat
  rw [hcast]
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Factorization/NaturalRadicalExcess.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Factorization/NaturalRadicalExcess.lean#L123).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1392f6a2237cc7af5ebc6d994188900c6e0f4657` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
