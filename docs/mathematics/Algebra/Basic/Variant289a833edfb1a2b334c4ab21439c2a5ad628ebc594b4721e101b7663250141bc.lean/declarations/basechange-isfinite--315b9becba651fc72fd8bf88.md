# baseChange_isFinite

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bd844595aab2061192dc7ab60aaa6a257459d5c2fc42bd8387aff63f49b906d1",
  "kind": "instance",
  "lexical_name": "baseChange_isFinite",
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
  "slug": "basechange-isfinite--315b9becba651fc72fd8bf88",
  "source": {
    "blob": "5e31332236473030a63735df6a7d17142a665de4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 349,
    "line": 301,
    "path": "GRWTSK/Algebra/Basic/Variant289a833edfb1a2b334c4ab21439c2a5ad628ebc594b4721e101b7663250141bc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:315b9becba651fc72fd8bf88ae86d835144df24503b18dc564c7fd9d1297f75a",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variant289a833edfb1a2b334c4ab21439c2a5ad628ebc594b4721e101b7663250141bc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bd844595aab2061192dc7ab60aaa6a257459d5c2fc42bd8387aff63f49b906d1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 301–349.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance baseChange_isFinite [P.IsFinite] : (P.baseChange T).IsFinite where
  finite_vars := inferInstanceAs <| Finite (P.vars)
  finite_rels := inferInstanceAs <| Finite (P.rels)

end BaseChange

section Composition

/-!
### Composition of presentations

Let `S` be an `R`-algebra with presentation `P` and `T` be an `S`-algebra with
presentation `Q`. In this section we construct a presentation of `T` as an `R`-algebra.

For the underlying generators see `Algebra.Generators.comp`. The family of relations is
indexed by `Q.rels ⊕ P.rels`.

We have two canonical maps:
`MvPolynomial P.vars R →ₐ[R] MvPolynomial (Q.vars ⊕ P.vars) R` induced by `Sum.inr`
and `aux : MvPolynomial (Q.vars ⊕ P.vars) R →ₐ[R] MvPolynomial Q.vars S` induced by
the evaluation `MvPolynomial P.vars R →ₐ[R] S` (see below).

Now `i : P.rels` is mapped to the image of `P.relation i` under the first map and
`j : Q.rels` is mapped to a pre-image under `aux` of `Q.relation j` (see `comp_relation_aux`
for the construction of the pre-image and `comp_relation_aux_map` for a proof that it is indeed
a pre-image).

The evaluation map factors as:
`MvPolynomial (Q.vars ⊕ P.vars) R →ₐ[R] MvPolynomial Q.vars S →ₐ[R] T`, where
the first map is `aux`. The goal is to compute that the kernel of this composition
is spanned by the relations indexed by `Q.rels ⊕ P.rels` (`span_range_relation_eq_ker_comp`).
One easily sees that this kernel is the pre-image under `aux` of the kernel of the evaluation
of `Q`, where the latter is by assumption spanned by the relations `Q.relation j`.

Since `aux` is surjective (`aux_surjective`), the pre-image is the sum of the ideal spanned
by the constructed pre-images of the `Q.relation j` and the kernel of `aux`. It hence
remains to show that the kernel of `aux` is spanned by the image of the `P.relation i`
under the canonical map `MvPolynomial P.vars R →ₐ[R] MvPolynomial (Q.vars ⊕ P.vars) R`. By
assumption this span is the kernel of the evaluation map of `P`. For this, we use the isomorphism
`MvPolynomial (Q.vars ⊕ P.vars) R ≃ₐ[R] MvPolynomial Q.vars (MvPolynomial P.vars R)` and
`MvPolynomial.ker_map`.

-/

variable {T} [CommRing T] [Algebra S T]
variable (Q : Presentation S T) (P : Presentation R S)

/-- The evaluation map `MvPolynomial (Q.vars ⊕ P.vars) →ₐ[R] T` factors via this map. For more
details, see the module docstring at the beginning of the section. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variant289a833edfb1a2b334c4ab21439c2a5ad628ebc594b4721e101b7663250141bc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variant289a833edfb1a2b334c4ab21439c2a5ad628ebc594b4721e101b7663250141bc.lean#L301).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5e31332236473030a63735df6a7d17142a665de4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
