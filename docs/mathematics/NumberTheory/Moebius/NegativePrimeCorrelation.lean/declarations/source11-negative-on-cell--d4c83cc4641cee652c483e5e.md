# source11_negative_on_cell

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:67752b3c-2680-9ad9-9af8-e6a64feece54",
  "kind": "theorem",
  "lexical_name": "source11_negative_on_cell",
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
  "slug": "source11-negative-on-cell--d4c83cc4641cee652c483e5e",
  "source": {
    "blob": "f3e314f6323bf623e11acf62d28597feede00b6f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 100,
    "line": 86,
    "path": "GRWTSK/NumberTheory/Moebius/NegativePrimeCorrelation.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d4c83cc4641cee652c483e5ef10f5337f5c38a7025b61107466e10e4fc51251b",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/NegativePrimeCorrelation.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:67752b3c-2680-9ad9-9af8-e6a64feece54`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 86–100.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem source11_negative_on_cell {u : ℝ} (hl : log 11 ≤ u) (hr : u ≤ log 12) :
    primeNoteCascade {2,3,5,7} u < 0 := by
  have he : exp (-u/2) ≤ (sqrt 11)⁻¹ := by
    have hid := pickup_exp_negative_log_half (by norm_num : 1 ≤ (11:ℕ))
    norm_num at hid
    rw [← hid]
    exact exp_le_exp.mpr (by linarith)
  have hi : (sqrt 11)⁻¹ < (1/3:ℝ) := by
    have hsq : ((sqrt (11:ℝ))⁻¹)^2 = (11:ℝ)⁻¹ := by
      rw [inv_pow, sq_sqrt (by norm_num)]
    nlinarith [show 0 ≤ (sqrt (11:ℝ))⁻¹ by positivity]
  rw [source11_cell hl hr]
  linarith [source11_radical_bound]

/-- The exact small witness is an initial segment of the primes. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/NegativePrimeCorrelation.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/NegativePrimeCorrelation.lean#L86).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f3e314f6323bf623e11acf62d28597feede00b6f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
