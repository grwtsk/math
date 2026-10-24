# dualQuotDistrib

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3fcc14e013eccab9a903f344518e8ae7491ae959d081e7caebb39594a9926664",
  "kind": "def",
  "lexical_name": "dualQuotDistrib",
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
  "slug": "dualquotdistrib--1b150398075d70e4c33c4bb1",
  "source": {
    "blob": "dd807fa9e8b679edb68bc14f586a9f79f282f9e1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1533,
    "line": 1516,
    "path": "GRWTSK/Algebra/LinearAlgebra/Dual/Variant48412c141764ea2ae897160295736080f09f8c90d75b3ae17179670b5aafca9b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1b150398075d70e4c33c4bb1e8708c49fa3d2f312d6531263e28bfd42fa724f9",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Dual/Variant48412c141764ea2ae897160295736080f09f8c90d75b3ae17179670b5aafca9b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3fcc14e013eccab9a903f344518e8ae7491ae959d081e7caebb39594a9926664`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1516–1533.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def dualQuotDistrib [FiniteDimensional K V₁] (W : Subspace K V₁) :
    Module.Dual K (V₁ ⧸ W) ≃ₗ[K] Module.Dual K V₁ ⧸ LinearMap.range W.dualLift :=
  W.dualQuotEquivDualAnnihilator.trans W.quotDualEquivAnnihilator.symm
#align subspace.dual_quot_distrib Subspace.dualQuotDistrib

end Subspace

section FiniteDimensional

open FiniteDimensional LinearMap

variable [FiniteDimensional K V₂]

namespace LinearMap

-- TODO(kmill) remove finite_dimensional if possible
-- see https://github.com/leanprover-community/mathlib/pull/17521#discussion_r1083242551
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Dual/Variant48412c141764ea2ae897160295736080f09f8c90d75b3ae17179670b5aafca9b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Dual/Variant48412c141764ea2ae897160295736080f09f8c90d75b3ae17179670b5aafca9b.lean#L1516).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dd807fa9e8b679edb68bc14f586a9f79f282f9e1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
