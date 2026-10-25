# liftR_map_last'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "625b87ba6a7606e1d2ba7461a3fd256ee8291982",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 389,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d5/d56152c2a0c4ad37c8a5abd7eb2f42f9166d0bc1a42f50630c342a6c28383ec8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c796828e-c223-66d1-d6f4-3304a7c73e9b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:25cd261d-b279-914b-7d02-3977a19cc6dd",
  "kind": "theorem",
  "lexical_name": "liftR_map_last'",
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
  "slug": "liftr-map-last--12c755a054b61d1c9572bd5b",
  "source": {
    "blob": "625b87ba6a7606e1d2ba7461a3fd256ee8291982",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 397,
    "line": 389,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cofix/Variantd56152c2a0c4ad37c8a5abd7eb2f42f9166d0bc1a42f50630c342a6c28383ec8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:12c755a054b61d1c9572bd5bf70f0e116991000b774d1befa51a5010907d6936",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cofix/Variantd56152c2a0c4ad37c8a5abd7eb2f42f9166d0bc1a42f50630c342a6c28383ec8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:25cd261d-b279-914b-7d02-3977a19cc6dd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 389–397.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem liftR_map_last' [LawfulMvFunctor F] {α : TypeVec n} {ι} (R : ι → ι → Prop) (x : F (α ::: ι))
    (f : ι → ι) (hh : ∀ x : ι, R (f x) x) : LiftR' (RelLast' _ R) ((id ::: f) <$$> x) x := by
  have := liftR_map_last R x f id hh
  rwa [appendFun_id_id, MvFunctor.id_map] at this

end LiftRMap

variable {F : TypeVec (n + 1) → Type u} [q : MvQPF F]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cofix/Variantd56152c2a0c4ad37c8a5abd7eb2f42f9166d0bc1a42f50630c342a6c28383ec8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cofix/Variantd56152c2a0c4ad37c8a5abd7eb2f42f9166d0bc1a42f50630c342a6c28383ec8.lean#L389).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `625b87ba6a7606e1d2ba7461a3fd256ee8291982` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
