# boundary_mem_cycles

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:82918a15-fc5d-6842-86d2-35af25b1f71e",
  "kind": "theorem",
  "lexical_name": "boundary_mem_cycles",
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
  "slug": "boundary-mem-cycles--417b103f22fad093a2cc7629",
  "source": {
    "blob": "3f1bcf82d1174b49efbac84e0fb95fae99b6e4c4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 54,
    "line": 33,
    "path": "GRWTSK/Algebra/LinearAlgebra/DegreeHomology/Variant28610cd9effbf2a6e2e83bdd5956e7ff639bdcd64b8847b622bc03f0c361826c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:417b103f22fad093a2cc7629fc7447d0d3ab09b05465c2960d6fc6eba64f196b",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/DegreeHomology/Variant28610cd9effbf2a6e2e83bdd5956e7ff639bdcd64b8847b622bc03f0c361826c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:82918a15-fc5d-6842-86d2-35af25b1f71e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 33–54.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem boundary_mem_cycles
    (chain : FiniteIntegralChain) (degree : Nat)
    (value : FiniteFree (chain.rank (Nat.succ degree))) :
    chain.boundaryMap degree value ∈ chain.cycles degree := by
  cases degree with
  | zero =>
      exact Submodule.mem_top
  | succ lowerDegree =>
      change chain.boundaryMap lowerDegree
          (chain.boundaryMap (Nat.succ lowerDegree) value) = 0
      calc
        chain.boundaryMap lowerDegree
              (chain.boundaryMap (Nat.succ lowerDegree) value) =
            ((chain.boundaryMap lowerDegree).comp
              (chain.boundaryMap (Nat.succ lowerDegree))) value := rfl
        _ = (0 :
              FiniteFree (chain.rank (Nat.succ (Nat.succ lowerDegree))) →ₗ[ℤ]
                FiniteFree (chain.rank lowerDegree)) value := by
          rw [chain.boundaryMap_squared lowerDegree]
        _ = 0 := rfl

/-- The incoming differential with codomain restricted to cycles. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/DegreeHomology/Variant28610cd9effbf2a6e2e83bdd5956e7ff639bdcd64b8847b622bc03f0c361826c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/DegreeHomology/Variant28610cd9effbf2a6e2e83bdd5956e7ff639bdcd64b8847b622bc03f0c361826c.lean#L33).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3f1bcf82d1174b49efbac84e0fb95fae99b6e4c4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
