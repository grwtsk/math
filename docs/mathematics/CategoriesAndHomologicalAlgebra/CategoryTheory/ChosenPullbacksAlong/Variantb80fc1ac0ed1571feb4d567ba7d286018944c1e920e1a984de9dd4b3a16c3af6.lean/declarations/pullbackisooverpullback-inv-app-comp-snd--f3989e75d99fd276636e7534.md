# pullbackIsoOverPullback_inv_app_comp_snd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "96ef2d048ee4ffb7539a7ff63298136f847448c5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 368,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b8/b80fc1ac0ed1571feb4d567ba7d286018944c1e920e1a984de9dd4b3a16c3af6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ecac23d0-adbd-8798-956e-cb3b3ff7dcfa",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:feca0ec0-ccda-a09b-b256-2a4b370202d7",
  "kind": "theorem",
  "lexical_name": "pullbackIsoOverPullback_inv_app_comp_snd",
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
  "slug": "pullbackisooverpullback-inv-app-comp-snd--f3989e75d99fd276636e7534",
  "source": {
    "blob": "96ef2d048ee4ffb7539a7ff63298136f847448c5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 376,
    "line": 368,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ChosenPullbacksAlong/Variantb80fc1ac0ed1571feb4d567ba7d286018944c1e920e1a984de9dd4b3a16c3af6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f3989e75d99fd276636e7534817b521860c80af9be70ac1d6f3bd031367b5238",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ChosenPullbacksAlong/Variantb80fc1ac0ed1571feb4d567ba7d286018944c1e920e1a984de9dd4b3a16c3af6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:feca0ec0-ccda-a09b-b256-2a4b370202d7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 368–376.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pullbackIsoOverPullback_inv_app_comp_snd (T : Over X) :
    ((pullbackIsoOverPullback g).inv.app T).left ≫ snd _ _ = pullback.snd _ _ :=
  Over.w ((pullbackIsoOverPullback g).inv.app T)

end PullbackFromChosenPullbacksAlongs

end ChosenPullbacksAlong

end CategoryTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ChosenPullbacksAlong/Variantb80fc1ac0ed1571feb4d567ba7d286018944c1e920e1a984de9dd4b3a16c3af6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ChosenPullbacksAlong/Variantb80fc1ac0ed1571feb4d567ba7d286018944c1e920e1a984de9dd4b3a16c3af6.lean#L368).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `96ef2d048ee4ffb7539a7ff63298136f847448c5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
