# effectiveEpiFamily_tfae

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "98401847726955dac586648fd184d8aef4e68576",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 74,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1b/1bcba469eab0def44799ae0439971715b00e7a256d7817dbb09aada6cbcfa59f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6891c13a-b616-e13a-64de-6c3c14a6d9ea",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c9175f55-ea11-2238-fd1b-e6e9e06256ed",
  "kind": "theorem",
  "lexical_name": "effectiveEpiFamily_tfae",
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
  "slug": "effectiveepifamily-tfae--207067b2d659d6d063b725d6",
  "source": {
    "blob": "98401847726955dac586648fd184d8aef4e68576",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 92,
    "line": 74,
    "path": "GRWTSK/Topology/GeneralTopology/EffectiveEpi/Variant1bcba469eab0def44799ae0439971715b00e7a256d7817dbb09aada6cbcfa59f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:207067b2d659d6d063b725d6a26be8c394b7d32a54a84cee37fe34cf9f0b74b3",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/EffectiveEpi/Variant1bcba469eab0def44799ae0439971715b00e7a256d7817dbb09aada6cbcfa59f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c9175f55-ea11-2238-fd1b-e6e9e06256ed`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 74–92.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem effectiveEpiFamily_tfae
    {α : Type} [Finite α] {B : Profinite.{u}}
    (X : α → Profinite.{u}) (π : (a : α) → (X a ⟶ B)) :
    TFAE
    [ EffectiveEpiFamily X π
    , Epi (Sigma.desc π)
    , ∀ b : B, ∃ (a : α) (x : X a), π a x = b
    ] := by
  tfae_have 2 → 1
  | _ => by
    simpa [← effectiveEpi_desc_iff_effectiveEpiFamily, (effectiveEpi_tfae (Sigma.desc π)).out 1 2]
  tfae_have 1 → 2 := fun _ ↦ inferInstance
  tfae_have 3 ↔ 1 := by
    erw [((CompHaus.effectiveEpiFamily_tfae
      (fun a ↦ profiniteToCompHaus.obj (X a)) (fun a ↦ profiniteToCompHaus.map (π a))).out 3 1 :)]
    exact ⟨fun h ↦ profiniteToCompHaus.finite_effectiveEpiFamily_of_map _ _ h,
      fun _ ↦ inferInstance⟩
  tfae_finish

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/EffectiveEpi/Variant1bcba469eab0def44799ae0439971715b00e7a256d7817dbb09aada6cbcfa59f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/EffectiveEpi/Variant1bcba469eab0def44799ae0439971715b00e7a256d7817dbb09aada6cbcfa59f.lean#L74).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `98401847726955dac586648fd184d8aef4e68576` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
