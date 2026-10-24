# Cotangent.map_toInfinitesimal_bijective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8496d5bf06be1bc55372ba850642e28cd2a8607f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 495,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/08/08a69c5040a530d08b778d817e888c0dd4bf537efb7fdd4feaad3598d52fe2cd.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:05c525b2-ebb1-d07d-71bc-c9e07cd1cc1e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4d0fb4ea-d370-3e6a-2e3c-7b62a29fad60",
  "kind": "lemma",
  "lexical_name": "Cotangent.map_toInfinitesimal_bijective",
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
  "slug": "cotangent-map-toinfinitesimal-bijective--b5a3804a781bb2e0b2c286fb",
  "source": {
    "blob": "8496d5bf06be1bc55372ba850642e28cd2a8607f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 515,
    "line": 495,
    "path": "GRWTSK/Algebra/Kaehler/Variant08a69c5040a530d08b778d817e888c0dd4bf537efb7fdd4feaad3598d52fe2cd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b5a3804a781bb2e0b2c286fbef46bbd59a5db00fa0d7c8dc568fdcc53319ef7c",
  "verification": {
    "reference": "docs/verification/Algebra/Kaehler/Variant08a69c5040a530d08b778d817e888c0dd4bf537efb7fdd4feaad3598d52fe2cd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4d0fb4ea-d370-3e6a-2e3c-7b62a29fad60`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 495–515.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Cotangent.map_toInfinitesimal_bijective (P : Extension.{u} R S) :
    Function.Bijective (Cotangent.map P.toInfinitesimal) := by
  constructor
  · rw [injective_iff_map_eq_zero]
    intro x hx
    obtain ⟨x, rfl⟩ := Cotangent.mk_surjective x
    have hx : x.1 ∈ P.ker ^ 2 := by
      apply_fun Cotangent.val at hx
      simp only [map_mk, Hom.toAlgHom_apply, val_mk, val_zero, Ideal.toCotangent_eq_zero,
        Extension.ker_infinitesimal] at hx
      rw [Ideal.cotangentIdeal_square] at hx
      simpa only [toInfinitesimal, Ideal.mem_bot, infinitesimal,
        Ideal.Quotient.eq_zero_iff_mem] using hx
    ext
    simpa [Ideal.toCotangent_eq_zero]
  · intro x
    obtain ⟨⟨x, hx⟩, rfl⟩ := Cotangent.mk_surjective x
    obtain ⟨x, rfl⟩ := Ideal.Quotient.mk_surjective x
    rw [ker_infinitesimal, Ideal.mk_mem_cotangentIdeal] at hx
    exact ⟨.mk ⟨x, hx⟩, rfl⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Kaehler/Variant08a69c5040a530d08b778d817e888c0dd4bf537efb7fdd4feaad3598d52fe2cd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Kaehler/Variant08a69c5040a530d08b778d817e888c0dd4bf537efb7fdd4feaad3598d52fe2cd.lean#L495).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8496d5bf06be1bc55372ba850642e28cd2a8607f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
