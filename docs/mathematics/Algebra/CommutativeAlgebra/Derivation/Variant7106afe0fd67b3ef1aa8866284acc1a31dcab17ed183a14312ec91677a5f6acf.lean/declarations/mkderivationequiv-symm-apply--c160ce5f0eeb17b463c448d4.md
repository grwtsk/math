# mkDerivationEquiv_symm_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e5cfa174-a8a3-053b-9726-72664610482c",
  "kind": "lemma",
  "lexical_name": "mkDerivationEquiv_symm_apply",
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
  "slug": "mkderivationequiv-symm-apply--c160ce5f0eeb17b463c448d4",
  "source": {
    "blob": "ece18da772d7427d0bd68a96c358b145f83454f4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 125,
    "line": 100,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Derivation/Variant7106afe0fd67b3ef1aa8866284acc1a31dcab17ed183a14312ec91677a5f6acf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c160ce5f0eeb17b463c448d4a37124f64be5cb742ebe2d865d98cdc26417cae5",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Derivation/Variant7106afe0fd67b3ef1aa8866284acc1a31dcab17ed183a14312ec91677a5f6acf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e5cfa174-a8a3-053b-9726-72664610482c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 100–125.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] lemma mkDerivationEquiv_symm_apply (D : Derivation R R[X] A) :
    (mkDerivationEquiv R).symm D = D X := rfl

end CommSemiring
end Polynomial

namespace Derivation

variable {R A M : Type*} [CommSemiring R] [CommSemiring A] [Algebra R A] [AddCommMonoid M]
  [Module A M] [Module R M] [IsScalarTower R A M] (d : Derivation R A M) (a : A)

open Polynomial Module

/--
For a derivation `d : A → M` and an element `a : A`, `d.compAEval a` is the
derivation of `R[X]` which takes a polynomial `f` to `d(aeval a f)`.

This derivation takes values in `Module.AEval R M a`, which is `M`, regarded as an
`R[X]`-module, with the action of a polynomial `f` defined by `f • m = (aeval a f) • m`.
-/
/-
Note: `compAEval` is not defined using `Derivation.compAlgebraMap`.
This because `A` is not an `R[X]` algebra and it would be messy to create an algebra instance
within the definition.
-/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Derivation/Variant7106afe0fd67b3ef1aa8866284acc1a31dcab17ed183a14312ec91677a5f6acf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Derivation/Variant7106afe0fd67b3ef1aa8866284acc1a31dcab17ed183a14312ec91677a5f6acf.lean#L100).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ece18da772d7427d0bd68a96c358b145f83454f4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
