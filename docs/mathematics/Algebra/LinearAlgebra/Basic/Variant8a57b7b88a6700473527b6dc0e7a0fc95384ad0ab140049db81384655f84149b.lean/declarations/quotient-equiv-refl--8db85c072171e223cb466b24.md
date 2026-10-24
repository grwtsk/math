# Quotient.equiv_refl

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:76c09fb6-444b-8728-36af-5a87d9cd3886",
  "kind": "theorem",
  "lexical_name": "Quotient.equiv_refl",
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
  "slug": "quotient-equiv-refl--8db85c072171e223cb466b24",
  "source": {
    "blob": "85e5ce4e033490af63e23ea0f22d6d21e876cd21",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 447,
    "line": 430,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant8a57b7b88a6700473527b6dc0e7a0fc95384ad0ab140049db81384655f84149b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8db85c072171e223cb466b2449d5d7f90d19f94f1ea827a5e3eaa462c64af72c",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variant8a57b7b88a6700473527b6dc0e7a0fc95384ad0ab140049db81384655f84149b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:76c09fb6-444b-8728-36af-5a87d9cd3886`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 430–447.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Quotient.equiv_refl (P : Submodule R M) (Q : Submodule R M)
    (hf : P.map (LinearEquiv.refl R M : M →ₗ[R] M) = Q) :
    Quotient.equiv P Q (LinearEquiv.refl R M) hf = quotEquivOfEq _ _ (by simpa using hf) :=
  rfl

end Submodule

end Ring

section CommRing

variable {R M M₂ : Type*} {x y : M} [CommRing R] [AddCommGroup M] [Module R M]
  [AddCommGroup M₂] [Module R M₂] (p : Submodule R M) (q : Submodule R M₂)

namespace Submodule

/-- Given modules `M`, `M₂` over a commutative ring, together with submodules `p ⊆ M`, `q ⊆ M₂`,
the natural map $\{f ∈ Hom(M, M₂) | f(p) ⊆ q \} \to Hom(M/p, M₂/q)$ is linear. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variant8a57b7b88a6700473527b6dc0e7a0fc95384ad0ab140049db81384655f84149b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variant8a57b7b88a6700473527b6dc0e7a0fc95384ad0ab140049db81384655f84149b.lean#L430).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `85e5ce4e033490af63e23ea0f22d6d21e876cd21` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
