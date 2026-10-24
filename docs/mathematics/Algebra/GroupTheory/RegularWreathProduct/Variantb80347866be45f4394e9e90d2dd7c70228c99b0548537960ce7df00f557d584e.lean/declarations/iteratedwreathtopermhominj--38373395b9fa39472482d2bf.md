# iteratedWreathToPermHomInj

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:44abb0e9-5483-7e6f-d0e1-4dbd5b0f5c03",
  "kind": "lemma",
  "lexical_name": "iteratedWreathToPermHomInj",
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
  "slug": "iteratedwreathtopermhominj--38373395b9fa39472482d2bf",
  "source": {
    "blob": "0f5d13feb961993cd0f42a357b0caba17697eeef",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 249,
    "line": 237,
    "path": "GRWTSK/Algebra/GroupTheory/RegularWreathProduct/Variantb80347866be45f4394e9e90d2dd7c70228c99b0548537960ce7df00f557d584e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:38373395b9fa39472482d2bfa90e904187cdc90b47449dc60f3717ef14729ee8",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/RegularWreathProduct/Variantb80347866be45f4394e9e90d2dd7c70228c99b0548537960ce7df00f557d584e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:44abb0e9-5483-7e6f-d0e1-4dbd5b0f5c03`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 237–249.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma iteratedWreathToPermHomInj (G : Type*) [Group G] :
    (n : ℕ) → Function.Injective (iteratedWreathToPermHom G n)
  | 0 => by
      simp only [IteratedWreathProduct_zero]
      apply Function.injective_of_subsingleton
  | n + 1 => by
      let _ := MulAction.compHom (Fin n → G) (iteratedWreathToPermHom G n)
      have : FaithfulSMul (IteratedWreathProduct G n) (Fin n → G) :=
        ⟨fun h ↦ iteratedWreathToPermHomInj G n (Equiv.ext h)⟩
      exact ((Fin.succFunEquiv G n).symm.permCongrHom.toEquiv.comp_injective _).mpr
        (RegularWreathProduct.toPermInj (IteratedWreathProduct G n) G (Fin n → G))

/-- The encoding of the Sylow `p`-subgroups of `Perm α` as an iterated wreath product. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/RegularWreathProduct/Variantb80347866be45f4394e9e90d2dd7c70228c99b0548537960ce7df00f557d584e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/RegularWreathProduct/Variantb80347866be45f4394e9e90d2dd7c70228c99b0548537960ce7df00f557d584e.lean#L237).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0f5d13feb961993cd0f42a357b0caba17697eeef` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
