# source_exponential_difference_pos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cf0e47bb-db20-8301-87f9-e4cbb4d89c67",
  "kind": "theorem",
  "lexical_name": "source_exponential_difference_pos",
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
  "slug": "source-exponential-difference-pos--2e129e903e9c746f93c1b232",
  "source": {
    "blob": "dac3e0d11114f5b915162b55a7b1e463f4b6f017",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 30,
    "line": 19,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/SourceLaplaceOneAudit/Variantfc6cf3f9f4c61547c002b9d57313f7c7140475f87f7aa1f9be831f23e3f100f9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2e129e903e9c746f93c1b232a3fdaf696918e110644fe3ce989ce865bc1a4a19",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/SourceLaplaceOneAudit/Variantfc6cf3f9f4c61547c002b9d57313f7c7140475f87f7aa1f9be831f23e3f100f9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cf0e47bb-db20-8301-87f9-e4cbb4d89c67`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 19–30.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem source_exponential_difference_pos :
    0 < 36 * Real.exp 1 - 266 * Real.exp (-1) := by
  have he := Real.sum_le_exp_of_nonneg (by norm_num : (0 : ℝ) ≤ 2) 12
  norm_num [Finset.sum_range_succ, Nat.factorial] at he
  have he' : (266 : ℝ) < 36 * Real.exp 2 := by linarith
  have hp : 0 < Real.exp (-1 : ℝ) := Real.exp_pos _
  have hx : Real.exp (1 : ℝ) = Real.exp 2 * Real.exp (-1) := by
    rw [← Real.exp_add]
    norm_num
  rw [hx]
  nlinarith [mul_pos (sub_pos.mpr he') hp]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/SourceLaplaceOneAudit/Variantfc6cf3f9f4c61547c002b9d57313f7c7140475f87f7aa1f9be831f23e3f100f9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/SourceLaplaceOneAudit/Variantfc6cf3f9f4c61547c002b9d57313f7c7140475f87f7aa1f9be831f23e3f100f9.lean#L19).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dac3e0d11114f5b915162b55a7b1e463f4b6f017` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
