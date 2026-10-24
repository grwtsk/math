# Functor.discard

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:27ae850b6b3dc05cfcf340bf06a07ac0349fb8323562b33a70d7a6ea74af1004",
  "kind": "def",
  "lexical_name": "Functor.discard",
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
  "slug": "functor-discard--1c0a764977ad7b211f7bd791",
  "source": {
    "blob": "89c0fcb49e88c13cd186c502599e5d32931fcfe5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 99,
    "line": 82,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantc6d0b91a5137f1a180e1458c3892508fdcc25b4ffd7ff0329e2c365d17f65fd4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1c0a764977ad7b211f7bd7912e1b7476721e796bb1fc90c4a4d6f7ffacd5e5c4",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantc6d0b91a5137f1a180e1458c3892508fdcc25b4ffd7ff0329e2c365d17f65fd4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:27ae850b6b3dc05cfcf340bf06a07ac0349fb8323562b33a70d7a6ea74af1004`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 82–99.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Functor.discard {f : Type u → Type v} {α : Type u} [Functor f] (x : f α) : f PUnit :=
  Functor.mapConst PUnit.unit x

export Functor (discard)

/--
An `Alternative` functor is an `Applicative` functor that can "fail" or be "empty"
and a binary operation `<|>` that “collects values” or finds the “left-most success”.

Important instances include
* `Option`, where `failure := none` and `<|>` returns the left-most `some`.
* Parser combinators typically provide an `Applicative` instance for error-handling and
  backtracking.

Error recovery and state can interact subtly. For example, the implementation of `Alternative` for `OptionT (StateT σ Id)` keeps modifications made to the state while recovering from failure, while `StateT σ (OptionT Id)` discards them.
-/
-- NB: List instance is in mathlib. Once upstreamed, add
-- * `List`, where `failure` is the empty list and `<|>` concatenates.
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantc6d0b91a5137f1a180e1458c3892508fdcc25b4ffd7ff0329e2c365d17f65fd4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantc6d0b91a5137f1a180e1458c3892508fdcc25b4ffd7ff0329e2c365d17f65fd4.lean#L82).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `89c0fcb49e88c13cd186c502599e5d32931fcfe5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
