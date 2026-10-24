# odd_power_properties

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7b19d9fa-586a-3e80-0f9d-b3dc587ea2c7",
  "kind": "theorem",
  "lexical_name": "odd_power_properties",
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
  "slug": "odd-power-properties--99e07a2ca53e14cee7ac3126",
  "source": {
    "blob": "ad91a688c786de277f5344fbd04d9fea2d5ab936",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 104,
    "line": 90,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variante79f3d589f7182d10f8de31bab65e420a526173bee74bbace839fc178f26d761.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:99e07a2ca53e14cee7ac3126c623ef06d2d144ea238fd6c186fd2c7b1979e77b",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variante79f3d589f7182d10f8de31bab65e420a526173bee74bbace839fc178f26d761.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7b19d9fa-586a-3e80-0f9d-b3dc587ea2c7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 90–104.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem odd_power_properties (p k : ℕ) (hp : p.Prime) :
    IsPrimePow (p ^ (2 * k + 3)) ∧ ¬Nat.Prime (p ^ (2 * k + 3)) ∧
      ¬IsSquare (p ^ (2 * k + 3)) := by
  refine ⟨(isPrimePow_nat_iff _).mpr ⟨p, 2 * k + 3, hp, by omega, rfl⟩, ?_, ?_⟩
  · intro hq
    have h := (hp.pow_inj' hq (by omega) (by norm_num : (1 : ℕ) ≠ 0)
      (by simp : p ^ (2 * k + 3) = (p ^ (2 * k + 3)) ^ 1)).2
    omega
  · intro hs
    obtain ⟨a, ha⟩ := hs.exists_sq (p ^ (2 * k + 3))
    have hd := Nat.exponent_dvd_of_prime_pow_eq_pow hp ha
    have hm := Nat.mod_eq_zero_of_dvd hd
    omega

/-- Unique prime-base/exponent transport of the complete odd higher-power inventory. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variante79f3d589f7182d10f8de31bab65e420a526173bee74bbace839fc178f26d761.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variante79f3d589f7182d10f8de31bab65e420a526173bee74bbace839fc178f26d761.lean#L90).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ad91a688c786de277f5344fbd04d9fea2d5ab936` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
