# quadratic_power_identity

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dea219a2-8a3d-e922-4113-14cd81710f03",
  "kind": "theorem",
  "lexical_name": "quadratic_power_identity",
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
  "slug": "quadratic-power-identity--c11b6505a2aee6f8b81b6e9f",
  "source": {
    "blob": "5fc2870529fabda8b556755c2f6dcf8f694660d5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 84,
    "line": 71,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThresholdDescentProgram.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c11b6505a2aee6f8b81b6e9f7f9f9fd0ea73b40a32a019f14b1e725ee3aa001b",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/QuadraticThresholdDescentProgram.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dea219a2-8a3d-e922-4113-14cd81710f03`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 71–84.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem quadratic_power_identity
    {x ρ δ : ℝ} (hx : 0 < x) :
    (Real.rpow x (ρ + δ))^2 / x =
      Real.rpow x (quadraticThreshold ρ + 2 * δ) := by
  simp only [Real.rpow_eq_pow]
  have hmul := Real.rpow_mul hx.le (ρ + δ) 2
  rw [Real.rpow_two] at hmul
  have hdiv := Real.rpow_sub hx ((ρ + δ) * 2) 1
  rw [Real.rpow_one, hmul] at hdiv
  rw [← hdiv]
  congr 1
  unfold quadraticThreshold
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/QuadraticThresholdDescentProgram.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThresholdDescentProgram.lean#L71).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5fc2870529fabda8b556755c2f6dcf8f694660d5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
