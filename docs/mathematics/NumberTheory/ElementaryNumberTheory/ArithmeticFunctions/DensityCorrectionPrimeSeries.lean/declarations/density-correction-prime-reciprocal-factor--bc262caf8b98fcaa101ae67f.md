# density_correction_prime_reciprocal_factor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7550e663-6e99-08a6-b022-cd60de43ac43",
  "kind": "theorem",
  "lexical_name": "density_correction_prime_reciprocal_factor",
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
  "slug": "density-correction-prime-reciprocal-factor--bc262caf8b98fcaa101ae67f",
  "source": {
    "blob": "6a1d7528edd923578606b1690d7180bd5cacbdac",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 104,
    "line": 95,
    "path": "GRWTSK/NumberTheory/ArithmeticFunctions/DensityCorrectionPrimeSeries.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bc262caf8b98fcaa101ae67ff4820cd97020f2a8cf03a348e34483db1ecc29ed",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DensityCorrectionPrimeSeries.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7550e663-6e99-08a6-b022-cd60de43ac43`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 95–104.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem density_correction_prime_reciprocal_factor {p : ℕ} (hp : p.Prime) :
    1 + (∑' k : ℕ, densityMoebiusCorrection (p ^ (k + 1)) / (p : ℝ) ^ (k + 1)) =
      (p : ℝ)^2 / ((p : ℝ)^2 - 1) := by
  rw [(density_correction_prime_reciprocal_hasSum hp).tsum_eq]
  have hp2 : (2 : ℝ) ≤ p := by exact_mod_cast hp.two_le
  have hs : (p : ℝ)^2 - 1 ≠ 0 := by nlinarith
  field_simp
  ring

end GRWTSK.NumberTheory.ArithmeticFunctions
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DensityCorrectionPrimeSeries.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ArithmeticFunctions/DensityCorrectionPrimeSeries.lean#L95).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6a1d7528edd923578606b1690d7180bd5cacbdac` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
