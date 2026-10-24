# instStarRing

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c247a9371ab2545eccb7721ef1711a7bb6b5524f818a3ef41dd931730d08df0e",
  "kind": "instance",
  "lexical_name": "instStarRing",
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
  "slug": "inststarring--896b429f6683ba2602fe8c76",
  "source": {
    "blob": "7e2e7c4b962a92dfa6733c99b68ab2205c64aff7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 559,
    "line": 542,
    "path": "GRWTSK/Algebra/LinearAlgebra/Unitization/Variant4d5915a259624cfa9d83016f92c7e0ec3c222476d02bc2bd5b82cad3bf6d09f2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:896b429f6683ba2602fe8c760e5fc2bcc95da23b9bdefaf679d78d4146df1d08",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Unitization/Variant4d5915a259624cfa9d83016f92c7e0ec3c222476d02bc2bd5b82cad3bf6d09f2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c247a9371ab2545eccb7721ef1711a7bb6b5524f818a3ef41dd931730d08df0e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 542–559.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance instStarRing [CommSemiring R] [StarRing R] [NonUnitalNonAssocSemiring A] [StarRing A]
    [Module R A] [StarModule R A] :
    StarRing (Unitization R A) :=
  { Unitization.instStarAddMonoid with
    star_mul := fun x y =>
      ext (by simp [-star_mul']) (by simp [-star_mul', add_comm (star x.fst • star y.snd)]) }

end Star

/-! ### Algebra structure -/


section Algebra

variable (S R A : Type*) [CommSemiring S] [CommSemiring R] [NonUnitalSemiring A] [Module R A]
  [IsScalarTower R A A] [SMulCommClass R A A] [Algebra S R] [DistribMulAction S A]
  [IsScalarTower S R A]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Unitization/Variant4d5915a259624cfa9d83016f92c7e0ec3c222476d02bc2bd5b82cad3bf6d09f2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Unitization/Variant4d5915a259624cfa9d83016f92c7e0ec3c222476d02bc2bd5b82cad3bf6d09f2.lean#L542).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7e2e7c4b962a92dfa6733c99b68ab2205c64aff7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
