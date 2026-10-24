# LinearPMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d80a1b156d603aa719d69b84c46af3f6a0ed42a0ed9a0e8a588dcf0caa49c5f9",
  "kind": "structure",
  "lexical_name": "LinearPMap",
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
  "slug": "linearpmap--a78f28615198e4f7124cbed7",
  "source": {
    "blob": "921f976728691f37149f3c20eaccdd145dab4a72",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 70,
    "line": 49,
    "path": "GRWTSK/Algebra/LinearAlgebra/LinearPMap/Variantd54009ad28e840ed7503b404372458e15b6bdd499ddf0848fbefc139baad4204.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a78f28615198e4f7124cbed7fda995c75a90bfdbbc88adb5d9dfd505e0813f9c",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/LinearPMap/Variantd54009ad28e840ed7503b404372458e15b6bdd499ddf0848fbefc139baad4204.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d80a1b156d603aa719d69b84c46af3f6a0ed42a0ed9a0e8a588dcf0caa49c5f9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 49–70.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure LinearPMap {R S : Type*} [Ring R] [Ring S] (σ : R →+* S) (E : Type*)
    [AddCommGroup E] [Module R E] (F : Type*) [AddCommGroup F] [Module S F] where
  /-- The domain of the (semi)linear map. -/
  domain : Submodule R E
  /-- The (semi)linear map itself. -/
  toFun : domain →ₛₗ[σ] F

@[inherit_doc] notation:25 E " →ₛₗ.[" σ:25 "] " F:0 => LinearPMap σ E F

/-- `E →ₗ.[R] F` is the notation for `E →ₛₗ.[RingHom.id R] F`. -/
notation:25 E " →ₗ.[" R:25 "] " F:0 => LinearPMap (RingHom.id R) E F

variable {R S T : Type*} [Ring R] [Ring S] [Ring T] {σ : R →+* S} {τ : S →+* T} {E : Type*}
  [AddCommGroup E] [Module R E] {F : Type*} [AddCommGroup F] [Module S F] {G : Type*}
  [AddCommGroup G] [Module T G]

namespace LinearPMap

open Submodule

/-- The (semi)linear map as just a function. -/
@[coe]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/LinearPMap/Variantd54009ad28e840ed7503b404372458e15b6bdd499ddf0848fbefc139baad4204.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/LinearPMap/Variantd54009ad28e840ed7503b404372458e15b6bdd499ddf0848fbefc139baad4204.lean#L49).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `921f976728691f37149f3c20eaccdd145dab4a72` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
