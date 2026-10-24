# IsArtinian.isSemisimpleModule_iff_jacobson

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "372cb98a86e1f2a22d40570e6ef1080fb58cd1bd",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 287,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f8/f8a34290e7b4713c5518c74262aa41fd5901dfd2f38ee8ad9bc30a6a46edb05d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9f3ba460-ccf4-2b2e-5cf2-0a35647084e3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8fb4d6c2-737b-a41b-35e5-aa26964f299c",
  "kind": "theorem",
  "lexical_name": "IsArtinian.isSemisimpleModule_iff_jacobson",
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
  "slug": "isartinian-issemisimplemodule-iff-jacobson--3c1e861b6678b05ce675ee00",
  "source": {
    "blob": "372cb98a86e1f2a22d40570e6ef1080fb58cd1bd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 305,
    "line": 287,
    "path": "GRWTSK/Algebra/Module/Variantf8a34290e7b4713c5518c74262aa41fd5901dfd2f38ee8ad9bc30a6a46edb05d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3c1e861b6678b05ce675ee00f8c963067dcfc4ac0a5d2cabe759c5ee633e3b2d",
  "verification": {
    "reference": "docs/verification/Algebra/ModuleTheory/Variantf8a34290e7b4713c5518c74262aa41fd5901dfd2f38ee8ad9bc30a6a46edb05d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8fb4d6c2-737b-a41b-35e5-aa26964f299c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 287–305.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsArtinian.isSemisimpleModule_iff_jacobson [IsArtinian R M] :
    IsSemisimpleModule R M ↔ Module.jacobson R M = ⊥ :=
  ⟨fun _ ↦ IsSemisimpleModule.jacobson_eq_bot R M, fun h ↦
    have ⟨s, hs⟩ := Finset.exists_inf_le (Subtype.val (p := fun m : Submodule R M ↦ IsCoatom m))
    have _ (m : s) : IsSimpleModule R (M ⧸ m.1.1) := isSimpleModule_iff_isCoatom.mpr m.1.2
    let f : M →ₗ[R] ∀ m : s, M ⧸ m.1.1 := LinearMap.pi fun m ↦ m.1.1.mkQ
    .of_injective f <| LinearMap.ker_eq_bot.mp <| le_bot_iff.mp fun x hx ↦ by
      rw [← h, Module.jacobson, Submodule.mem_sInf]
      exact fun m hm ↦ hs ⟨m, hm⟩ <| Submodule.mem_finset_inf.mpr fun i hi ↦
        (Submodule.Quotient.mk_eq_zero i.1).mp <| congr_fun hx ⟨i, hi⟩⟩

open Submodule Function

namespace LinearMap

variable [IsArtinian R M]

/-- For any endomorphism of an Artinian module, any sufficiently high iterate has codisjoint kernel
and range. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/ModuleTheory/Variantf8a34290e7b4713c5518c74262aa41fd5901dfd2f38ee8ad9bc30a6a46edb05d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Module/Variantf8a34290e7b4713c5518c74262aa41fd5901dfd2f38ee8ad9bc30a6a46edb05d.lean#L287).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `372cb98a86e1f2a22d40570e6ef1080fb58cd1bd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
