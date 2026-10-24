# cyclic_values

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c2daa2ed-d8ef-d461-367c-d79fc5834500",
  "kind": "theorem",
  "lexical_name": "cyclic_values",
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
  "slug": "cyclic-values--a27dce95e9ce51f0380b7daf",
  "source": {
    "blob": "69f3fef5dfe98545152a0889a7ffec268aeb1237",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 57,
    "line": 47,
    "path": "GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyMarkedBoundaryCycle.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a27dce95e9ce51f0380b7daf8c897a84c3bc0b0bca21f4b50967a5c1b68c64b6",
  "verification": {
    "reference": "docs/verification/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyMarkedBoundaryCycle.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c2daa2ed-d8ef-d461-367c-d79fc5834500`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 47–57.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cyclic_values (t : PrimitiveAdditiveTriple) :
    values (cycle (sourcePair t)) = ![0,(t.c : ℚ)/(t.b : ℚ),(t.a : ℚ)/(t.b : ℚ)] ∧
    values (cycle (cycle (sourcePair t))) = ![0,-(t.b : ℚ)/(t.a : ℚ),-(t.c : ℚ)/(t.a : ℚ)] := by
  have ha : (t.a : ℚ) ≠ 0 := Nat.cast_ne_zero.mpr (Nat.ne_of_gt t.a_pos)
  have hb : (t.b : ℚ) ≠ 0 := Nat.cast_ne_zero.mpr (Nat.ne_of_gt t.b_pos)
  have hc : (t.c : ℚ) ≠ 0 := Nat.cast_ne_zero.mpr (Nat.ne_of_gt t.c_pos)
  constructor <;> funext i <;> fin_cases i <;>
    simp [values,cycle,sourcePair,(unit_values t).1,(unit_values t).2] <;>
    field_simp [ha,hb,hc] <;> ring

/-- The old primitive numerator, rather than an assumed fraction normal form, identifies both. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyMarkedBoundaryCycle.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyMarkedBoundaryCycle.lean#L47).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `69f3fef5dfe98545152a0889a7ffec268aeb1237` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
