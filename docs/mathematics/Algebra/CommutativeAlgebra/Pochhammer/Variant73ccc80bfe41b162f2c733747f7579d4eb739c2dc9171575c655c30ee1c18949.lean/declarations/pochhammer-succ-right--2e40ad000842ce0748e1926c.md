# pochhammer_succ_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b3aa53ee263422564fd8cca60fe91bd18c599ca8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 96,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/73/73ccc80bfe41b162f2c733747f7579d4eb739c2dc9171575c655c30ee1c18949.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b7245032-c6ca-dd06-f6f9-b618b67b675b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7bca99ff-bedb-0cb1-2f1c-8d5177eb4c94",
  "kind": "theorem",
  "lexical_name": "pochhammer_succ_right",
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
  "slug": "pochhammer-succ-right--2e40ad000842ce0748e1926c",
  "source": {
    "blob": "b3aa53ee263422564fd8cca60fe91bd18c599ca8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 108,
    "line": 96,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Pochhammer/Variant73ccc80bfe41b162f2c733747f7579d4eb739c2dc9171575c655c30ee1c18949.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2e40ad000842ce0748e1926cda3a03a9162b6e21552185f437635a7e806fa585",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Pochhammer/Variant73ccc80bfe41b162f2c733747f7579d4eb739c2dc9171575c655c30ee1c18949.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7bca99ff-bedb-0cb1-2f1c-8d5177eb4c94`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 96–108.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pochhammer_succ_right (n : ℕ) :
    pochhammer S (n + 1) = pochhammer S n * (X + (n : S[X])) := by
  suffices h : pochhammer ℕ (n + 1) = pochhammer ℕ n * (X + (n : ℕ[X]))
  · apply_fun Polynomial.map (algebraMap ℕ S) at h
    simpa only [pochhammer_map, Polynomial.map_mul, Polynomial.map_add, map_X,
      Polynomial.map_nat_cast] using h
  induction' n with n ih
  · simp
  · conv_lhs =>
      rw [pochhammer_succ_left, ih, mul_comp, ← mul_assoc, ← pochhammer_succ_left, add_comp, X_comp,
        nat_cast_comp, add_assoc, add_comm (1 : ℕ[X]), ← Nat.cast_succ]
#align pochhammer_succ_right pochhammer_succ_right

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Pochhammer/Variant73ccc80bfe41b162f2c733747f7579d4eb739c2dc9171575c655c30ee1c18949.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Pochhammer/Variant73ccc80bfe41b162f2c733747f7579d4eb739c2dc9171575c655c30ee1c18949.lean#L96).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b3aa53ee263422564fd8cca60fe91bd18c599ca8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
