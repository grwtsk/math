# kernel_density_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9e10ed50-0baa-0a1a-d78a-9ee536b34474",
  "kind": "lemma",
  "lexical_name": "kernel_density_bound",
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
  "slug": "kernel-density-bound--c483761c278f09a0bdda6967",
  "source": {
    "blob": "3c01746f4eb4fca2341f3f7c5996bf7371e606d4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 148,
    "line": 132,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripSexticBernsteinMass.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c483761c278f09a0bdda6967958b64779013f42a9975e280749f78d71383c96e",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CriticalStripSexticBernsteinMass.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9e10ed50-0baa-0a1a-d78a-9ee536b34474`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 132–148.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma kernel_density_bound (i : Fin 16) {t : ℝ}
    (ht : node i.val ≤ t) (ht1 : t ≤ node (i.val + 1)) :
    30240 * ‖sixthKernel.value t‖ ≤
      1 - density i (16 * (t - 1) - (i.val : ℝ)) := by
  have hi : (i.val : ℝ) ≤ 15 := by exact_mod_cast (show i.val ≤ 15 by omega)
  have htlo : 1 ≤ t := (node_order i.val).1.trans ht
  have hthi : t ≤ 2 := by dsimp [node] at ht1; push_cast at ht1; linarith
  have hv : 0 ≤ 16 * (t - 1) - (i.val : ℝ) := by dsimp [node] at ht; linarith
  have hv1 : 16 * (t - 1) - (i.val : ℝ) ≤ 1 := by
    dsimp [node] at ht1; push_cast at ht1; linarith
  have hd := density_le_deficit i hv hv1
  rw [show ((i.val : ℝ) + (16 * (t - 1) - (i.val : ℝ))) / 16 = t - 1 by ring] at hd
  rw [source_on_first_cell htlo hthi, Complex.norm_real, Real.norm_eq_abs, abs_div]
  norm_num
  linarith

/-- Midpoint of the same source subcell, not an evaluation of H. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CriticalStripSexticBernsteinMass.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripSexticBernsteinMass.lean#L132).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3c01746f4eb4fca2341f3f7c5996bf7371e606d4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
