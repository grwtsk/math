# nnnorm_equiv_symm_const'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8a4cbd04-8edf-c59c-16db-0825a736af9f",
  "kind": "theorem",
  "lexical_name": "nnnorm_equiv_symm_const'",
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
  "slug": "nnnorm-equiv-symm-const--be683d6a8e68aa50cfda8bd7",
  "source": {
    "blob": "0c107415cf7cea70f9788cccb8e7a2f52584748a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 849,
    "line": 836,
    "path": "GRWTSK/Topology/MetricTopology/PiLp/Variant6daef438e8f3afdf812181cc0f2c7db96e9a5e1356e52bc6d6601629d8c040c0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:be683d6a8e68aa50cfda8bd7a45e70ea6937cfa8e63ebb25891cbdab82b309cd",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/PiLp/Variant6daef438e8f3afdf812181cc0f2c7db96e9a5e1356e52bc6d6601629d8c040c0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8a4cbd04-8edf-c59c-16db-0825a736af9f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 836–849.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nnnorm_equiv_symm_const' {β} [SeminormedAddCommGroup β] [Nonempty ι] (b : β) :
    ‖(WithLp.equiv p (ι → β)).symm (Function.const _ b)‖₊ =
      (Fintype.card ι : ℝ≥0) ^ (1 / p).toReal * ‖b‖₊ := by
  clear x y -- Porting note: added to avoid spurious arguments
  rcases em <| p = ∞ with (rfl | hp)
  · simp only [WithLp.equiv_symm_pi_apply, ENNReal.div_top, ENNReal.zero_toReal, NNReal.rpow_zero,
      one_mul, nnnorm_eq_ciSup, Function.const_apply, ciSup_const]
  · exact nnnorm_equiv_symm_const hp b
#align pi_Lp.nnnorm_equiv_symm_const' PiLp.nnnorm_equiv_symm_const'

/-- When `p = ∞`, this lemma does not hold without the additional assumption `Nonempty ι` because
the left-hand side simplifies to `0`, while the right-hand side simplifies to `‖b‖₊`. See
`PiLp.norm_equiv_symm_const'` for a version which exchanges the hypothesis `p ≠ ∞` for
`Nonempty ι`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/PiLp/Variant6daef438e8f3afdf812181cc0f2c7db96e9a5e1356e52bc6d6601629d8c040c0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/PiLp/Variant6daef438e8f3afdf812181cc0f2c7db96e9a5e1356e52bc6d6601629d8c040c0.lean#L836).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0c107415cf7cea70f9788cccb8e7a2f52584748a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
