# comap_comapₐ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ceade86412c40fc87daf1c0326e113e404ab6857",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 155,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d7/d712655ba919d0beaca1d8d0dfad17a129b4e87acd4ff812d0a343d112aad3df.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:540cb415-b7b1-d737-01dc-461461fc5bb0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6c896b69-bd4a-600f-8969-42d0d3640186",
  "kind": "lemma",
  "lexical_name": "comap_comapₐ",
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
  "slug": "comap-comap--103306f878f751cb4ccf16f7",
  "source": {
    "blob": "ceade86412c40fc87daf1c0326e113e404ab6857",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 159,
    "line": 155,
    "path": "GRWTSK/Algebra/Maps/Variantd712655ba919d0beaca1d8d0dfad17a129b4e87acd4ff812d0a343d112aad3df.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:103306f878f751cb4ccf16f73d444b5ed99b8eb8e5b2c8191622a28977bf4df7",
  "verification": {
    "reference": "docs/verification/Algebra/Maps/Variantd712655ba919d0beaca1d8d0dfad17a129b4e87acd4ff812d0a343d112aad3df.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6c896b69-bd4a-600f-8969-42d0d3640186`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 155–159.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma comap_comapₐ {R A B C : Type*} [CommSemiring R] [Semiring A] [Algebra R A] [Semiring B]
    [Algebra R B] [Semiring C] [Algebra R C] {I : Ideal C} (f : A →ₐ[R] B) (g : B →ₐ[R] C) :
    (I.comap g).comap f = I.comap (g.comp f) :=
  I.comap_comap f.toRingHom g.toRingHom

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Maps/Variantd712655ba919d0beaca1d8d0dfad17a129b4e87acd4ff812d0a343d112aad3df.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Maps/Variantd712655ba919d0beaca1d8d0dfad17a129b4e87acd4ff812d0a343d112aad3df.lean#L155).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ceade86412c40fc87daf1c0326e113e404ab6857` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
