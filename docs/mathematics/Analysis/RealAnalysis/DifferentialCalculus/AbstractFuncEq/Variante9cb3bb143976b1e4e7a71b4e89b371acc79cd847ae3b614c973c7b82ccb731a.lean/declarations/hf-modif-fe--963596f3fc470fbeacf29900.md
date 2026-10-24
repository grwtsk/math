# hf_modif_FE

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3d8121ad-11cf-0506-eaa1-647b0bca0680",
  "kind": "lemma",
  "lexical_name": "hf_modif_FE",
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
  "slug": "hf-modif-fe--963596f3fc470fbeacf29900",
  "source": {
    "blob": "feeb380c12bced03b1cdee46bf4c28c7329c7338",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 310,
    "line": 291,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/AbstractFuncEq/Variante9cb3bb143976b1e4e7a71b4e89b371acc79cd847ae3b614c973c7b82ccb731a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:963596f3fc470fbeacf29900c214faec9169927e971557992e75d3784541859d",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/AbstractFuncEq/Variante9cb3bb143976b1e4e7a71b4e89b371acc79cd847ae3b614c973c7b82ccb731a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3d8121ad-11cf-0506-eaa1-647b0bca0680`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 291–310.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma hf_modif_FE (x : ℝ) (hx : 0 < x) :
    P.f_modif (1 / x) = (P.ε * ↑(x ^ P.k)) • P.g_modif x := by
  rcases lt_trichotomy 1 x with hx' | rfl | hx'
  · have : 1 / x < 1 := by rwa [one_div_lt hx one_pos, div_one]
    rw [f_modif, Pi.add_apply, indicator_of_notMem (notMem_Ioi.mpr this.le),
      zero_add, indicator_of_mem (mem_Ioo.mpr ⟨div_pos one_pos hx, this⟩), g_modif, Pi.add_apply,
      indicator_of_mem (mem_Ioi.mpr hx'), indicator_of_notMem
      (notMem_Ioo_of_ge hx'.le), add_zero, P.h_feq _ hx, smul_sub]
    simp_rw [rpow_neg (one_div_pos.mpr hx).le, one_div, inv_rpow hx.le, inv_inv]
  · simp [f_modif, g_modif]
  · have : 1 < 1 / x := by rwa [lt_one_div one_pos hx, div_one]
    rw [f_modif, Pi.add_apply, indicator_of_mem (mem_Ioi.mpr this),
      indicator_of_notMem (notMem_Ioo_of_ge this.le), add_zero, g_modif, Pi.add_apply,
      indicator_of_notMem (notMem_Ioi.mpr hx'.le),
      indicator_of_mem (mem_Ioo.mpr ⟨hx, hx'⟩), zero_add, P.h_feq _ hx, smul_sub]
    simp_rw [rpow_neg hx.le, ← mul_smul]
    field_simp [(rpow_pos_of_pos hx P.k).ne', P.hε]

/-- Given a weak FE-pair `(f, g)`, modify it into a strong FE-pair by subtracting suitable
correction terms from `f` and `g`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/AbstractFuncEq/Variante9cb3bb143976b1e4e7a71b4e89b371acc79cd847ae3b614c973c7b82ccb731a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/AbstractFuncEq/Variante9cb3bb143976b1e4e7a71b4e89b371acc79cd847ae3b614c973c7b82ccb731a.lean#L291).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `feeb380c12bced03b1cdee46bf4c28c7329c7338` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
