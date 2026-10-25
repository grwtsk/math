# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a9aa34533960f8eeb6ba97ab3f7a0b5635cac3278db7a2fb68c33917e8c3d200",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--76ea01eb9a258cf93dab5d12",
  "source": {
    "blob": "f552c724111d0d844b28249e77a93cd0ce497af5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 481,
    "line": 469,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HetT/Variantb57350387e416e164455958abf2b5b9152588ff8a97472e613adec112143a01f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:76ea01eb9a258cf93dab5d12e02ff2394216e88019a6f469377cb593ece09405",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HetT/Variantb57350387e416e164455958abf2b5b9152588ff8a97472e613adec112143a01f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a9aa34533960f8eeb6ba97ab3f7a0b5635cac3278db7a2fb68c33917e8c3d200`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 469–481.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance [Monad m] [LawfulMonad m] : LawfulMonad (HetT m) where
  map_const {α β} := by ext a x; simp [Functor.mapConst, Functor.map]
  id_map {α} x := by simp [Functor.map]
  comp_map {α β γ} g h := by intro x; simp [Functor.map, HetT.ext_iff];
  seqLeft_eq {α β} x y := by simp [SeqLeft.seqLeft, Functor.map, Seq.seq, HetT.ext_iff];
  seqRight_eq {α β} x y := by simp [Seq.seq, SeqRight.seqRight, Functor.map]
  pure_seq g x := by simp [Seq.seq, Functor.map, Pure.pure]
  bind_pure_comp f x := by simp [Functor.map, Bind.bind, Pure.pure, HetT.ext_iff]
  bind_map f x := by simp [Seq.seq, Functor.map, Bind.bind]
  pure_bind x f := HetT.pure_bind
  bind_assoc x f g := HetT.bind_assoc

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HetT/Variantb57350387e416e164455958abf2b5b9152588ff8a97472e613adec112143a01f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HetT/Variantb57350387e416e164455958abf2b5b9152588ff8a97472e613adec112143a01f.lean#L469).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f552c724111d0d844b28249e77a93cd0ce497af5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
