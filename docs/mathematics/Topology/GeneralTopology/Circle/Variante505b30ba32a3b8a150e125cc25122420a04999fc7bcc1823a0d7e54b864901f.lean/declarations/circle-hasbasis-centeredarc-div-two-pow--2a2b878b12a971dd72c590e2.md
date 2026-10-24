# Circle.hasBasis_centeredArc_div_two_pow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fbefa924-fb3b-a22c-22ff-4abdeceedfaa",
  "kind": "theorem",
  "lexical_name": "Circle.hasBasis_centeredArc_div_two_pow",
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
  "slug": "circle-hasbasis-centeredarc-div-two-pow--2a2b878b12a971dd72c590e2",
  "source": {
    "blob": "59f493bb9b16c39389a4084a9899b8490675f38c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 481,
    "line": 470,
    "path": "GRWTSK/Topology/GeneralTopology/Circle/Variante505b30ba32a3b8a150e125cc25122420a04999fc7bcc1823a0d7e54b864901f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2a2b878b12a971dd72c590e2f9d5d7abcbd3f2f8f26f6e050bd4a101842e7853",
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

Occurrence: `result:fbefa924-fb3b-a22c-22ff-4abdeceedfaa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 470–481.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Circle.hasBasis_centeredArc_div_two_pow :
    (nhds (1 : Circle)).HasBasis (fun _ ↦ True) (fun n ↦ centeredArc (π / 2 ^ (n + 1))) := by
  rw [← Circle.exp_zero, ← isLocalHomeomorph_circleExp.map_nhds_eq 0]
  simp_rw [centeredArc, abs_lt, Set.Ioo_def, ← Real.ball_zero_eq_Ioo]
  apply Filter.HasBasis.map
  refine nhds_basis_uniformity <| Metric.mk_uniformity_basis_of_tendsto (l := Filter.atTop)
    (fun _ _ ↦ by positivity) (by simp) ?_
  simp_rw [div_eq_mul_inv, pow_succ, mul_inv_rev, ← mul_assoc]
  rw [← mul_zero (π * 2⁻¹)]
  exact tendsto_inv_atTop_zero.comp (tendsto_pow_atTop_atTop_of_one_lt (by norm_num))
    |>.const_mul _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Circle/Variante505b30ba32a3b8a150e125cc25122420a04999fc7bcc1823a0d7e54b864901f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Circle/Variante505b30ba32a3b8a150e125cc25122420a04999fc7bcc1823a0d7e54b864901f.lean#L470).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `59f493bb9b16c39389a4084a9899b8490675f38c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
