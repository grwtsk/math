# inv_eq_zero_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:28492a77-37e2-5ff5-8671-d5cf30c2acfd",
  "kind": "theorem",
  "lexical_name": "inv_eq_zero_iff",
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
  "slug": "inv-eq-zero-iff--ddd0847243b701e18fa38a74",
  "source": {
    "blob": "83f2ace5df7f17b3bc52d4babe443e3da146bc99",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 109,
    "line": 94,
    "path": "GRWTSK/Algebra/Field/Variant7b892c2644d13d27669932fa8e97e6006187b3075d9f4f85b8f0f86c27c4050a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ddd0847243b701e18fa38a743dd4f087998cbe0afe334210f2f7f84c58842e0a",
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

Occurrence: `result:28492a77-37e2-5ff5-8671-d5cf30c2acfd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 94–109.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem inv_eq_zero_iff {a : α} : a⁻¹ = 0 ↔ a = 0 := by
  constructor
  · intro w
    by_cases h : a = 0
    · subst h
      rfl
    · have := congrArg (fun x => x * a) w
      -- TODO(kmill): remove after stage0 update
      try dsimp at this
      rw [Semiring.zero_mul, inv_mul_cancel h] at this
      exfalso
      exact zero_ne_one this.symm
  · intro w
    subst w
    simp [Field.inv_zero]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/FieldTheory/Variant7b892c2644d13d27669932fa8e97e6006187b3075d9f4f85b8f0f86c27c4050a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Field/Variant7b892c2644d13d27669932fa8e97e6006187b3075d9f4f85b8f0f86c27c4050a.lean#L94).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `83f2ace5df7f17b3bc52d4babe443e3da146bc99` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
