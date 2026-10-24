# fg_of_localizationSpan

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "984d576665a5a281ef0cd1e61755a2adc0891932",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 164,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a4/a4d890d73bbb0083d7ec3ffd8ae14056837eca61486e78df2b65f4d9fcd99bd3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:68cfcebb-7a14-e388-e58f-4b57e9e1c95d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ae6aaca2-a1b2-7739-730e-b97218624bc5",
  "kind": "lemma",
  "lexical_name": "fg_of_localizationSpan",
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
  "slug": "fg-of-localizationspan--a395ec36885d2cc3e07ce1f8",
  "source": {
    "blob": "984d576665a5a281ef0cd1e61755a2adc0891932",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 178,
    "line": 164,
    "path": "GRWTSK/Algebra/Finiteness/Varianta4d890d73bbb0083d7ec3ffd8ae14056837eca61486e78df2b65f4d9fcd99bd3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a395ec36885d2cc3e07ce1f8e4cf06fd5b288e87a6af783656c21a1a20fb456e",
  "verification": {
    "reference": "docs/verification/Algebra/Finiteness/Varianta4d890d73bbb0083d7ec3ffd8ae14056837eca61486e78df2b65f4d9fcd99bd3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ae6aaca2-a1b2-7739-730e-b97218624bc5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 164–178.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma fg_of_localizationSpan {I : Ideal R} (t : Set R) (ht : Ideal.span t = ⊤)
    (H : ∀ (g : t), (I.map (algebraMap R (Localization.Away g.val))).FG) : I.FG := by
  apply Module.Finite.iff_fg.mp
  let k (g : t) : I →ₗ[R] (I.map (algebraMap R (Localization.Away g.val))) :=
    Algebra.idealMap I (S := Localization.Away g.val)
  exact Module.Finite.of_localizationSpan' t ht k (fun g ↦ Module.Finite.iff_fg.mpr (H g))

end Ideal

variable {R : Type u} [CommRing R] {S : Type v} [CommRing S] {f : R →+* S}

/--
To check that the kernel of a ring homomorphism is finitely generated,
it suffices to check this after localizing at a spanning set of the source.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Finiteness/Varianta4d890d73bbb0083d7ec3ffd8ae14056837eca61486e78df2b65f4d9fcd99bd3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Finiteness/Varianta4d890d73bbb0083d7ec3ffd8ae14056837eca61486e78df2b65f4d9fcd99bd3.lean#L164).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `984d576665a5a281ef0cd1e61755a2adc0891932` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
