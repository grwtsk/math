# goldbachTwoArcRationalBudget_le_half

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:50b548e6-70b9-1162-bf83-a51230340998",
  "kind": "theorem",
  "lexical_name": "goldbachTwoArcRationalBudget_le_half",
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
  "slug": "goldbachtwoarcrationalbudget-le-half--645655e8d823f947935dc9e4",
  "source": {
    "blob": "37bca0cb5ea0f57c94742c335d7d74414460ac58",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 60,
    "line": 43,
    "path": "GRWTSK/NumberTheory/Primes/GoldbachTwoArcRationalBudget.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:645655e8d823f947935dc9e426d397ece73f5f24d895689cbe4773ce1f921ef1",
  "verification": {
    "reference": "docs/verification/NumberTheory/Primes/GoldbachTwoArcRationalBudget.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:50b548e6-70b9-1162-bf83-a51230340998`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 43–60.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem goldbachTwoArcRationalBudget_le_half
    {X B : ℝ} (hX : 1000 ≤ X) (hB : 0 ≤ B) (hsmall : B ≤ X / 100) :
    goldbachTwoArcRationalBudget X B ≤ X / 2 := by
  have hXp : 0 < X := by linarith
  have hBsmall : 100 * B ≤ X := by linarith
  have hBX : 100 * B * X ≤ X ^ 2 := by
    nlinarith [mul_nonneg (sub_nonneg.mpr hBsmall) (le_of_lt hXp)]
  have hBB : 10000 * B ^ 2 ≤ X ^ 2 := by
    nlinarith [mul_nonneg (sub_nonneg.mpr hBsmall)
      (show 0 ≤ X + 100 * B by positivity)]
  have hXX : 1000 * X ≤ X ^ 2 := by
    nlinarith [mul_nonneg (sub_nonneg.mpr hX) (le_of_lt hXp)]
  unfold goldbachTwoArcRationalBudget
  apply (div_le_iff₀ hXp).2
  nlinarith

/-- The chosen major and directional-minor allowances leave a strict margin
below the written 13X/9 model lower bound. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Primes/GoldbachTwoArcRationalBudget.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Primes/GoldbachTwoArcRationalBudget.lean#L43).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `37bca0cb5ea0f57c94742c335d7d74414460ac58` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
