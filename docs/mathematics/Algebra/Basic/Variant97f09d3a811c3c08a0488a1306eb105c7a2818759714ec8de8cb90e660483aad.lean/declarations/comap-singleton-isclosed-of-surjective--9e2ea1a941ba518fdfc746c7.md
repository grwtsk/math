# comap_singleton_isClosed_of_surjective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "cd06134b7ffd366969ade86989120a086daa99dc",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 628,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/97/97f09d3a811c3c08a0488a1306eb105c7a2818759714ec8de8cb90e660483aad.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:262b3a58-d30d-267c-8cd4-bf9c937d89c6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:48ca2f11-56b8-e11b-ba5f-a8df79943eb8",
  "kind": "theorem",
  "lexical_name": "comap_singleton_isClosed_of_surjective",
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
  "slug": "comap-singleton-isclosed-of-surjective--9e2ea1a941ba518fdfc746c7",
  "source": {
    "blob": "cd06134b7ffd366969ade86989120a086daa99dc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 634,
    "line": 628,
    "path": "GRWTSK/Algebra/Basic/Variant97f09d3a811c3c08a0488a1306eb105c7a2818759714ec8de8cb90e660483aad.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9e2ea1a941ba518fdfc746c7ad6e320284b2c4726e6074683b2ebaf42fdc1f68",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variant97f09d3a811c3c08a0488a1306eb105c7a2818759714ec8de8cb90e660483aad.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:48ca2f11-56b8-e11b-ba5f-a8df79943eb8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 628–634.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem comap_singleton_isClosed_of_surjective (f : R →+* S) (hf : Function.Surjective f)
    (x : PrimeSpectrum S) (hx : IsClosed ({x} : Set (PrimeSpectrum S))) :
    IsClosed ({comap f x} : Set (PrimeSpectrum R)) :=
  haveI : x.asIdeal.IsMaximal := (isClosed_singleton_iff_isMaximal x).1 hx
  (isClosed_singleton_iff_isMaximal _).2 (Ideal.comap_isMaximal_of_surjective f hf)
#align prime_spectrum.comap_singleton_is_closed_of_surjective PrimeSpectrum.comap_singleton_isClosed_of_surjective

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variant97f09d3a811c3c08a0488a1306eb105c7a2818759714ec8de8cb90e660483aad.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variant97f09d3a811c3c08a0488a1306eb105c7a2818759714ec8de8cb90e660483aad.lean#L628).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cd06134b7ffd366969ade86989120a086daa99dc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
