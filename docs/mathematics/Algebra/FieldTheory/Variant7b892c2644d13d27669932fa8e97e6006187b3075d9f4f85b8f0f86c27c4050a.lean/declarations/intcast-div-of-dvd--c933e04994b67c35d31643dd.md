# intCast_div_of_dvd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ececd4bf-ce3f-9ef2-3ffa-0f9418185d87",
  "kind": "theorem",
  "lexical_name": "intCast_div_of_dvd",
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
  "slug": "intcast-div-of-dvd--c933e04994b67c35d31643dd",
  "source": {
    "blob": "83f2ace5df7f17b3bc52d4babe443e3da146bc99",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 224,
    "line": 215,
    "path": "GRWTSK/Algebra/Field/Variant7b892c2644d13d27669932fa8e97e6006187b3075d9f4f85b8f0f86c27c4050a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c933e04994b67c35d31643dd7db74844734e1ec048145e2e0512c9771b46e50d",
  "verification": {
    "reference": "docs/verification/Algebra/FieldTheory/Variant7b892c2644d13d27669932fa8e97e6006187b3075d9f4f85b8f0f86c27c4050a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ececd4bf-ce3f-9ef2-3ffa-0f9418185d87`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 215–224.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem intCast_div_of_dvd {x y : Int} (h : y ∣ x) (w : (y : α) ≠ 0) :
    ((x / y : Int) : α) = ((x : α) / (y : α)) := by
  obtain ⟨z, rfl⟩ := h
  by_cases hy : y = 0
  · simp_all [Ring.intCast_zero]
  · rw [Int.mul_ediv_cancel_left _ hy]
    rw [Ring.intCast_mul, CommSemiring.mul_comm, div_eq_mul_inv, Semiring.mul_assoc,
      mul_inv_cancel w, Semiring.mul_one]

attribute [local instance] Semiring.natCast in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/FieldTheory/Variant7b892c2644d13d27669932fa8e97e6006187b3075d9f4f85b8f0f86c27c4050a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Field/Variant7b892c2644d13d27669932fa8e97e6006187b3075d9f4f85b8f0f86c27c4050a.lean#L215).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `83f2ace5df7f17b3bc52d4babe443e3da146bc99` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
