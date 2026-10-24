# PositiveForm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9800d5fddd432e4d0a79b08c1405ddb35f39323c74fdb17d7a554d22f1e4ae6a",
  "kind": "structure",
  "lexical_name": "PositiveForm",
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
  "slug": "positiveform--f8696eca0682b6b6dc1d1b4c",
  "source": {
    "blob": "a85a1e3092584c08c1ff940b9e7d1587254d64d1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 43,
    "line": 27,
    "path": "GRWTSK/Algebra/LinearAlgebra/PositiveGeometry/Variant095d91614cc93d4123696c19d93672e801f8b9c6f6d2620f6c8a900f28bbd4d0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f8696eca0682b6b6dc1d1b4cdbeb6af4dc7115b9393c0e242ee87302654748f6",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/PositiveGeometry/Variant095d91614cc93d4123696c19d93672e801f8b9c6f6d2620f6c8a900f28bbd4d0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9800d5fddd432e4d0a79b08c1405ddb35f39323c74fdb17d7a554d22f1e4ae6a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 27–43.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure PositiveForm (V : Type u) [AddCommGroup V] [Module ℝ V] where
  /-- Real bilinear pairing required to be symmetric and nonnegative on the diagonal. -/
  form : V → V → ℝ
  add_left : ∀ x y z, form (x + y) z = form x z + form y z
  smul_left : ∀ (a : ℝ) x y, form (a • x) y = a * form x y
  add_right : ∀ x y z, form x (y + z) = form x y + form x z
  smul_right : ∀ (a : ℝ) x y, form x (a • y) = a * form x y
  symmetric : ∀ x y, form x y = form y x
  nonnegative : ∀ x, 0 ≤ form x x

namespace PositiveForm

variable {V : Type u} [AddCommGroup V] [Module ℝ V]
variable {W : Type v} [AddCommGroup W] [Module ℝ W]

/-- A direction is projectively visible when its positive quadratic value is
strictly positive. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/PositiveGeometry/Variant095d91614cc93d4123696c19d93672e801f8b9c6f6d2620f6c8a900f28bbd4d0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/PositiveGeometry/Variant095d91614cc93d4123696c19d93672e801f8b9c6f6d2620f6c8a900f28bbd4d0.lean#L27).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a85a1e3092584c08c1ff940b9e7d1587254d64d1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
