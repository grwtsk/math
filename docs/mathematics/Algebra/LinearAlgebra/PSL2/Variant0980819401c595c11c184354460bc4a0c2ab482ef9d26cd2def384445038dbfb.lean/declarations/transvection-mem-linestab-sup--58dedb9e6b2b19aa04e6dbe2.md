# transvection_mem_lineStab_sup

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:072c38e9-e63b-3883-4f76-4db86604e964",
  "kind": "lemma",
  "lexical_name": "transvection_mem_lineStab_sup",
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
  "slug": "transvection-mem-linestab-sup--58dedb9e6b2b19aa04e6dbe2",
  "source": {
    "blob": "e83bb7a6572703ebc90b4a94500e07bfc3acb774",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 52,
    "line": 41,
    "path": "GRWTSK/Algebra/LinearAlgebra/PSL2/Variant0980819401c595c11c184354460bc4a0c2ab482ef9d26cd2def384445038dbfb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:58dedb9e6b2b19aa04e6dbe26ded777e50a5660334ab50d45cae6f0b6b97552e",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/PSL2/Variant0980819401c595c11c184354460bc4a0c2ab482ef9d26cd2def384445038dbfb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:072c38e9-e63b-3883-4f76-4db86604e964`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 41–52.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma transvection_mem_lineStab_sup (t : TransvectionStruct (Fin 2) F) :
    t.toSpecialLinearGroup ∈
      lineStab (Submodule.span F {(Pi.single 0 1 : Fin 2 → F)})
      ⊔ lineStab (Submodule.span F {(Pi.single 1 1 : Fin 2 → F)}) := by
  obtain ⟨i, j, hij, c⟩ := t
  simp only [Fin.isValue, TransvectionStruct.toSpecialLinearGroup_mk]
  fin_cases i <;> fin_cases j <;> try tauto
  · exact Subgroup.mem_sup_left <| transvection_mem_lineStab zero_ne_one c
  · exact Subgroup.mem_sup_right <| transvection_mem_lineStab one_ne_zero c

/-- SL-level generation: in the 2-element-index case, the join of the two `lineStab` subgroups
attached to the two coordinate axes is all of `SL ι F`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/PSL2/Variant0980819401c595c11c184354460bc4a0c2ab482ef9d26cd2def384445038dbfb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/PSL2/Variant0980819401c595c11c184354460bc4a0c2ab482ef9d26cd2def384445038dbfb.lean#L41).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e83bb7a6572703ebc90b4a94500e07bfc3acb774` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
