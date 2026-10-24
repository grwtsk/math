# BinaryCofan.mono_inr_of_isVanKampen

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3a4991374a771c850642dcbc1fdc2e28712742f0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 230,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/94/9481606e481ec2ad8331180c9ae53031b3f739ed7b3f3a066b7f9af1c401af46.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:be3097d4-4755-9bee-9304-b45f6bfd67ab",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:cb201f35-9c39-56da-7fbc-2ce5d7d8877b",
  "kind": "theorem",
  "lexical_name": "BinaryCofan.mono_inr_of_isVanKampen",
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
  "slug": "binarycofan-mono-inr-of-isvankampen--4e25541d588e09ba90ba8569",
  "source": {
    "blob": "3a4991374a771c850642dcbc1fdc2e28712742f0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 240,
    "line": 230,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Extensive/Variant9481606e481ec2ad8331180c9ae53031b3f739ed7b3f3a066b7f9af1c401af46.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4e25541d588e09ba90ba85697278cbe9ec188f4a93aa1b583ac933a3bb6f0962",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Extensive/Variant9481606e481ec2ad8331180c9ae53031b3f739ed7b3f3a066b7f9af1c401af46.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cb201f35-9c39-56da-7fbc-2ce5d7d8877b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 230–240.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem BinaryCofan.mono_inr_of_isVanKampen [HasInitial C] {X Y : C} {c : BinaryCofan X Y}
    (h : IsVanKampenColimit c) : Mono c.inr := by
  refine' PullbackCone.mono_of_isLimitMkIdId _ (IsPullback.isLimit _)
  refine' (h (BinaryCofan.mk (initial.to Y) (𝟙 Y)) (mapPair (initial.to X) (𝟙 Y)) c.inr _
      (mapPair_equifibered _)).mp ⟨_⟩ ⟨WalkingPair.right⟩
  · ext ⟨⟨⟩⟩ <;> dsimp; simp
  · exact ((BinaryCofan.isColimit_iff_isIso_inr initialIsInitial _).mpr (by
      dsimp
      infer_instance)).some
#align category_theory.binary_cofan.mono_inr_of_is_van_kampen CategoryTheory.BinaryCofan.mono_inr_of_isVanKampen

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Extensive/Variant9481606e481ec2ad8331180c9ae53031b3f739ed7b3f3a066b7f9af1c401af46.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Extensive/Variant9481606e481ec2ad8331180c9ae53031b3f739ed7b3f3a066b7f9af1c401af46.lean#L230).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3a4991374a771c850642dcbc1fdc2e28712742f0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
