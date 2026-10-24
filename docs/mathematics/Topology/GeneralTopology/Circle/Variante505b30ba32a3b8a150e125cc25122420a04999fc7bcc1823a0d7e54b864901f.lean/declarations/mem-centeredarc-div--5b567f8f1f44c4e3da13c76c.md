# mem_centeredArc_div

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:79fb42ee-a735-414a-07e4-3e85e8110f3a",
  "kind": "theorem",
  "lexical_name": "mem_centeredArc_div",
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
  "slug": "mem-centeredarc-div--5b567f8f1f44c4e3da13c76c",
  "source": {
    "blob": "59f493bb9b16c39389a4084a9899b8490675f38c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 176,
    "line": 159,
    "path": "GRWTSK/Topology/GeneralTopology/Circle/Variante505b30ba32a3b8a150e125cc25122420a04999fc7bcc1823a0d7e54b864901f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5b567f8f1f44c4e3da13c76ce288660b1fa17134770facee4b1091238adeba4c",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Circle/Variante505b30ba32a3b8a150e125cc25122420a04999fc7bcc1823a0d7e54b864901f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:79fb42ee-a735-414a-07e4-3e85e8110f3a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 159–176.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_centeredArc_div {z : Circle} {s : ℝ} {n : ℕ} (hs : s ≤ π)
    (h1 : z ∈ centeredArc (π / n)) (h2 : z ^ n ∈ centeredArc s) :
    z ∈ centeredArc (s / n) := by
  have hs0 : 0 < s := by
    contrapose! h2
    simp [centeredArc_eq_empty h2]
  have hn0 : n ≠ 0 := by
    contrapose! h1
    simp [h1]
  have hn : 1 ≤ (n : ℝ) := by simpa [Nat.one_le_iff_ne_zero]
  rw [mem_centeredArc ((div_le_self hs0.le hn).trans hs),
    lt_div_iff₀' (one_pos.trans_le hn)]
  rw [mem_centeredArc (div_le_self pi_nonneg hn)] at h1
  rwa [mem_centeredArc hs, coe_pow, ← arg_coe_angle_toReal_eq_arg, arg_pow_coe_angle,
    (Angle.nsmul_toReal_eq_mul hn0).mpr (mem_Ioc_of_Ioo ?_), abs_mul, Nat.abs_cast,
    arg_coe_angle_toReal_eq_arg] at h2
  rwa [neg_div, mem_Ioo, ← abs_lt, arg_coe_angle_toReal_eq_arg]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Circle/Variante505b30ba32a3b8a150e125cc25122420a04999fc7bcc1823a0d7e54b864901f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Circle/Variante505b30ba32a3b8a150e125cc25122420a04999fc7bcc1823a0d7e54b864901f.lean#L159).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `59f493bb9b16c39389a4084a9899b8490675f38c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
