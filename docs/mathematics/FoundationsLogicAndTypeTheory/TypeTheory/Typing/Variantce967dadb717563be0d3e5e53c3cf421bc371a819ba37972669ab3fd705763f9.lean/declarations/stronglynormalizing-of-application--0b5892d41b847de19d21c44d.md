# stronglyNormalizing_of_application

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cea9de4d-0ad2-5839-2a2c-1da2ee96d76f",
  "kind": "theorem",
  "lexical_name": "stronglyNormalizing_of_application",
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
  "slug": "stronglynormalizing-of-application--0b5892d41b847de19d21c44d",
  "source": {
    "blob": "f4ffcb8fa7e62a6140045b92e39336cde4867cc8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 975,
    "line": 944,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/Typing/Variantce967dadb717563be0d3e5e53c3cf421bc371a819ba37972669ab3fd705763f9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0b5892d41b847de19d21c44de7dc8301fd000669ca28c48090ad78055a6067ff",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/TypeTheory/Typing/Variantce967dadb717563be0d3e5e53c3cf421bc371a819ba37972669ab3fd705763f9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cea9de4d-0ad2-5839-2a2c-1da2ee96d76f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 944–975.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem stronglyNormalizing_of_application
    {S : Type u} {P : Specification S}
    (applySN : ∀ {Γ f a D E}, HasType P Γ f (.pi D E) → HasType P Γ a D →
      StronglyNormalizing f → StronglyNormalizing a → StronglyNormalizing (.app f a)) :
    SystemStronglyNormalizing P := by
  have typed : ∀ M : Expr S, ∀ {Γ A}, HasType P Γ M A → StronglyNormalizing M := by
    intro M
    induction M with
    | var n => intro Γ A h; exact (Normal.var n).stronglyNormalizing
    | sort s => intro Γ A h; exact (Normal.sort s).stronglyNormalizing
    | app f a ihf iha =>
        intro Γ A h
        obtain ⟨D, E, hf, ha, _⟩ := h.generation_app
        exact applySN hf ha (ihf hf) (iha ha)
    | lam D b ihD ihb =>
        intro Γ A h
        obtain ⟨E, s, hb, hpi, _⟩ := h.generation_lam
        obtain ⟨s₁, s₂, s₃, hD, _, _, _⟩ := hpi.generation_pi
        exact (ihD hD).lam (ihb hb)
    | pi D E ihD ihE =>
        intro Γ A h
        obtain ⟨s₁, s₂, s₃, hD, hE, _, _⟩ := h.generation_pi
        exact (ihD hD).pi (ihE hE)
  intro Γ _ M h
  obtain ⟨A, h | h⟩ := h
  · exact typed M h
  · obtain ⟨s, rfl⟩ | ⟨s, hs⟩ := h.regularity
    · exact (Normal.sort s).stronglyNormalizing
    · exact typed M hs

/-- A failed full-normalization theorem has an exact, well-typed application
counterexample whose two children are already strongly normalizing. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/TypeTheory/Typing/Variantce967dadb717563be0d3e5e53c3cf421bc371a819ba37972669ab3fd705763f9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/Typing/Variantce967dadb717563be0d3e5e53c3cf421bc371a819ba37972669ab3fd705763f9.lean#L944).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f4ffcb8fa7e62a6140045b92e39336cde4867cc8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
