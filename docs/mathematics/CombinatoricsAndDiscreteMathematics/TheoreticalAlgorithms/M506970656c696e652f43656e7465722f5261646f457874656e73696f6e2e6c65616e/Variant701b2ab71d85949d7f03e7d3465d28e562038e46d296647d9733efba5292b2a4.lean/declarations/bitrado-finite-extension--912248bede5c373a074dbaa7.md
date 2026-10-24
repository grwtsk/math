# bitRado_finite_extension

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:53bc4fd9-50f9-22a4-c9be-f0a922af615d",
  "kind": "theorem",
  "lexical_name": "bitRado_finite_extension",
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
  "slug": "bitrado-finite-extension--912248bede5c373a074dbaa7",
  "source": {
    "blob": "d26b00527dd6d950833009562ac59266af7542b8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 202,
    "line": 178,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M506970656c696e652f43656e7465722f5261646f457874656e73696f6e2e6c65616e/Variant701b2ab71d85949d7f03e7d3465d28e562038e46d296647d9733efba5292b2a4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:912248bede5c373a074dbaa78d832402ba42b61806cf5c0c53a8e0dd22e673c8",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M506970656c696e652f43656e7465722f5261646f457874656e73696f6e2e6c65616e/Variant701b2ab71d85949d7f03e7d3465d28e562038e46d296647d9733efba5292b2a4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:53bc4fd9-50f9-22a4-c9be-f0a922af615d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 178–202.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem bitRado_finite_extension
    (U V : List Nat)
    (hdisj : DisjointNatLists U V) :
    ∃ z : Nat,
      z ∉ U ∧
      z ∉ V ∧
      (∀ u : Nat, u ∈ U -> bitRadoEdge z u) ∧
      (∀ v : Nat, v ∈ V -> ¬ bitRadoEdge z v) := by
  refine
    ⟨freshWitness U V,
      freshWitness_not_mem_left,
      freshWitness_not_mem_right,
      ?_,
      ?_⟩
  · intro u hu
    exact Or.inr
      ⟨mem_lt_freshWitness_left hu, freshWitness_testBit_of_mem hu⟩
  · intro v hv hedge
    rcases hedge with h | h
    · exact Nat.lt_asymm h.1 (mem_lt_freshWitness_right hv)
    · have hfalse := freshWitness_testBit_of_avoid hdisj hv
      have hbit : (freshWitness U V).testBit v = true := h.2
      rw [hfalse] at hbit
      contradiction

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M506970656c696e652f43656e7465722f5261646f457874656e73696f6e2e6c65616e/Variant701b2ab71d85949d7f03e7d3465d28e562038e46d296647d9733efba5292b2a4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M506970656c696e652f43656e7465722f5261646f457874656e73696f6e2e6c65616e/Variant701b2ab71d85949d7f03e7d3465d28e562038e46d296647d9733efba5292b2a4.lean#L178).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d26b00527dd6d950833009562ac59266af7542b8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
