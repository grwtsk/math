# log_floor_error

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:895b61dc-6c08-fbb7-c718-b2f51230de07",
  "kind": "theorem",
  "lexical_name": "log_floor_error",
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
  "slug": "log-floor-error--1b190d9b193aa2da74ab30a4",
  "source": {
    "blob": "ab79fc8f41264567f32b4d0cfd52227cabf3fe74",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 301,
    "line": 285,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/SignedWeightedMangoldt/Variant5489af606674e955bda7099442dd39019b567ae31ec2731ab8a0d4ffccad7a52.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1b190d9b193aa2da74ab30a4a86a734100dda633db67de50e689968e604de98b",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/SignedWeightedMangoldt/Variant5489af606674e955bda7099442dd39019b567ae31ec2731ab8a0d4ffccad7a52.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:895b61dc-6c08-fbb7-c718-b2f51230de07`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 285–301.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem log_floor_error (x : ℝ) (hx : 1 ≤ x) :
    |Real.log (⌊x⌋₊ : ℝ) - Real.log x| ≤ Real.log 2 := by
  have hfloor : 1 ≤ ⌊x⌋₊ := (Nat.one_le_floor_iff x).mpr hx
  have hfR : (1 : ℝ) ≤ ⌊x⌋₊ := by exact_mod_cast hfloor
  have hfle : (⌊x⌋₊ : ℝ) ≤ x := Nat.floor_le (by linarith)
  have hxupper : x ≤ 2 * (⌊x⌋₊ : ℝ) := by
    have hlt := Nat.lt_floor_add_one x
    linarith
  have hlo : Real.log (⌊x⌋₊ : ℝ) ≤ Real.log x := Real.log_le_log (by linarith) hfle
  have hup : Real.log x ≤ Real.log 2 + Real.log (⌊x⌋₊ : ℝ) := by
    have h := Real.log_le_log (by linarith : 0 < x) hxupper
    rwa [Real.log_mul (by norm_num : (2 : ℝ) ≠ 0) (by linarith : (⌊x⌋₊ : ℝ) ≠ 0)] at h
  have hlog2 := Real.log_nonneg (by norm_num : (1 : ℝ) ≤ 2)
  exact abs_le.mpr ⟨by linarith, by linarith⟩

/-- Elementary weighted-prime Mertens at every real cutoff, with a fixed error.
The prime inventory is closed at the upper endpoint. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/SignedWeightedMangoldt/Variant5489af606674e955bda7099442dd39019b567ae31ec2731ab8a0d4ffccad7a52.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/SignedWeightedMangoldt/Variant5489af606674e955bda7099442dd39019b567ae31ec2731ab8a0d4ffccad7a52.lean#L285).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ab79fc8f41264567f32b4d0cfd52227cabf3fe74` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
