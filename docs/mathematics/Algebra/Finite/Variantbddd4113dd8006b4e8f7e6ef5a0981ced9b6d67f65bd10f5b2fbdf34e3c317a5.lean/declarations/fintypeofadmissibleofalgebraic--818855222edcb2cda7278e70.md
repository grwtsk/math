# fintypeOfAdmissibleOfAlgebraic

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fe8342f0bdd609ddf2f84e4efcb50423a2a4ab992ca7af811736389adc8e1928",
  "kind": "def",
  "lexical_name": "fintypeOfAdmissibleOfAlgebraic",
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
  "slug": "fintypeofadmissibleofalgebraic--818855222edcb2cda7278e70",
  "source": {
    "blob": "e0da9f25d262598f1d5195f996525f501496fc1f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 353,
    "line": 333,
    "path": "GRWTSK/Algebra/Finite/Variantbddd4113dd8006b4e8f7e6ef5a0981ced9b6d67f65bd10f5b2fbdf34e3c317a5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:818855222edcb2cda7278e70665006100348a5ca5e7b8c30a7f3de16f22f1c78",
  "verification": {
    "reference": "docs/verification/Algebra/Finite/Variantbddd4113dd8006b4e8f7e6ef5a0981ced9b6d67f65bd10f5b2fbdf34e3c317a5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fe8342f0bdd609ddf2f84e4efcb50423a2a4ab992ca7af811736389adc8e1928`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 333–353.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def fintypeOfAdmissibleOfAlgebraic [IsDedekindDomain S]
    [Algebra.IsAlgebraic R S] : Fintype (ClassGroup S) :=
  @Fintype.ofSurjective _ _ _
    (@Fintype.ofEquiv _
      { J // J ∣ Ideal.span ({algebraMap R S (∏ m ∈ finsetApprox bS adm, m)} : Set S) }
      (UniqueFactorizationMonoid.fintypeSubtypeDvd _
        (by
          rw [Ne, Ideal.zero_eq_bot, Ideal.span_singleton_eq_bot]
          exact prod_finsetApprox_ne_zero bS adm))
      ((Equiv.refl _).subtypeEquiv fun I =>
        Ideal.dvd_iff_le.trans (by
          rw [Equiv.refl_apply, Ideal.span_le, Set.singleton_subset_iff]; rfl)))
    (ClassGroup.mkMMem bS adm) (ClassGroup.mkMMem_surjective bS adm)

/-- The main theorem: the class group of an integral closure `S` of `R` in a
finite extension `L` of `K = Frac(R)` is finite if there is an admissible
absolute value.

See also `ClassGroup.fintypeOfAdmissibleOfAlgebraic` where `L` is an
algebraic extension of `R`, that includes some extra assumptions.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Finite/Variantbddd4113dd8006b4e8f7e6ef5a0981ced9b6d67f65bd10f5b2fbdf34e3c317a5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Finite/Variantbddd4113dd8006b4e8f7e6ef5a0981ced9b6d67f65bd10f5b2fbdf34e3c317a5.lean#L333).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e0da9f25d262598f1d5195f996525f501496fc1f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
