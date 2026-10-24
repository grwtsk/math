# nnrpow_le_nnrpow_of_nonneg_of_norm_le_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a945bff6-74bf-88fa-7103-da7c858d89ea",
  "kind": "lemma",
  "lexical_name": "nnrpow_le_nnrpow_of_nonneg_of_norm_le_one",
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
  "slug": "nnrpow-le-nnrpow-of-nonneg-of-norm-le-one--72e07dab4940646b7911756a",
  "source": {
    "blob": "f86d7f9ef44d8304600f9e742e1afe40fbe2a2ca",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 622,
    "line": 614,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/Order/Variant1258a61fd1dc083043e398d4d67f536f6870f5efeb9b31eb32e268522bc9c6a0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:72e07dab4940646b7911756a7979adee3bc7710309776371df719e8a98e6ead8",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/Order/Variant1258a61fd1dc083043e398d4d67f536f6870f5efeb9b31eb32e268522bc9c6a0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a945bff6-74bf-88fa-7103-da7c858d89ea`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 614–622.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma nnrpow_le_nnrpow_of_nonneg_of_norm_le_one {e : A} (he0 : 0 ≤ e) (he1 : ‖e‖ ≤ 1) {m n : ℝ≥0}
    (hm : m ≠ 0) (hmn : m ≤ n) : e ^ n ≤ e ^ m := by
  have hn : n ≠ 0 := by aesop
  rw [CFC.nnrpow_eq_cfcₙ_real e, CFC.nnrpow_eq_cfcₙ_real e]
  refine cfcₙ_mono fun x hx ↦ ?_
  have hx1 : x ≤ 1 := by grw [Real.le_norm_self x, quasispectrum.norm_le_norm_of_mem hx, he1]
  exact Real.rpow_le_rpow_of_exponent_ge' (quasispectrum_nonneg_of_nonneg _ he0 _ hx) hx1
    m.coe_nonneg (mod_cast hmn)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/Order/Variant1258a61fd1dc083043e398d4d67f536f6870f5efeb9b31eb32e268522bc9c6a0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/Order/Variant1258a61fd1dc083043e398d4d67f536f6870f5efeb9b31eb32e268522bc9c6a0.lean#L614).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f86d7f9ef44d8304600f9e742e1afe40fbe2a2ca` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
