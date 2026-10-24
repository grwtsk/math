# mul_hatInv_cancel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "29357e36903c9043687627edefc84cc323ef6eea",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 121,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9d/9dc85c9bfd9ce09ddb80bc5475f3e30443632fc4565689f16a0e44d4a9a52c3a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:09dbbbe3-f986-00bb-1a6d-a662a5358223",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e7292fdb-dd0e-13e8-35e3-67163adc6640",
  "kind": "theorem",
  "lexical_name": "mul_hatInv_cancel",
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
  "slug": "mul-hatinv-cancel--751638d4325f979b2f4ea236",
  "source": {
    "blob": "29357e36903c9043687627edefc84cc323ef6eea",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 146,
    "line": 121,
    "path": "GRWTSK/Topology/GeneralTopology/UniformField/Variant9dc85c9bfd9ce09ddb80bc5475f3e30443632fc4565689f16a0e44d4a9a52c3a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:751638d4325f979b2f4ea23681a7ac136c6d5fc58ff868080900987479452184",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UniformField/Variant9dc85c9bfd9ce09ddb80bc5475f3e30443632fc4565689f16a0e44d4a9a52c3a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e7292fdb-dd0e-13e8-35e3-67163adc6640`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 121–146.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mul_hatInv_cancel {x : hat K} (x_ne : x ≠ 0) : x * hatInv x = 1 := by
  haveI : T1Space (hat K) := T2Space.t1Space
  let f := fun x : hat K => x * hatInv x
  let c := (fun (x : K) => (x : hat K))
  change f x = 1
  have cont : ContinuousAt f x := by
    fun_prop (disch := assumption)
  have clo : x ∈ closure (c '' {0}ᶜ) := by
    have := isDenseInducing_coe.dense x
    rw [← image_univ, show (univ : Set K) = {0} ∪ {0}ᶜ from (union_compl_self _).symm,
      image_union] at this
    apply mem_closure_of_mem_closure_union this
    rw [image_singleton]
    exact compl_singleton_mem_nhds x_ne
  have fxclo : f x ∈ closure (f '' (c '' {0}ᶜ)) := mem_closure_image cont clo
  have : f '' (c '' {0}ᶜ) ⊆ {1} := by
    rw [image_image]
    rintro _ ⟨z, z_ne, rfl⟩
    rw [mem_singleton_iff]
    rw [mem_compl_singleton_iff] at z_ne
    dsimp [f]
    rw [hatInv_extends z_ne, ← coe_mul]
    rw [mul_inv_cancel₀ z_ne, coe_one]
  replace fxclo := closure_mono this fxclo
  rwa [closure_singleton, mem_singleton_iff] at fxclo

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/UniformField/Variant9dc85c9bfd9ce09ddb80bc5475f3e30443632fc4565689f16a0e44d4a9a52c3a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UniformField/Variant9dc85c9bfd9ce09ddb80bc5475f3e30443632fc4565689f16a0e44d4a9a52c3a.lean#L121).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `29357e36903c9043687627edefc84cc323ef6eea` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
