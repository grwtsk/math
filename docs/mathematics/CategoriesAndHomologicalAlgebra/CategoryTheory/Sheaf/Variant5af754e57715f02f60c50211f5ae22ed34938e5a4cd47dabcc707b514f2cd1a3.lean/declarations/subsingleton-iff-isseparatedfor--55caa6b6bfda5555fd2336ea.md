# subsingleton_iff_isSeparatedFor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0bc9b9cb5589ca85ddfbde76ab0ddb3640051b07",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 156,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5a/5af754e57715f02f60c50211f5ae22ed34938e5a4cd47dabcc707b514f2cd1a3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1d8aef4b-e794-e86b-7e4e-58268e87fe84",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:50001523-997c-d145-3c4b-84dcd6e59f47",
  "kind": "theorem",
  "lexical_name": "subsingleton_iff_isSeparatedFor",
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
  "slug": "subsingleton-iff-isseparatedfor--55caa6b6bfda5555fd2336ea",
  "source": {
    "blob": "0bc9b9cb5589ca85ddfbde76ab0ddb3640051b07",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 178,
    "line": 156,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheaf/Variant5af754e57715f02f60c50211f5ae22ed34938e5a4cd47dabcc707b514f2cd1a3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:55caa6b6bfda5555fd2336eab84356061218ed3b06390484559973b188c70334",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheaf/Variant5af754e57715f02f60c50211f5ae22ed34938e5a4cd47dabcc707b514f2cd1a3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:50001523-997c-d145-3c4b-84dcd6e59f47`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 156–178.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem subsingleton_iff_isSeparatedFor :
    (∀ c, Subsingleton (c ⟶ P.mapCone S.arrows.cocone.op)) ↔
      ∀ E : Aᵒᵖ, IsSeparatedFor (P ⋙ coyoneda.obj E) S.arrows := by
  constructor
  · intro hs E x t₁ t₂ h₁ h₂
    have hx := is_compatible_of_exists_amalgamation x ⟨t₁, h₁⟩
    rw [compatible_iff_sieveCompatible] at hx
    specialize hs hx.cone
    rcases hs with ⟨hs⟩
    simpa only [Subtype.mk.injEq] using (show Subtype.mk t₁ h₁ = ⟨t₂, h₂⟩ from
      (homEquivAmalgamation hx).symm.injective (hs _ _))
  · rintro h ⟨E, π⟩
    let eqv := conesEquivSieveCompatibleFamily P S (op E)
    constructor
    rw [← eqv.left_inv π]
    intro f₁ f₂
    let eqv' := homEquivAmalgamation (eqv π).2
    apply eqv'.injective
    ext
    apply h _ (eqv π).1 <;> exact (eqv' _).2

/-- A presheaf `P` is a sheaf for the Grothendieck topology `J` iff for every covering sieve
    `S` of `J`, the natural cone associated to `P` and `S` is a limit cone. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheaf/Variant5af754e57715f02f60c50211f5ae22ed34938e5a4cd47dabcc707b514f2cd1a3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheaf/Variant5af754e57715f02f60c50211f5ae22ed34938e5a4cd47dabcc707b514f2cd1a3.lean#L156).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0bc9b9cb5589ca85ddfbde76ab0ddb3640051b07` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
