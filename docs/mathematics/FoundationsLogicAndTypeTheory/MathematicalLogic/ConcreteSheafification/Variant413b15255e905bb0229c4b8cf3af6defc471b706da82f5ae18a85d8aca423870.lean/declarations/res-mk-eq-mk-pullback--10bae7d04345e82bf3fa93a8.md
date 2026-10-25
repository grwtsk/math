# res_mk_eq_mk_pullback

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a79554fcde15d32377627af2ce73ed64b8840663",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 141,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/41/413b15255e905bb0229c4b8cf3af6defc471b706da82f5ae18a85d8aca423870.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:281e7a53-8bd5-749e-efe8-f0c1ff0ecb1e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6719ab3f-e156-e00f-1e5e-1d38a4fd30e5",
  "kind": "theorem",
  "lexical_name": "res_mk_eq_mk_pullback",
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
  "slug": "res-mk-eq-mk-pullback--10bae7d04345e82bf3fa93a8",
  "source": {
    "blob": "a79554fcde15d32377627af2ce73ed64b8840663",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 156,
    "line": 141,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ConcreteSheafification/Variant413b15255e905bb0229c4b8cf3af6defc471b706da82f5ae18a85d8aca423870.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:10bae7d04345e82bf3fa93a831536c919dbd3e6539a47d78b1a9071caf17bbf2",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/ConcreteSheafification/Variant413b15255e905bb0229c4b8cf3af6defc471b706da82f5ae18a85d8aca423870.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6719ab3f-e156-e00f-1e5e-1d38a4fd30e5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 141–156.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem res_mk_eq_mk_pullback {Y X : C} {P : Cᵒᵖ ⥤ D} {S : J.Cover X} (x : Meq P S) (f : Y ⟶ X) :
    (J.plusObj P).map f.op (mk x) = mk (x.pullback f) := by
  dsimp [mk, plusObj]
  rw [← comp_apply (x := (Meq.equiv P S).symm x), ι_colimMap_assoc, colimit.ι_pre,
    comp_apply (x := (Meq.equiv P S).symm x)]
  apply congr_arg
  apply (Meq.equiv P _).injective
  dsimp only [Functor.op_obj, pullback_obj]
  rw [Equiv.apply_symm_apply]
  ext i
  simp only [Functor.op_obj, unop_op, pullback_obj, diagram_obj, Functor.comp_obj,
    diagramPullback_app, Meq.equiv_apply, Meq.pullback_apply]
  rw [← ConcreteCategory.comp_apply, Multiequalizer.lift_ι]
  erw [Meq.equiv_symm_eq_apply]
  cases i; rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/ConcreteSheafification/Variant413b15255e905bb0229c4b8cf3af6defc471b706da82f5ae18a85d8aca423870.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ConcreteSheafification/Variant413b15255e905bb0229c4b8cf3af6defc471b706da82f5ae18a85d8aca423870.lean#L141).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a79554fcde15d32377627af2ce73ed64b8840663` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
