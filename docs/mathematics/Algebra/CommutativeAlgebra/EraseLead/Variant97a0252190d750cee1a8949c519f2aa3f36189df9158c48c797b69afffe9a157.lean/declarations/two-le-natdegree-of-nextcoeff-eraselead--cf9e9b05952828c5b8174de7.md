# two_le_natDegree_of_nextCoeff_eraseLead

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8fa3d21d-7985-2599-2701-a53d9acf5f7c",
  "kind": "lemma",
  "lexical_name": "two_le_natDegree_of_nextCoeff_eraseLead",
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
  "slug": "two-le-natdegree-of-nextcoeff-eraselead--cf9e9b05952828c5b8174de7",
  "source": {
    "blob": "7bc68136fef8177406c2a755f742f7139569c8ff",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 256,
    "line": 246,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/EraseLead/Variant97a0252190d750cee1a8949c519f2aa3f36189df9158c48c797b69afffe9a157.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cf9e9b05952828c5b8174de79bf2601ea8e582212cd7f2cf743d5b21e8b540f4",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/EraseLead/Variant97a0252190d750cee1a8949c519f2aa3f36189df9158c48c797b69afffe9a157.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8fa3d21d-7985-2599-2701-a53d9acf5f7c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 246–256.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma two_le_natDegree_of_nextCoeff_eraseLead (hlead : f.eraseLead ≠ 0)
    (hnext : f.nextCoeff = 0) : 2 ≤ f.natDegree := by
  contrapose! hlead
  rw [Nat.lt_succ_iff, Nat.le_one_iff_eq_zero_or_eq_one, natDegree_eq_zero, natDegree_eq_one]
    at hlead
  obtain ⟨a, rfl⟩ | ⟨a, ha, b, rfl⟩ := hlead
  · simp
  · rw [nextCoeff_C_mul_X_add_C ha] at hnext
    subst b
    simp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/EraseLead/Variant97a0252190d750cee1a8949c519f2aa3f36189df9158c48c797b69afffe9a157.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/EraseLead/Variant97a0252190d750cee1a8949c519f2aa3f36189df9158c48c797b69afffe9a157.lean#L246).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7bc68136fef8177406c2a755f742f7139569c8ff` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
