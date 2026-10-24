# cast_smul_eq_qsmul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "95857156e9a5439b0212a986aa9261c58db9206d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 78,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8c/8cb7044eec70c106a799d4c3ba32fd0e71c56ef9b5233d937019101d302c3366.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b7d7fe3a-d468-4e18-90d2-ef8c599c683c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ede272b7-61d2-927b-3e96-d9d25407dcff",
  "kind": "lemma",
  "lexical_name": "cast_smul_eq_qsmul",
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
  "slug": "cast-smul-eq-qsmul--9e9a9a2a8123d7fc4ceac841",
  "source": {
    "blob": "95857156e9a5439b0212a986aa9261c58db9206d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 89,
    "line": 78,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Rat/Variant8cb7044eec70c106a799d4c3ba32fd0e71c56ef9b5233d937019101d302c3366.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9e9a9a2a8123d7fc4ceac84180e0d3d895d8967d7ef7b2a84119ae3da6a5250b",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Rat/Variant8cb7044eec70c106a799d4c3ba32fd0e71c56ef9b5233d937019101d302c3366.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ede272b7-61d2-927b-3e96-d9d25407dcff`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 78–89.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma cast_smul_eq_qsmul [Module R S] (q : ℚ) (a : S) : (q : R) • a = q • a := by
  refine MulAction.injective₀ (G₀ := ℚ) (Nat.cast_ne_zero.2 q.den_pos.ne') ?_
  dsimp
  rw [← mul_smul, den_mul_eq_num, Nat.cast_smul_eq_nsmul, Int.cast_smul_eq_zsmul, ← smul_assoc,
    nsmul_eq_mul q.den, ← cast_natCast, ← cast_mul, den_mul_eq_num, cast_intCast,
    Int.cast_smul_eq_zsmul]

end Ring

section DivisionRing
variable [DivisionRing S] [CharZero S]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Rat/Variant8cb7044eec70c106a799d4c3ba32fd0e71c56ef9b5233d937019101d302c3366.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Rat/Variant8cb7044eec70c106a799d4c3ba32fd0e71c56ef9b5233d937019101d302c3366.lean#L78).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `95857156e9a5439b0212a986aa9261c58db9206d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
