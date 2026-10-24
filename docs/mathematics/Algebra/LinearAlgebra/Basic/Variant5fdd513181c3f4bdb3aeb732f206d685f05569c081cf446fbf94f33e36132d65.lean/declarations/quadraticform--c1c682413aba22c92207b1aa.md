# QuadraticForm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3587fa660efe3e6ad8b4c283fd1cb8d2e72632c41a9bd6c2708ac16ba5b8877a",
  "kind": "structure",
  "lexical_name": "QuadraticForm",
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
  "slug": "quadraticform--c1c682413aba22c92207b1aa",
  "source": {
    "blob": "1e9b3dcac3f8ec67e76b7bcc5bc844be648147cd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 144,
    "line": 131,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant5fdd513181c3f4bdb3aeb732f206d685f05569c081cf446fbf94f33e36132d65.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c1c682413aba22c92207b1aae9a874fe80d2e3c0d255681fc5f235cc38412451",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variant5fdd513181c3f4bdb3aeb732f206d685f05569c081cf446fbf94f33e36132d65.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3587fa660efe3e6ad8b4c283fd1cb8d2e72632c41a9bd6c2708ac16ba5b8877a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 131–144.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure QuadraticForm (R : Type u) (M : Type v) [Semiring R] [AddCommMonoid M] [Module R M] where
  toFun : M → R
  toFun_smul : ∀ (a : R) (x : M), toFun (a • x) = a * a * toFun x
  exists_companion' : ∃ B : BilinForm R M, ∀ x y, toFun (x + y) = toFun x + toFun y + B x y
#align quadratic_form QuadraticForm

namespace QuadraticForm

section FunLike

variable [Semiring R] [AddCommMonoid M] [Module R M]

variable {Q Q' : QuadraticForm R M}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variant5fdd513181c3f4bdb3aeb732f206d685f05569c081cf446fbf94f33e36132d65.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variant5fdd513181c3f4bdb3aeb732f206d685f05569c081cf446fbf94f33e36132d65.lean#L131).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1e9b3dcac3f8ec67e76b7bcc5bc844be648147cd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
