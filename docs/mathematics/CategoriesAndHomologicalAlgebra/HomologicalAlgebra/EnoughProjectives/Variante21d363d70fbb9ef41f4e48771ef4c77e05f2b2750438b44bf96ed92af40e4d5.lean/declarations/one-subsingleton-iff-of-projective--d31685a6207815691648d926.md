# one_subsingleton_iff_of_projective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:65453539-c3ee-c53a-76dd-16d6a249c031",
  "kind": "lemma",
  "lexical_name": "one_subsingleton_iff_of_projective",
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
  "slug": "one-subsingleton-iff-of-projective--d31685a6207815691648d926",
  "source": {
    "blob": "2ff37a555e13feb4bfe499faeb2c6c1c704a5081",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 144,
    "line": 121,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/EnoughProjectives/Variante21d363d70fbb9ef41f4e48771ef4c77e05f2b2750438b44bf96ed92af40e4d5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d31685a6207815691648d926e4ff01d8307e127489480477465726d088803e4d",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/EnoughProjectives/Variante21d363d70fbb9ef41f4e48771ef4c77e05f2b2750438b44bf96ed92af40e4d5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:65453539-c3ee-c53a-76dd-16d6a249c031`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 121–144.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma one_subsingleton_iff_of_projective [HasExt.{w} C] (X : C)
    (S : ShortComplex C) (S_exact : S.ShortExact) (proj : Projective S.X₂) :
    Subsingleton (Ext S.X₃ X 1) ↔
      Function.Surjective ((Ext.mk₀ S.f).precomp X (add_zero 0)) := by
  refine ⟨fun h x₁ ↦ Ext.contravariant_sequence_exact₁ S_exact _ x₁ (add_zero _)
    (by subsingleton), fun h ↦ subsingleton_of_forall_eq 0 (fun x₃ ↦ ?_)⟩
  obtain ⟨x₁, rfl⟩ := Ext.contravariant_sequence_exact₃ S_exact _ x₃
    (by subsingleton) (add_zero 1)
  obtain ⟨x₂, rfl⟩ := h x₁
  simp

end Abelian.Ext

variable (C)

open Abelian

/-- If `C` is a locally `w`-small abelian category with enough projectives,
then `HasExt.{w} C` holds. We do not make this an instance though:
for a given category `C`, there may be different reasonable choices for
the universe `w`, and if we have two `HasExt.{w₁} C` and `HasExt.{w₂} C`
instances, we would have to specify the universe explicitly almost
everywhere, which would be an inconvenience. Then, we must be
very selective regarding `HasExt` instances. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/EnoughProjectives/Variante21d363d70fbb9ef41f4e48771ef4c77e05f2b2750438b44bf96ed92af40e4d5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/EnoughProjectives/Variante21d363d70fbb9ef41f4e48771ef4c77e05f2b2750438b44bf96ed92af40e4d5.lean#L121).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2ff37a555e13feb4bfe499faeb2c6c1c704a5081` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
