# dividedPowers_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "cc50ed4e259707b881d6274e158ea756dffe484b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 155,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a1/a14db6d8f1ed534ade56a37f68eee879beaf48076f8a0ed73c519ddc2ca9e8d9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c30ecb93-7e70-a954-4dbf-b96c1c4ca4ec",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9282b71b-3081-5b53-f978-3a6ff58e9266",
  "kind": "lemma",
  "lexical_name": "dividedPowers_eq",
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
  "slug": "dividedpowers-eq--6764839cbbbf5a9f2e0958b9",
  "source": {
    "blob": "cc50ed4e259707b881d6274e158ea756dffe484b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 169,
    "line": 155,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Padic/Varianta14db6d8f1ed534ade56a37f68eee879beaf48076f8a0ed73c519ddc2ca9e8d9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6764839cbbbf5a9f2e0958b95fae239fddbe9ab5fcc4c2afb2a7422faa374cf0",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Padic/Varianta14db6d8f1ed534ade56a37f68eee879beaf48076f8a0ed73c519ddc2ca9e8d9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9282b71b-3081-5b53-f978-3a6ff58e9266`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 155–169.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma dividedPowers_eq (n : ℕ) (x : ℤ_[p]) :
    (dividedPowers p).dpow n x = open scoped Classical in
      if hx : x ∈ Ideal.span {(p : ℤ_[p])} then ⟨dpow' p n x, dpow'_int p n hx⟩ else 0 := by
  simp only [dividedPowers, ofInjective]
  split_ifs with hx
  · have hinj : Injective (PadicInt.Coe.ringHom (p := p)) :=
      (Set.injective_codRestrict Subtype.property).mp fun ⦃a₁ a₂⦄ a ↦ a
    have heq : Coe.ringHom ⟨dpow' p n x, dpow'_int p n hx⟩ =
        inverse (n ! : ℚ_[p]) * Coe.ringHom x ^ n := by
      simp [dpow', inverse_eq_inv', Coe.ringHom_apply]
    simpa only [← hinj.eq_iff, (Exists.choose_spec (_ : ∃ a, ∃ _, Coe.ringHom a = _)).2,
      RatAlgebra.dpow_apply, Submodule.mem_top] using! heq.symm
  · rfl

set_option backward.isDefEq.respectTransparency false in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Padic/Varianta14db6d8f1ed534ade56a37f68eee879beaf48076f8a0ed73c519ddc2ca9e8d9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Padic/Varianta14db6d8f1ed534ade56a37f68eee879beaf48076f8a0ed73c519ddc2ca9e8d9.lean#L155).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cc50ed4e259707b881d6274e158ea756dffe484b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
