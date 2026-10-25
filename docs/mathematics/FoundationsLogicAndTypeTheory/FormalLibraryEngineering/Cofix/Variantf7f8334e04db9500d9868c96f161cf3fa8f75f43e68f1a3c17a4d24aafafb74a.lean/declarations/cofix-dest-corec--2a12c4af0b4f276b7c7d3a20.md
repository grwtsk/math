# Cofix.dest_corec'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f6d0902d-1ca5-1160-55ce-5f401711176b",
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
  "slug": "cofix-dest-corec--2a12c4af0b4f276b7c7d3a20",
  "source": {
    "blob": "6da5cafe59314ad6223cbcf5d1aa599d6bf55fa8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 555,
    "line": 537,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cofix/Variantf7f8334e04db9500d9868c96f161cf3fa8f75f43e68f1a3c17a4d24aafafb74a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2a12c4af0b4f276b7c7d3a20e88f003272d1a51cf870f149ca57a1df33cb0a19",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cofix/Variantf7f8334e04db9500d9868c96f161cf3fa8f75f43e68f1a3c17a4d24aafafb74a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f6d0902d-1ca5-1160-55ce-5f401711176b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 537–555.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cofix/Variantf7f8334e04db9500d9868c96f161cf3fa8f75f43e68f1a3c17a4d24aafafb74a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cofix/Variantf7f8334e04db9500d9868c96f161cf3fa8f75f43e68f1a3c17a4d24aafafb74a.lean#L537).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6da5cafe59314ad6223cbcf5d1aa599d6bf55fa8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
