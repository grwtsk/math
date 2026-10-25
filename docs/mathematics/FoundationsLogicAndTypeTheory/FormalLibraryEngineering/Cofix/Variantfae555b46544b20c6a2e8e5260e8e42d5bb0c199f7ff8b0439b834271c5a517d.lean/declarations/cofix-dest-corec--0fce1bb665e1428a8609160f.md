# Cofix.dest_corec'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "781048609589e8b637ca09908bfae93fa10a33e5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 529,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fa/fae555b46544b20c6a2e8e5260e8e42d5bb0c199f7ff8b0439b834271c5a517d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e40f0e49-f499-a8e0-1152-f8b92eaad154",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:42cb23a3-75da-2224-37cc-74b6ce72b49f",
  "kind": "theorem",
  "lexical_name": "Cofix.dest_corec'",
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
  "slug": "cofix-dest-corec--0fce1bb665e1428a8609160f",
  "source": {
    "blob": "781048609589e8b637ca09908bfae93fa10a33e5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 547,
    "line": 529,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cofix/Variantfae555b46544b20c6a2e8e5260e8e42d5bb0c199f7ff8b0439b834271c5a517d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0fce1bb665e1428a8609160f6c31c7c08034c1f92818fd77d378e5cfb4160961",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cofix/Variantfae555b46544b20c6a2e8e5260e8e42d5bb0c199f7ff8b0439b834271c5a517d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:42cb23a3-75da-2224-37cc-74b6ce72b49f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 529–547.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Cofix.dest_corec' {α : TypeVec.{u} n} {β : Type u}
    (g : β → F (α.append1 (Sum (Cofix F α) β))) (x : β) :
    Cofix.dest (Cofix.corec' g x) =
      appendFun id (Sum.elim _root_.id (Cofix.corec' g)) <$$> g x := by
  rw [Cofix.corec', Cofix.dest_corec]; dsimp
  congr!; ext (i | i) <;> erw [corec_roll] <;> dsimp [Cofix.corec']
  · mv_bisim i with R a b x Ha Hb
    rw [Ha, Hb, Cofix.dest_corec]
    dsimp [Function.comp]
    repeat rw [MvFunctor.map_map, ← appendFun_comp_id]
    apply liftR_map_last'
    dsimp [Function.comp]
    intros
    exact ⟨_, rfl, rfl⟩
  · congr with y
    erw [appendFun_id_id]
    simp [MvFunctor.id_map, Sum.elim]
#align mvqpf.cofix.dest_corec' MvQPF.Cofix.dest_corec'

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cofix/Variantfae555b46544b20c6a2e8e5260e8e42d5bb0c199f7ff8b0439b834271c5a517d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cofix/Variantfae555b46544b20c6a2e8e5260e8e42d5bb0c199f7ff8b0439b834271c5a517d.lean#L529).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `781048609589e8b637ca09908bfae93fa10a33e5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
