# inv_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bbc7d72f07939c1886213baa103c24a3f51ab333",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 117,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/92/92b02c097133ffba5508a1b9c3243f29c0eceb851917d12118d4ac38916d8d91.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9152c732-4c64-136e-2c78-79679110081e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ee847284-242f-22b7-1ac5-685e9f3ac61e",
  "kind": "theorem",
  "lexical_name": "inv_mul",
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
  "slug": "inv-mul--f98d37be4d23c15b13b0e8b3",
  "source": {
    "blob": "bbc7d72f07939c1886213baa103c24a3f51ab333",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 130,
    "line": 117,
    "path": "GRWTSK/Algebra/Field/Variant92b02c097133ffba5508a1b9c3243f29c0eceb851917d12118d4ac38916d8d91.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f98d37be4d23c15b13b0e8b33aed7c2ea7900d6b0f47d7fe9adde1a62fc1b72f",
  "verification": {
    "reference": "docs/verification/Algebra/FieldTheory/Variant92b02c097133ffba5508a1b9c3243f29c0eceb851917d12118d4ac38916d8d91.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ee847284-242f-22b7-1ac5-685e9f3ac61e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 117–130.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem inv_mul (a b : α) : (a*b)⁻¹ = a⁻¹*b⁻¹ := by
  cases (Classical.em (a = 0)); simp [*, Semiring.zero_mul, Field.inv_zero]
  cases (Classical.em (b = 0)); simp [*, Semiring.mul_zero, Field.inv_zero]
  cases (Classical.em (a*b = 0)); simp [*, Field.inv_zero]
  next h => cases (of_mul_eq_zero h) <;> contradiction
  next h₁ h₂ h₃ =>
    replace h₁ := Field.inv_mul_cancel h₁
    replace h₂ := Field.inv_mul_cancel h₂
    replace h₃ := Field.mul_inv_cancel h₃
    replace h₃ := congrArg (b⁻¹*a⁻¹* ·) h₃; try simp at h₃ -- TODO(kmill): remove simp after stage0 update
    rw [Semiring.mul_assoc, Semiring.mul_assoc, ← Semiring.mul_assoc (a⁻¹), h₁, Semiring.one_mul,
      ← Semiring.mul_assoc, h₂, Semiring.one_mul, Semiring.mul_one, CommRing.mul_comm (b⁻¹)] at h₃
    assumption

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/FieldTheory/Variant92b02c097133ffba5508a1b9c3243f29c0eceb851917d12118d4ac38916d8d91.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Field/Variant92b02c097133ffba5508a1b9c3243f29c0eceb851917d12118d4ac38916d8d91.lean#L117).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bbc7d72f07939c1886213baa103c24a3f51ab333` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
