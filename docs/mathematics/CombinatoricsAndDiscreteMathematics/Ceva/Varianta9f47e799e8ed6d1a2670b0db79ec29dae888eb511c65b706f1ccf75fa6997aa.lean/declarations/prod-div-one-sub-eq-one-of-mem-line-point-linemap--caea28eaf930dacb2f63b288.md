# prod_div_one_sub_eq_one_of_mem_line_point_lineMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:17ed6ae3-dffb-d8f8-25a7-39f8ed092651",
  "kind": "lemma",
  "lexical_name": "prod_div_one_sub_eq_one_of_mem_line_point_lineMap",
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
  "slug": "prod-div-one-sub-eq-one-of-mem-line-point-linemap--caea28eaf930dacb2f63b288",
  "source": {
    "blob": "0f7de3bc0c76cd411869ee7fb192e00a436fee41",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 221,
    "line": 212,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Ceva/Varianta9f47e799e8ed6d1a2670b0db79ec29dae888eb511c65b706f1ccf75fa6997aa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:caea28eaf930dacb2f63b288641c17eacd774d000a0519a7c15a395da56f2467",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Ceva/Varianta9f47e799e8ed6d1a2670b0db79ec29dae888eb511c65b706f1ccf75fa6997aa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:17ed6ae3-dffb-d8f8-25a7-39f8ed092651`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 212–221.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma prod_div_one_sub_eq_one_of_mem_line_point_lineMap {t : Triangle k P} {r : Fin 3 → k}
    (hr0 : ∀ i, r i ≠ 0) {p' : P} (hp' : ∀ i : Fin 3, p' ∈
      line[k, t.points i, AffineMap.lineMap (t.points (i + 1)) (t.points (i + 2)) (r i)]) :
    ∏ i, r i / (1 - r i) = 1 := by
  rw [Finset.prod_div_distrib, ← prod_eq_prod_one_sub_of_mem_line_point_lineMap hp', div_self]
  exact Finset.prod_ne_zero_iff.2 fun _ _ ↦ hr0 _

end Field

end Affine.Triangle
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Ceva/Varianta9f47e799e8ed6d1a2670b0db79ec29dae888eb511c65b706f1ccf75fa6997aa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Ceva/Varianta9f47e799e8ed6d1a2670b0db79ec29dae888eb511c65b706f1ccf75fa6997aa.lean#L212).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0f7de3bc0c76cd411869ee7fb192e00a436fee41` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
