# exact_of_localized_span

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a5265fe141c47eddb700275066f46725bdbb7b56",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 210,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e1/e1acaec9bc631cc81411e8e29e982e232fbd872654a050252ba56a88fe4f3135.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3c9b9dde-9a98-c9ed-6876-e131edd2f93d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:23d84efc-8d6c-edcd-a4b0-556d313cd27a",
  "kind": "lemma",
  "lexical_name": "exact_of_localized_span",
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
  "slug": "exact-of-localized-span--75e4c87950f889e1c501ba7b",
  "source": {
    "blob": "a5265fe141c47eddb700275066f46725bdbb7b56",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 238,
    "line": 210,
    "path": "GRWTSK/Algebra/LinearAlgebra/Exactness/Variante1acaec9bc631cc81411e8e29e982e232fbd872654a050252ba56a88fe4f3135.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:75e4c87950f889e1c501ba7bca4a8c57af36a0b68e0bb2792fa4a7e27a803bb3",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Exactness/Variante1acaec9bc631cc81411e8e29e982e232fbd872654a050252ba56a88fe4f3135.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:23d84efc-8d6c-edcd-a4b0-556d313cd27a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 210–238.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma exact_of_localized_span
    (h : ∀ r : s, Function.Exact (map (.powers r.1) f) (map (.powers r.1) g)) :
    Function.Exact f g :=
  exact_of_isLocalized_span s spn _ (fun _ ↦ mkLinearMap _ _) _ (fun _ ↦ mkLinearMap _ _)
    _ (fun _ ↦ mkLinearMap _ _) f g h

end localized_span

section Algebra

variable {R S : Type*} [CommSemiring R] [CommSemiring S] [Algebra R S]

-- For every maximal ideal `p` of `R`, let `Rₚ` be the localization of `R` at `p`
-- and `Sₚ` the localization of `S` at `p`.
variable
  (Rₚ : ∀ (p : Ideal R) [p.IsMaximal], Type*)
  [∀ (p : Ideal R) [p.IsMaximal], CommSemiring (Rₚ p)]
  [∀ (p : Ideal R) [p.IsMaximal], Algebra R (Rₚ p)]
  (Sₚ : ∀ (p : Ideal R) [p.IsMaximal], Type*)
  [∀ (p : Ideal R) [p.IsMaximal], CommSemiring (Sₚ p)]
  [∀ (p : Ideal R) [p.IsMaximal], Algebra S (Sₚ p)]
  [∀ (p : Ideal R) [p.IsMaximal], Algebra (Rₚ p) (Sₚ p)]
  [∀ (p : Ideal R) [p.IsMaximal], Algebra R (Sₚ p)]
  [∀ (p : Ideal R) [p.IsMaximal], IsScalarTower R (Rₚ p) (Sₚ p)]
  [∀ (p : Ideal R) [p.IsMaximal], IsScalarTower R S (Sₚ p)]
  [∀ (p : Ideal R) [p.IsMaximal], IsLocalization.AtPrime (Rₚ p) p]
  [∀ (p : Ideal R) [p.IsMaximal],
    IsLocalizedModule.AtPrime p (IsScalarTower.toAlgHom R S (Sₚ p) : S →ₗ[R] (Sₚ p))]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Exactness/Variante1acaec9bc631cc81411e8e29e982e232fbd872654a050252ba56a88fe4f3135.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Exactness/Variante1acaec9bc631cc81411e8e29e982e232fbd872654a050252ba56a88fe4f3135.lean#L210).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a5265fe141c47eddb700275066f46725bdbb7b56` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
