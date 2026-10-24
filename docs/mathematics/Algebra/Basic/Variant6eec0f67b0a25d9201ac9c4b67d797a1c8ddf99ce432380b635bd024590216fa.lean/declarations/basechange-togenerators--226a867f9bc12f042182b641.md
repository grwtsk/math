# baseChange_toGenerators

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:834c936d-2ffb-0c7c-4faf-20e340c84546",
  "kind": "lemma",
  "lexical_name": "baseChange_toGenerators",
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
  "slug": "basechange-togenerators--226a867f9bc12f042182b641",
  "source": {
    "blob": "c1309cf19c9e39d525dc6d17e66d4e379b199bee",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 370,
    "line": 324,
    "path": "GRWTSK/Algebra/Basic/Variant6eec0f67b0a25d9201ac9c4b67d797a1c8ddf99ce432380b635bd024590216fa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:226a867f9bc12f042182b641250f940062be6513e859dd11cbef2e58cf5b2cad",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variant6eec0f67b0a25d9201ac9c4b67d797a1c8ddf99ce432380b635bd024590216fa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:834c936d-2ffb-0c7c-4faf-20e340c84546`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 324–370.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma baseChange_toGenerators : (P.baseChange T).toGenerators = P.toGenerators.baseChange T := rfl

end BaseChange

section Composition

/-!
### Composition of presentations

Let `S` be an `R`-algebra with presentation `P` and `T` be an `S`-algebra with
presentation `Q`. In this section we construct a presentation of `T` as an `R`-algebra.

For the underlying generators see `Algebra.Generators.comp`. The family of relations is
indexed by `σ' ⊕ σ`.

We have two canonical maps:
`MvPolynomial ι R →ₐ[R] MvPolynomial (ι' ⊕ ι) R` induced by `Sum.inr`
and `aux : MvPolynomial (ι' ⊕ ι) R →ₐ[R] MvPolynomial ι' S` induced by
the evaluation `MvPolynomial ι R →ₐ[R] S` (see below).

Now `i : σ` is mapped to the image of `P.relation i` under the first map and
`j : σ'` is mapped to a pre-image under `aux` of `Q.relation j` (see `comp_relation_aux`
for the construction of the pre-image and `comp_relation_aux_map` for a proof that it is indeed
a pre-image).

The evaluation map factors as:
`MvPolynomial (ι' ⊕ ι) R →ₐ[R] MvPolynomial ι' S →ₐ[R] T`, where
the first map is `aux`. The goal is to compute that the kernel of this composition
is spanned by the relations indexed by `σ' ⊕ σ` (`span_range_relation_eq_ker_comp`).
One easily sees that this kernel is the pre-image under `aux` of the kernel of the evaluation
of `Q`, where the latter is by assumption spanned by the relations `Q.relation j`.

Since `aux` is surjective (`aux_surjective`), the pre-image is the sum of the ideal spanned
by the constructed pre-images of the `Q.relation j` and the kernel of `aux`. It hence
remains to show that the kernel of `aux` is spanned by the image of the `P.relation i`
under the canonical map `MvPolynomial ι R →ₐ[R] MvPolynomial (ι' ⊕ ι) R`. By
assumption this span is the kernel of the evaluation map of `P`. For this, we use the isomorphism
`MvPolynomial (ι' ⊕ ι) R ≃ₐ[R] MvPolynomial ι' (MvPolynomial ι R)` and
`MvPolynomial.ker_map`.

-/

variable {ι' σ' T : Type*} [CommRing T] [Algebra S T]
variable (Q : Presentation S T ι' σ') (P : Presentation R S ι σ)

/-- The evaluation map `MvPolynomial (ι' ⊕ ι) →ₐ[R] T` factors via this map. For more
details, see the module docstring at the beginning of the section. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variant6eec0f67b0a25d9201ac9c4b67d797a1c8ddf99ce432380b635bd024590216fa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variant6eec0f67b0a25d9201ac9c4b67d797a1c8ddf99ce432380b635bd024590216fa.lean#L324).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c1309cf19c9e39d525dc6d17e66d4e379b199bee` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
