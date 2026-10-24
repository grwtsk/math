# pairedEta_summable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:45e56237-ef65-5ec7-d96c-a96057128ce8",
  "kind": "theorem",
  "lexical_name": "pairedEta_summable",
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
  "slug": "pairedeta-summable--74b560f4c5c30fcaef5262a9",
  "source": {
    "blob": "3bb6eb323e9eb5aaf484441e81250e2e4cffad7b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 338,
    "line": 320,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/ZeroObject/Variantb57ca6937b80faef69e220326c150328302fb749baca5c66f59737488f91b546.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:74b560f4c5c30fcaef5262a97bc434080c985733c158569953a8e833bfc5913f",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/ZeroObject/Variantb57ca6937b80faef69e220326c150328302fb749baca5c66f59737488f91b546.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:45e56237-ef65-5ec7-d96c-a96057128ce8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 320–338.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pairedEta_summable {s : ℝ} (hs : 0 < s) : Summable (pairedEtaTerm s) := by
  have hbound (N : ℕ) :
      (∑ n ∈ Finset.range N, pairedEtaTerm s n) +
        (2 * N + 1 : ℝ) ^ (-s) ≤ 1 := by
    induction N with
    | zero => simp
    | succ N ih =>
      rw [Finset.sum_range_succ]
      have hle : (2 * (N + 1) + 1 : ℝ) ^ (-s) ≤ (2 * N + 2 : ℝ) ^ (-s) :=
        Real.rpow_le_rpow_of_nonpos (by positivity) (by linarith) (by linarith)
      simp only [Nat.cast_add, Nat.cast_one] at *
      simp only [pairedEtaTerm] at *
      linarith
  apply summable_of_sum_range_le (fun n ↦ (pairedEtaTerm_pos hs n).le) (c := 1)
  intro N
  have hp : 0 ≤ (2 * N + 1 : ℝ) ^ (-s) := Real.rpow_nonneg (by positivity) _
  linarith [hbound N]

/-- An exact positive, summable paired numerator for every real s greater than zero. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/ZeroObject/Variantb57ca6937b80faef69e220326c150328302fb749baca5c66f59737488f91b546.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/ZeroObject/Variantb57ca6937b80faef69e220326c150328302fb749baca5c66f59737488f91b546.lean#L320).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3bb6eb323e9eb5aaf484441e81250e2e4cffad7b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
