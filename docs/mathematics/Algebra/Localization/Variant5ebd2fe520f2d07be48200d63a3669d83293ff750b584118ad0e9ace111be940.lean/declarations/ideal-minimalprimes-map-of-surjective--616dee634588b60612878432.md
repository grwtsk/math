# Ideal.minimalPrimes_map_of_surjective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0ae9893769208e82340e9928cf4a95e17b59eb4d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 140,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5e/5ebd2fe520f2d07be48200d63a3669d83293ff750b584118ad0e9ace111be940.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:def3b7f6-9d3c-65fa-8bf0-7892188e9232",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:15b9edbd-8db3-567e-8775-ceb33e3a1ac2",
  "kind": "lemma",
  "lexical_name": "Ideal.minimalPrimes_map_of_surjective",
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
  "slug": "ideal-minimalprimes-map-of-surjective--616dee634588b60612878432",
  "source": {
    "blob": "0ae9893769208e82340e9928cf4a95e17b59eb4d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 148,
    "line": 140,
    "path": "GRWTSK/Algebra/Localization/Variant5ebd2fe520f2d07be48200d63a3669d83293ff750b584118ad0e9ace111be940.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:616dee634588b60612878432a1b388ca7a1a391f1ade2df3062e893db9449ae8",
  "verification": {
    "reference": "docs/verification/Algebra/Localization/Variant5ebd2fe520f2d07be48200d63a3669d83293ff750b584118ad0e9ace111be940.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:15b9edbd-8db3-567e-8775-ceb33e3a1ac2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 140–148.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Ideal.minimalPrimes_map_of_surjective {S : Type*} [CommRing S] {f : R →+* S}
    (hf : Function.Surjective f) (I : Ideal R) :
    (I.map f).minimalPrimes = Ideal.map f '' (I ⊔ (RingHom.ker f)).minimalPrimes := by
  apply Set.image_injective.mpr (Ideal.comap_injective_of_surjective f hf)
  rw [← Ideal.comap_minimalPrimes_eq_of_surjective hf, ← Set.image_comp,
    Ideal.comap_map_of_surjective f hf, Set.image_congr, Set.image_id, RingHom.ker]
  intro x hx
  exact (Ideal.comap_map_of_surjective f hf _).trans (sup_eq_left.mpr <| le_sup_right.trans hx.1.2)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Localization/Variant5ebd2fe520f2d07be48200d63a3669d83293ff750b584118ad0e9ace111be940.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Localization/Variant5ebd2fe520f2d07be48200d63a3669d83293ff750b584118ad0e9ace111be940.lean#L140).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0ae9893769208e82340e9928cf4a95e17b59eb4d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
