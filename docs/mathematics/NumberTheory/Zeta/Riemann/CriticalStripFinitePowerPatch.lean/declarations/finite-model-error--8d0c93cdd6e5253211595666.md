# finite_model_error

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e080df4a-a44e-b58a-5341-eefc719d21d2",
  "kind": "theorem",
  "lexical_name": "finite_model_error",
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
  "slug": "finite-model-error--8d0c93cdd6e5253211595666",
  "source": {
    "blob": "d6fa16ca87f7c433a0cb410b2fc81bcda20cd858",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 82,
    "line": 65,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripFinitePowerPatch.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8d0c93cdd6e52532115956661de5841403434aa3a799e64919534d6671b934be",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CriticalStripFinitePowerPatch.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e080df4a-a44e-b58a-5341-eefc719d21d2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 65–82.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finite_model_error (e : FinitePowerEnclosure N s) :
    ‖finitePowerPoleModel N s - e.sample‖ ≤ e.finiteError := by
  have heq : finitePowerPoleModel N s - e.sample =
      (s - 1) * (finiteDirichletPowerSum N s - ∑ k ∈ Finset.Icc 1 N, e.value k) +
        ((N : ℂ) ^ (1 - s) - e.endpoint) := by
    unfold finitePowerPoleModel sample
    ring
  rw [heq]
  calc
    _ ≤ ‖(s - 1) * (finiteDirichletPowerSum N s -
          ∑ k ∈ Finset.Icc 1 N, e.value k)‖ +
        ‖(N : ℂ) ^ (1 - s) - e.endpoint‖ := norm_add_le _ _
    _ ≤ e.finiteError := by
      rw [norm_mul]
      exact add_le_add
        (mul_le_mul_of_nonneg_left e.finite_sum_error (norm_nonneg _)) e.endpoint_encloses

/-- Integration tail and finite evaluation error have distinct origins. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CriticalStripFinitePowerPatch.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripFinitePowerPatch.lean#L65).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d6fa16ca87f7c433a0cb410b2fc81bcda20cd858` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
