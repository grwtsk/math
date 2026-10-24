# sampleResidue_increment_sq_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:869a0f9f-d0b7-4e03-57fa-4a6b4faa46b2",
  "kind": "theorem",
  "lexical_name": "sampleResidue_increment_sq_le",
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
  "slug": "sampleresidue-increment-sq-le--9a6c479b9721e080ddb26948",
  "source": {
    "blob": "813d381298ab1415230ce94eb10edf05338aadba",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 151,
    "line": 139,
    "path": "GRWTSK/NumberTheory/Moebius/LogarithmicPickupSeries.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9a6c479b9721e080ddb2694882d3440f4abb4295a60b61c4fda30bf8c569f8c6",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/LogarithmicPickupSeries.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:869a0f9f-d0b7-4e03-57fa-4a6b4faa46b2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 139–151.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sampleResidue_increment_sq_le {n : ℕ} (hn : 1 ≤ n) :
    (sampleResidue (n + 1) - sampleResidue n) ^ 2 ≤
      1 / (4 * ((n : ℝ) + 1)) := by
  have hn1 : (0 : ℝ) ≤ (n + 1 : ℕ) := Nat.cast_nonneg _
  have hs := (sq_le_sq₀
    (abs_nonneg (sampleResidue (n + 1) - sampleResidue n))
    (by positivity : 0 ≤ (Real.sqrt (n + 1 : ℕ))⁻¹ / 2)).mpr
      (sampleResidue_increment_abs_le hn)
  rw [sq_abs, div_pow, inv_pow, Real.sq_sqrt hn1] at hs
  convert hs using 1 <;> (try rfl); push_cast;
    (try field_simp [show (n : ℝ) + 1 ≠ 0 by positivity]); ring

/-- A finite harmonic allowance for the actual diagonal increment sum. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/LogarithmicPickupSeries.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/LogarithmicPickupSeries.lean#L139).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `813d381298ab1415230ce94eb10edf05338aadba` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
