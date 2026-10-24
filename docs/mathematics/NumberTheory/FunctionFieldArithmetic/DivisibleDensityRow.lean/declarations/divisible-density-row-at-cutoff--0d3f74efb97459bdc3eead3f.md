# divisible_density_row_at_cutoff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4ac9da22-bc21-9cfd-8fd8-c8df9335b561",
  "kind": "theorem",
  "lexical_name": "divisible_density_row_at_cutoff",
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
  "slug": "divisible-density-row-at-cutoff--0d3f74efb97459bdc3eead3f",
  "source": {
    "blob": "a3678142a7d3053e82e01fc5bb6f2ff899721b7e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 34,
    "line": 19,
    "path": "GRWTSK/NumberTheory/FunctionFieldArithmetic/DivisibleDensityRow.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0d3f74efb97459bdc3eead3ffd0c88f8a2d0c14e98ae3d5543c1348f9939fa36",
  "verification": {
    "reference": "docs/verification/NumberTheory/FunctionFieldArithmetic/DivisibleDensityRow.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4ac9da22-bc21-9cfd-8fd8-c8df9335b561`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 19–34.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem divisible_density_row_at_cutoff (d : ℕ) (hd : 0 < d) :
    (∑ n ∈ Finset.Icc 1 d, if d ∣ n then densityMobiusCoefficient n / (n : ℝ) else 0) =
      densityMobiusCoefficient d / (d : ℝ) := by
  classical
  rw [Finset.sum_eq_single d]
  · simp
  · intro n hn hnd
    have hnpos : 0 < n := (Finset.mem_Icc.mp hn).1
    have hnot : ¬d ∣ n := by
      intro hdiv
      have hdn := Nat.le_of_dvd hnpos hdiv
      exact hnd (le_antisymm (Finset.mem_Icc.mp hn).2 hdn)
    simp only [hnot, if_false]
  · intro hnot
    exact False.elim (hnot (Finset.mem_Icc.mpr ⟨hd, le_rfl⟩))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/FunctionFieldArithmetic/DivisibleDensityRow.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/FunctionFieldArithmetic/DivisibleDensityRow.lean#L19).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a3678142a7d3053e82e01fc5bb6f2ff899721b7e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
