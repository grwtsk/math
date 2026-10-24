# Gamma1_to_Gamma0_mem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "84e90e46cf3976afed65352dd9329ade01056a2b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 124,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/91/91072a11c7831078cdc6e8bd06bef27e9c1dfc4b5a4b653487f82722c1922f56.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5d506b0e-bde4-e0b9-0219-8bbe89da24a8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:44ff65f4-46ef-c94e-5f6b-bb6bea5c63b0",
  "kind": "theorem",
  "lexical_name": "Gamma1_to_Gamma0_mem",
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
  "slug": "gamma1-to-gamma0-mem--bf4ba6e9f8721575d8864b5d",
  "source": {
    "blob": "84e90e46cf3976afed65352dd9329ade01056a2b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 143,
    "line": 124,
    "path": "GRWTSK/Analysis/SpecialFunctions/CongruenceSubgroups/Variant91072a11c7831078cdc6e8bd06bef27e9c1dfc4b5a4b653487f82722c1922f56.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bf4ba6e9f8721575d8864b5d7d439f6e31f4a8880dfbf2dafe7907fe3e9928b5",
  "verification": {
    "reference": "docs/verification/Analysis/SpecialFunctions/CongruenceSubgroups/Variant91072a11c7831078cdc6e8bd06bef27e9c1dfc4b5a4b653487f82722c1922f56.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:44ff65f4-46ef-c94e-5f6b-bb6bea5c63b0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 124–143.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Gamma1_to_Gamma0_mem {N} (A : Gamma0 N) :
    A ∈ Gamma1' N ↔
    ((A.1 0 0 : ℤ) : ZMod N) = 1 ∧ ((A.1 1 1 : ℤ) : ZMod N) = 1
      ∧ ((A.1 1 0 : ℤ) : ZMod N) = 0 := by
  constructor
  · intro ha
    have adet : (A.1.1.det : ZMod N) = 1 := by simp only [A.1.property, Int.cast_one]
    rw [Matrix.det_fin_two] at adet
    simp only [Gamma1_mem', Gamma0Map, MonoidHom.coe_mk, OneHom.coe_mk, Int.cast_sub,
      Int.cast_mul] at *
    simpa only [Gamma1_mem', Gamma0Map, MonoidHom.coe_mk, OneHom.coe_mk, Int.cast_sub,
      Int.cast_mul, ha, Gamma0_mem.mp A.property, and_self_iff, and_true, mul_one, mul_zero,
      sub_zero] using adet
  · intro ha
    simp only [Gamma1_mem', Gamma0Map, MonoidHom.coe_mk, coe_matrix_coe,
      Int.coe_castRingHom, map_apply]
    exact ha.2.1

/-- The congruence subgroup `Gamma1` of `SL(2, ℤ)` consisting of matrices
whose bottom row is congruent to `(0,1)` modulo `N`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/SpecialFunctions/CongruenceSubgroups/Variant91072a11c7831078cdc6e8bd06bef27e9c1dfc4b5a4b653487f82722c1922f56.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SpecialFunctions/CongruenceSubgroups/Variant91072a11c7831078cdc6e8bd06bef27e9c1dfc4b5a4b653487f82722c1922f56.lean#L124).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `84e90e46cf3976afed65352dd9329ade01056a2b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
