# ofSimplex_objEquiv_symm_id

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2257bc9a-de01-ae66-190f-53beee0ca6af",
  "kind": "lemma",
  "lexical_name": "ofSimplex_objEquiv_symm_id",
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
  "slug": "ofsimplex-objequiv-symm-id--27e75d479efd616c4784b886",
  "source": {
    "blob": "94b7115803732ead52de580990f069fb19683e51",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 752,
    "line": 746,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/StdSimplex/Variant44e28e2810aaf85ea468c10097327bfdbef70d25796039736cac919a3606b27d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:27e75d479efd616c4784b886903f751977cc59048e86c3cdcac0a3a9fa68593b",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/StdSimplex/Variant44e28e2810aaf85ea468c10097327bfdbef70d25796039736cac919a3606b27d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2257bc9a-de01-ae66-190f-53beee0ca6af`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 746–752.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma ofSimplex_objEquiv_symm_id (n : ℕ) :
    Subcomplex.ofSimplex (objEquiv.{u}.symm (𝟙 ⦋n⦌)) = ⊤ :=
  le_antisymm (by simp) (fun _ x _ ↦ by
    obtain ⟨f, rfl⟩ := objEquiv.symm.surjective x
    simp only [Subcomplex.mem_ofSimplex_obj_iff, op_unop]
    exact ⟨f, by simp [map_objEquiv_symm.{u}]⟩)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/StdSimplex/Variant44e28e2810aaf85ea468c10097327bfdbef70d25796039736cac919a3606b27d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/StdSimplex/Variant44e28e2810aaf85ea468c10097327bfdbef70d25796039736cac919a3606b27d.lean#L746).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `94b7115803732ead52de580990f069fb19683e51` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
