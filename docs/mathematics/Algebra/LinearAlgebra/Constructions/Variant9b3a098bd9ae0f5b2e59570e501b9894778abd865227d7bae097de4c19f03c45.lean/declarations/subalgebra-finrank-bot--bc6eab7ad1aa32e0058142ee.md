# Subalgebra.finrank_bot

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b3668b9a-3f47-ebf5-dc1e-ca8bb8fe1ad9",
  "kind": "theorem",
  "lexical_name": "Subalgebra.finrank_bot",
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
  "slug": "subalgebra-finrank-bot--bc6eab7ad1aa32e0058142ee",
  "source": {
    "blob": "a295c30feca565b8dc05cb538d57e5a01aa73cbe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 578,
    "line": 561,
    "path": "GRWTSK/Algebra/LinearAlgebra/Constructions/Variant9b3a098bd9ae0f5b2e59570e501b9894778abd865227d7bae097de4c19f03c45.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bc6eab7ad1aa32e0058142ee658facb96763da5dae844a849e495d3cf684dcfa",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Constructions/Variant9b3a098bd9ae0f5b2e59570e501b9894778abd865227d7bae097de4c19f03c45.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b3668b9a-3f47-ebf5-dc1e-ca8bb8fe1ad9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 561–578.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Subalgebra.finrank_bot : finrank F (⊥ : Subalgebra F E) = 1 :=
  finrank_eq_of_rank_eq (by simp)

end Ring

end SubalgebraRank

section Extend

namespace Module.Basis

variable {R V : Type*} [CommRing R] [AddCommGroup V] [Module R V]
    {W : Submodule R V} {m n : Type*}
    (bW : Basis m R W) (bQ : Basis n R (V ⧸ W))

/-- Given a basis `bW` of a submodule of an `R`-module `V`,
and a basis `bQ` of the quotient `V ⧸ W`,
this is a basis of `V` combining `bW` and a lift of `bQ`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Constructions/Variant9b3a098bd9ae0f5b2e59570e501b9894778abd865227d7bae097de4c19f03c45.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Constructions/Variant9b3a098bd9ae0f5b2e59570e501b9894778abd865227d7bae097de4c19f03c45.lean#L561).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a295c30feca565b8dc05cb538d57e5a01aa73cbe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
