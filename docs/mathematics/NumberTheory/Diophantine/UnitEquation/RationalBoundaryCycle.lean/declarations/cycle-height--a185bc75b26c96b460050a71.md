# cycle_height

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7c919dc2-1f19-2046-4f6f-0f27e93223c4",
  "kind": "theorem",
  "lexical_name": "cycle_height",
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
  "slug": "cycle-height--a185bc75b26c96b460050a71",
  "source": {
    "blob": "826afa8d34142790e54d9756005c06fb1b20552f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 155,
    "line": 138,
    "path": "GRWTSK/NumberTheory/Diophantine/UnitEquation/RationalBoundaryCycle.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a185bc75b26c96b460050a71e8ee67c6513166547b27d30083f4e64e977c227f",
  "verification": {
    "reference": "docs/verification/NumberTheory/Diophantine/UnitEquation/RationalBoundaryCycle.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7c919dc2-1f19-2046-4f6f-0f27e93223c4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 138–155.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cycle_height (q : UnitPair) : height (values (cycle q)) = height (values q) := by
  have hv : |q.right| ≠ 0 := abs_ne_zero.mpr q.right_ne
  have hn : (q.right.num.natAbs : ℚ) = (q.right.den : ℚ) * |q.right| := by
    have ha : (q.right.num.natAbs : ℚ) = |(q.right.num : ℚ)| := by
      exact_mod_cast (Int.natCast_natAbs q.right.num)
    rw [ha,← Rat.mul_den_eq_num,abs_mul,abs_of_nonneg (Nat.cast_nonneg _)]
    ring
  have h1 : |q.right| * (1 / |q.right|) = 1 := by field_simp [hv]
  have h2 : |q.right| * (|q.left| / |q.right|) = |q.left| := by field_simp [hv]
  rw [height,cycle_denominator,values_max,height,denominator_right,values_max,hn]
  change (q.right.den : ℚ) * |q.right| *
    max 1 (max |1/q.right| | -q.left/q.right|) = _
  rw [abs_div,abs_one,abs_div,abs_neg,mul_assoc,
    mul_max_of_nonneg _ _ (abs_nonneg q.right),
    mul_max_of_nonneg _ _ (abs_nonneg q.right),mul_one,h1,h2]
  simp only [max_assoc,max_left_comm,max_comm]

/-- The two signed valuations transform by an invertible integral matrix. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Diophantine/UnitEquation/RationalBoundaryCycle.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Diophantine/UnitEquation/RationalBoundaryCycle.lean#L138).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `826afa8d34142790e54d9756005c06fb1b20552f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
