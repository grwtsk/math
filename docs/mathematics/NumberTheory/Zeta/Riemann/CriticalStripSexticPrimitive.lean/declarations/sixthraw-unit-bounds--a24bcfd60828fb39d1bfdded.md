# sixthRaw_unit_bounds

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:eefd4458-7b56-158a-669e-4452ed6624e1",
  "kind": "lemma",
  "lexical_name": "sixthRaw_unit_bounds",
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
  "slug": "sixthraw-unit-bounds--a24bcfd60828fb39d1bfdded",
  "source": {
    "blob": "e2e757d62d2aa098cf88c5ccd31c47f0657e790f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 72,
    "line": 60,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripSexticPrimitive.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a24bcfd60828fb39d1bfddedf7fc66c94540c6a722f24eb8edafe070081c57a7",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CriticalStripSexticPrimitive.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:eefd4458-7b56-158a-669e-4452ed6624e1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 60–72.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma sixthRaw_unit_bounds {u : ℝ} (hu : 0 ≤ u) (hu1 : u ≤ 1) :
    -(1 / 15360 : ℝ) ≤ sixthRaw u ∧ sixthRaw u ≤ 0 := by
  have hv := unit_product_bounds hu hu1
  have hv2 : (u * (1 - u)) ^ 2 ≤ (1 / 16 : ℝ) := by
    have h := mul_le_mul hv.2 hv.2 hv.1 (by norm_num : (0 : ℝ) ≤ 1 / 4)
    nlinarith
  have hz : 2 * (u * (1 - u)) + 1 ≤ (3 / 2 : ℝ) := by linarith [hv.2]
  have hz0 : 0 ≤ 2 * (u * (1 - u)) + 1 := by linarith [hv.1]
  have hp := mul_le_mul hv2 hz hz0 (by norm_num : (0 : ℝ) ≤ 1 / 16)
  have hp0 := mul_nonneg (sq_nonneg (u * (1 - u))) hz0
  rw [sixthRaw_factor]
  constructor <;> nlinarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CriticalStripSexticPrimitive.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripSexticPrimitive.lean#L60).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e2e757d62d2aa098cf88c5ccd31c47f0657e790f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
