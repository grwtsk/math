# _root_.GRWTSK.Algebra.AlgHom.Variant82c775b34c6776f62b90ae244d7adb65c7912768e70b696d261a77689288c362.AlgHom.ofClass

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:71c7fdd2fe455271d985c1aa247d1c51dd1e6fb4cfa4886f1337534c3046307e",
  "kind": "def",
  "lexical_name": "_root_.GRWTSK.Algebra.AlgHom.Variant82c775b34c6776f62b90ae244d7adb65c7912768e70b696d261a77689288c362.AlgHom.ofClass",
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
  "slug": "root-grwtsk-algebra-alghom-variant82c775b34c6776f62b90ae244d7adb65c79127--ce3e43031cbcc38a7af8ac8a",
  "source": {
    "blob": "9eac7038485f8db6de7eb170d858b62bb54dd2b2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 96,
    "line": 77,
    "path": "GRWTSK/Algebra/Hom/Variant986a2d269ac403a124f3b6a2043932f6a714b419cd012c52973b91f55311304e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ce3e43031cbcc38a7af8ac8ac5bb3f0f3a711901b14f6b675cc82cb3bed75959",
  "verification": {
    "reference": "docs/verification/Algebra/Hom/Variant986a2d269ac403a124f3b6a2043932f6a714b419cd012c52973b91f55311304e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:71c7fdd2fe455271d985c1aa247d1c51dd1e6fb4cfa4886f1337534c3046307e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 77–96.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def _root_.GRWTSK.Algebra.AlgHom.Variant82c775b34c6776f62b90ae244d7adb65c7912768e70b696d261a77689288c362.AlgHom.ofClass {F : Type*} [FunLike F A B] [AlgHomClass F R A B] (f : F) :
    A →ₐ[R] B where
  __ := (f : A →+* B)
  toFun := f
  commutes' := AlgHomClass.commutes f

@[deprecated (since := "2026-09-07")] alias toAlgHom := AlgHom.ofClass

end AlgHomClass

namespace AlgHom

variable {R : Type u} {A : Type v} {B : Type w} {C : Type u₁} {D : Type v₁}

section Semiring

variable [CommSemiring R] [Semiring A] [Semiring B] [Semiring C] [Semiring D]
variable [Algebra R A] [Algebra R B] [Algebra R C] [Algebra R D]

@[macro_inline]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Hom/Variant986a2d269ac403a124f3b6a2043932f6a714b419cd012c52973b91f55311304e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Hom/Variant986a2d269ac403a124f3b6a2043932f6a714b419cd012c52973b91f55311304e.lean#L77).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9eac7038485f8db6de7eb170d858b62bb54dd2b2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
