# exists_reciprocalSquareFourthPartialSumBounds

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4cb41468-d6ef-bc47-1c61-c31dde3ae3d9",
  "kind": "theorem",
  "lexical_name": "exists_reciprocalSquareFourthPartialSumBounds",
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
  "slug": "exists-reciprocalsquarefourthpartialsumbounds--d567e45488f791baff0e6633",
  "source": {
    "blob": "15b5c6d3b417bbb4220af72a925f50b58343a680",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 29,
    "line": 17,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenHighTailComponents.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d567e45488f791baff0e6633a70068f69eaf218375f6e5c9fb7d66261de400e6",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenHighTailComponents.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4cb41468-d6ef-bc47-1c61-c31dde3ae3d9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 17–29.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_reciprocalSquareFourthPartialSumBounds :
    ∃ C2 C4 : ℝ, 0 ≤ C2 ∧ 0 ≤ C4 ∧
      (∀ N : ℕ, (∑ n ∈ Finset.Icc 1 N, 1 / (n : ℝ)^2) ≤ C2) ∧
      (∀ N : ℕ, (∑ n ∈ Finset.Icc 1 N, 1 / (n : ℝ)^4) ≤ C4) := by
  obtain ⟨C2, hC2, h2⟩ := exists_reciprocalSquarePartialSumBound
  have hs4 : Summable (fun n : ℕ => 1 / (n : ℝ)^4) := by
    simpa using (Real.summable_nat_pow_inv.mpr (by norm_num : 1 < (4 : ℕ)))
  let C4 : ℝ := ∑' n : ℕ, 1 / (n : ℝ)^4
  refine ⟨C2, C4, hC2, tsum_nonneg (fun _ => by positivity), h2, ?_⟩
  intro N
  exact hs4.sum_le_tsum (fun _ _ => by positivity)

/-- Finite high-tail A^2 majorant over q>=1 and both residue signs. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenHighTailComponents.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenHighTailComponents.lean#L17).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `15b5c6d3b417bbb4220af72a925f50b58343a680` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
