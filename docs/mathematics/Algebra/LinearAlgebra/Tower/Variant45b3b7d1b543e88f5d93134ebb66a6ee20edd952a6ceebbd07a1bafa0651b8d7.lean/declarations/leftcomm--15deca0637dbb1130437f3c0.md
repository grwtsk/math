# leftComm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0d3caa7dcfb299d8d12878398d8af5413046c0af115debb517afb41e42e419a8",
  "kind": "def",
  "lexical_name": "leftComm",
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
  "slug": "leftcomm--15deca0637dbb1130437f3c0",
  "source": {
    "blob": "d8622b1321fb2eb0fc803f2a90666823bca7ca69",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 458,
    "line": 450,
    "path": "GRWTSK/Algebra/LinearAlgebra/Tower/Variant45b3b7d1b543e88f5d93134ebb66a6ee20edd952a6ceebbd07a1bafa0651b8d7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:15deca0637dbb1130437f3c0f024c4b778d13e955f19c95bd9a62c3aff88c7b9",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Tower/Variant45b3b7d1b543e88f5d93134ebb66a6ee20edd952a6ceebbd07a1bafa0651b8d7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0d3caa7dcfb299d8d12878398d8af5413046c0af115debb517afb41e42e419a8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 450–458.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def leftComm : M ⊗[A] (P ⊗[R] Q) ≃ₗ[A] P ⊗[A] (M ⊗[R] Q) :=
  let e₁ := (assoc R A A M P Q).symm
  let e₂ := congr (TensorProduct.comm A M P) (1 : Q ≃ₗ[R] Q)
  let e₃ := assoc R A A P M Q
  e₁ ≪≫ₗ e₂ ≪≫ₗ e₃

variable {M N P Q}

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Tower/Variant45b3b7d1b543e88f5d93134ebb66a6ee20edd952a6ceebbd07a1bafa0651b8d7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Tower/Variant45b3b7d1b543e88f5d93134ebb66a6ee20edd952a6ceebbd07a1bafa0651b8d7.lean#L450).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d8622b1321fb2eb0fc803f2a90666823bca7ca69` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
