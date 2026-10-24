# fintypeOfAdmissibleOfAlgebraic

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3be1ab630c8759a17d6a69292f02a3632cafa428ceb3e8520f9e766f0c971eec",
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
  "slug": "fintypeofadmissibleofalgebraic--ba298c5b88c847501cdd6e3f",
  "source": {
    "blob": "3d9bd5728d8060acedbe1e042af8428b59008fcc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 352,
    "line": 331,
    "path": "GRWTSK/Algebra/Finite/Variantd8505e5ab5ab0d4026faab854a3556d2140cb0b6fd858e34565fad5d7048560f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ba298c5b88c847501cdd6e3f8cf0e5f144c4854181923f82226bddaa8b97360c",
  "verification": {
    "reference": "docs/verification/Algebra/Finite/Variantd8505e5ab5ab0d4026faab854a3556d2140cb0b6fd858e34565fad5d7048560f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3be1ab630c8759a17d6a69292f02a3632cafa428ceb3e8520f9e766f0c971eec`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 331–352.

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
@[instance_reducible]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Finite/Variantd8505e5ab5ab0d4026faab854a3556d2140cb0b6fd858e34565fad5d7048560f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Finite/Variantd8505e5ab5ab0d4026faab854a3556d2140cb0b6fd858e34565fad5d7048560f.lean#L331).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3d9bd5728d8060acedbe1e042af8428b59008fcc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
