# raw_center_mem_seed

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:929e4001-342b-d5b1-3979-d4d1c11ce3f9",
  "kind": "lemma",
  "lexical_name": "raw_center_mem_seed",
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
  "slug": "raw-center-mem-seed--b46373c3e881330a3d2c6ea8",
  "source": {
    "blob": "5bfda65dc0a88e25786cb6a388e3dbcb7d04e169",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 110,
    "line": 96,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripOneThirdGrid.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b46373c3e881330a3d2c6ea8d48bde423cb38ea86fd8341215128b7fe9f1b735",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CriticalStripOneThirdGrid.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:929e4001-342b-d5b1-3979-d4d1c11ce3f9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 96–110.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma raw_center_mem_seed (i : Fin 512) (j : Fin 768) :
    (rawDisk i j).center ∈ oneThirdRightSeed := by
  have hi0 : (0 : ℝ) ≤ (i.val : ℝ) := Nat.cast_nonneg _
  have hj0 : (0 : ℝ) ≤ (j.val : ℝ) := Nat.cast_nonneg _
  have hi : (i.val : ℝ) < 512 := by exact_mod_cast i.isLt
  have hj : (j.val : ℝ) < 768 := by exact_mod_cast j.isLt
  change (1 / 2 : ℝ) ≤ (rawDisk i j).center.re ∧
    (rawDisk i j).center.re ≤ 1 ∧ |(rawDisk i j).center.im| ≤ (1 / 3 : ℝ)
  rw [raw_center_re, raw_center_im, abs_le]
  constructor
  · linarith
  constructor
  · linarith
  constructor <;> linarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CriticalStripOneThirdGrid.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripOneThirdGrid.lean#L96).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5bfda65dc0a88e25786cb6a388e3dbcb7d04e169` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
