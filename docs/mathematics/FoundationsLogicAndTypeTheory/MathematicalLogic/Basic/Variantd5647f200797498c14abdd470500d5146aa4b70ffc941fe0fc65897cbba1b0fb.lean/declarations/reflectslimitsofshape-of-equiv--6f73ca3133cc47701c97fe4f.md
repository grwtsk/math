# reflectsLimitsOfShape_of_equiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "21df45487c2d8a99162d7867f9050856863f14a3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 732,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d5/d5647f200797498c14abdd470500d5146aa4b70ffc941fe0fc65897cbba1b0fb.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a0fa2acd-61f1-322b-fe16-f38cdfb9ed6e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c77c7979-e988-a370-f09f-a2ad6bc7bd9c",
  "kind": "lemma",
  "lexical_name": "reflectsLimitsOfShape_of_equiv",
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
  "slug": "reflectslimitsofshape-of-equiv--6f73ca3133cc47701c97fe4f",
  "source": {
    "blob": "21df45487c2d8a99162d7867f9050856863f14a3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 741,
    "line": 732,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantd5647f200797498c14abdd470500d5146aa4b70ffc941fe0fc65897cbba1b0fb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6f73ca3133cc47701c97fe4f0de8ae9f180e041176c9053cc325434aad538357",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantd5647f200797498c14abdd470500d5146aa4b70ffc941fe0fc65897cbba1b0fb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c77c7979-e988-a370-f09f-a2ad6bc7bd9c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 732–741.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma reflectsLimitsOfShape_of_equiv {J' : Type w₂} [Category.{w₂'} J'] (e : J ≌ J') (F : C ⥤ D)
    [ReflectsLimitsOfShape J F] : ReflectsLimitsOfShape J' F where
  reflectsLimit {K} :=
    { reflects := fun {c} t => ⟨by
        apply IsLimit.ofWhiskerEquivalence e
        apply isLimitOfReflects F
        apply IsLimit.ofIsoLimit _ (Functor.mapConeWhisker _).symm
        exact IsLimit.whiskerEquivalence t _⟩ }

@[deprecated "use reflectsLimitsOfShape_of_equiv" (since := "2024-11-19")]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantd5647f200797498c14abdd470500d5146aa4b70ffc941fe0fc65897cbba1b0fb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantd5647f200797498c14abdd470500d5146aa4b70ffc941fe0fc65897cbba1b0fb.lean#L732).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `21df45487c2d8a99162d7867f9050856863f14a3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
