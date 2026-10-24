# exists_hopfAlgebra_not_killed_by_finrank

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "dc594f8d81f2a9ac13dab5668dba02cfef8b32a5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 882,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1b/1b94fb5c718e3e4d68fa3203ab2201b8702365ceb9b928725f9f51a749f5a151.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:722b7576-5221-c08d-5f1c-4b61bfa84267",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b98a13a3-8612-a39d-8a1d-d706e098ed98",
  "kind": "theorem",
  "lexical_name": "exists_hopfAlgebra_not_killed_by_finrank",
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
  "slug": "exists-hopfalgebra-not-killed-by-finrank--575b31800e2806dff5ae0cf4",
  "source": {
    "blob": "dc594f8d81f2a9ac13dab5668dba02cfef8b32a5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 903,
    "line": 882,
    "path": "GRWTSK/Algebra/LinearAlgebra/GrothendieckPower/Variant1b94fb5c718e3e4d68fa3203ab2201b8702365ceb9b928725f9f51a749f5a151.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:575b31800e2806dff5ae0cf4fc2f8cc83cd44a8dd95e4396261328493a97553d",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/GrothendieckPower/Variant1b94fb5c718e3e4d68fa3203ab2201b8702365ceb9b928725f9f51a749f5a151.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b98a13a3-8612-a39d-8a1d-d706e098ed98`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 882–903.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_hopfAlgebra_not_killed_by_finrank :
    ∃ (S : Type) (_ : CommRing S) (_ : Nontrivial S) (H : Type) (_ : CommRing H)
      (_ : HopfAlgebra S H) (_ : Module.Free S H) (_ : Module.Finite S H),
        0 < Module.finrank S H ∧
          WithConv.toConv (AlgHom.id S H) ^ Module.finrank S H ≠ 1 := by
  refine ⟨R, inferInstance, inferInstance, A, inferInstance, inferInstance, inferInstance,
    inferInstance, ?_, ?_⟩
  · rw [finrank_A]; norm_num
  · rw [finrank_A]
    have h8 : orderOf (WithConv.toConv (AlgHom.id R A)) = 8 := orderOf_universalPoint
    exact pow_ne_one_of_lt_orderOf (by norm_num) (by rw [h8]; norm_num)

/-!
### Non-cocommutativity

By Deligne's theorem, a commutative finite locally free group scheme is killed by its order,
so the group scheme represented by `A` is necessarily noncommutative; equivalently, `A` is
not cocommutative.  We verify this directly: the coefficient functional of `U` distinguishes
`Δ(U)` from its swap.
-/

/-- The `R`-linear coefficient functional of `U` in the basis `1, V, U, U * V` of `A`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/GrothendieckPower/Variant1b94fb5c718e3e4d68fa3203ab2201b8702365ceb9b928725f9f51a749f5a151.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/GrothendieckPower/Variant1b94fb5c718e3e4d68fa3203ab2201b8702365ceb9b928725f9f51a749f5a151.lean#L882).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dc594f8d81f2a9ac13dab5668dba02cfef8b32a5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
