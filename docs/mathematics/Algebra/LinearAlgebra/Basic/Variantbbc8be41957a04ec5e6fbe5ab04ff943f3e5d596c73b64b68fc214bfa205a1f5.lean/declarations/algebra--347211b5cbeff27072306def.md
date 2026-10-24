# algebra

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b0508cf6fbf94da374fdfe459375740cadd980c577c097b62bd29a0353951792",
  "kind": "instance",
  "lexical_name": "algebra",
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
  "slug": "algebra--347211b5cbeff27072306def",
  "source": {
    "blob": "f2b04d2dc72870f52e1bb6d43192cdae72a1aafa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 97,
    "line": 90,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variantbbc8be41957a04ec5e6fbe5ab04ff943f3e5d596c73b64b68fc214bfa205a1f5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:347211b5cbeff27072306def2ac69cb81ba779096d69f1b0d35f4aa937ddea97",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variantbbc8be41957a04ec5e6fbe5ab04ff943f3e5d596c73b64b68fc214bfa205a1f5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b0508cf6fbf94da374fdfe459375740cadd980c577c097b62bd29a0353951792`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 90–97.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance algebra : Algebra R A[M] where
  algebraMap := singleOneRingHom.comp (algebraMap R A)
  smul_def' r a := by ext; simp [coeff_single_one_mul, Algebra.smul_def]
  commutes' r f := by ext; simp [coeff_single_one_mul, coeff_mul_single_one, Algebra.commutes]

/-- `MonoidAlgebra.single 1` as an `AlgHom` -/
@[to_additive (dont_translate := R A) (attr := simps! apply)
/-- `AddMonoidAlgebra.single 0` as an `AlgHom` -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variantbbc8be41957a04ec5e6fbe5ab04ff943f3e5d596c73b64b68fc214bfa205a1f5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variantbbc8be41957a04ec5e6fbe5ab04ff943f3e5d596c73b64b68fc214bfa205a1f5.lean#L90).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f2b04d2dc72870f52e1bb6d43192cdae72a1aafa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
