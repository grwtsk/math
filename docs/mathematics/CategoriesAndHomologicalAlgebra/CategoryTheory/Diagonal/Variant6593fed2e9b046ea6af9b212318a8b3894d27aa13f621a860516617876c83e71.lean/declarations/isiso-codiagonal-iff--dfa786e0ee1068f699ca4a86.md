# isIso_codiagonal_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:070a7ee7-e472-cf61-26ac-29819e72125d",
  "kind": "lemma",
  "lexical_name": "isIso_codiagonal_iff",
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
  "slug": "isiso-codiagonal-iff--dfa786e0ee1068f699ca4a86",
  "source": {
    "blob": "d73412922321288c4f17e47bc4ab4563d9986e50",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 581,
    "line": 563,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Diagonal/Variant6593fed2e9b046ea6af9b212318a8b3894d27aa13f621a860516617876c83e71.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dfa786e0ee1068f699ca4a863bd630a3fcd08e398ba5bb4097660a4ef27e2983",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Diagonal/Variant6593fed2e9b046ea6af9b212318a8b3894d27aa13f621a860516617876c83e71.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:070a7ee7-e472-cf61-26ac-29819e72125d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 563–581.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
lemma isIso_codiagonal_iff : IsIso (codiagonal f) ↔ Epi f :=
  ⟨fun H ↦ ⟨fun _ _ e ↦ by rw [← inl_desc _ _ e, (cancel_mono (g := inl f f) (h := inr f f)
    (codiagonal f)).mp (by simp), inr_desc]⟩, fun _ ↦ inferInstance⟩

end pushout

variable [HasPushouts C]

/--
Given `f : T ⟶ X`, `g : T ⟶ Y`, and `i : S ⟶ T`, the diagram
```
X ⨿ₛ Y ⟶ X ⨿ₜ Y
  ↑        ↑
  |        |
  |        |
T ⨿ₛ T  ⟶  T
```
is a pushout square.
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Diagonal/Variant6593fed2e9b046ea6af9b212318a8b3894d27aa13f621a860516617876c83e71.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Diagonal/Variant6593fed2e9b046ea6af9b212318a8b3894d27aa13f621a860516617876c83e71.lean#L563).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d73412922321288c4f17e47bc4ab4563d9986e50` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
