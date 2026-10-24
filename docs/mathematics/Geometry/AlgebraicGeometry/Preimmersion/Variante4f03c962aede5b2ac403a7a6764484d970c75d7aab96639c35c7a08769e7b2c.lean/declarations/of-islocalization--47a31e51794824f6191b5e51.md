# of_isLocalization

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9c178b890141492bb4b4166a7f026c1f0a942b95",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 92,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e4/e4f03c962aede5b2ac403a7a6764484d970c75d7aab96639c35c7a08769e7b2c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2d49f2a3-bea5-884d-d1be-862404ef94b3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:442bd939-1ba0-0702-568d-b068aee7ad4d",
  "kind": "lemma",
  "lexical_name": "of_isLocalization",
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
  "slug": "of-islocalization--47a31e51794824f6191b5e51",
  "source": {
    "blob": "9c178b890141492bb4b4166a7f026c1f0a942b95",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 99,
    "line": 92,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Preimmersion/Variante4f03c962aede5b2ac403a7a6764484d970c75d7aab96639c35c7a08769e7b2c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:47a31e51794824f6191b5e5157161ce5579bf77576f8da218494183fdba82d75",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Preimmersion/Variante4f03c962aede5b2ac403a7a6764484d970c75d7aab96639c35c7a08769e7b2c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:442bd939-1ba0-0702-568d-b068aee7ad4d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 92–99.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma of_isLocalization {R S : Type u} [CommRing R] (M : Submonoid R) [CommRing S]
    [Algebra R S] [IsLocalization M S] :
    IsPreimmersion (Spec.map (CommRingCat.ofHom <| algebraMap R S)) :=
  IsPreimmersion.mk_Spec_map
    (PrimeSpectrum.localization_comap_isEmbedding (R := R) S M)
    (RingHom.surjectiveOnStalks_of_isLocalization (M := M) S)

open Limits MorphismProperty in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Preimmersion/Variante4f03c962aede5b2ac403a7a6764484d970c75d7aab96639c35c7a08769e7b2c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Preimmersion/Variante4f03c962aede5b2ac403a7a6764484d970c75d7aab96639c35c7a08769e7b2c.lean#L92).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9c178b890141492bb4b4166a7f026c1f0a942b95` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
