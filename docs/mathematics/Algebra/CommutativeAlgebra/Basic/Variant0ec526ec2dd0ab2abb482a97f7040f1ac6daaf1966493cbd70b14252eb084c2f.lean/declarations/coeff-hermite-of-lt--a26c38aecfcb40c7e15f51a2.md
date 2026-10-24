# coeff_hermite_of_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "13f33a3208377a8e8991fdf19c0afc3d07d61bd7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 79,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0e/0ec526ec2dd0ab2abb482a97f7040f1ac6daaf1966493cbd70b14252eb084c2f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:79e1561f-52b1-93cc-9f5a-3b47905c15f4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:317ad405-c14d-7298-9fde-51a7caeeb9b6",
  "kind": "theorem",
  "lexical_name": "coeff_hermite_of_lt",
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
  "slug": "coeff-hermite-of-lt--a26c38aecfcb40c7e15f51a2",
  "source": {
    "blob": "13f33a3208377a8e8991fdf19c0afc3d07d61bd7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 88,
    "line": 79,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Basic/Variant0ec526ec2dd0ab2abb482a97f7040f1ac6daaf1966493cbd70b14252eb084c2f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a26c38aecfcb40c7e15f51a2c15007195ea15fc6b549df384ce7380c85db89fa",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Basic/Variant0ec526ec2dd0ab2abb482a97f7040f1ac6daaf1966493cbd70b14252eb084c2f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:317ad405-c14d-7298-9fde-51a7caeeb9b6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 79–88.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coeff_hermite_of_lt {n k : ℕ} (hnk : n < k) : coeff (hermite n) k = 0 := by
  obtain ⟨k, rfl⟩ := Nat.exists_eq_add_of_lt hnk
  clear hnk
  induction n generalizing k with
  | zero => exact coeff_C
  | succ n ih =>
    have : n + k + 1 + 2 = n + (k + 2) + 1 := by ring
    rw [coeff_hermite_succ_succ, add_right_comm, this, ih k, ih (k + 2), mul_zero, sub_zero]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Basic/Variant0ec526ec2dd0ab2abb482a97f7040f1ac6daaf1966493cbd70b14252eb084c2f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Basic/Variant0ec526ec2dd0ab2abb482a97f7040f1ac6daaf1966493cbd70b14252eb084c2f.lean#L79).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `13f33a3208377a8e8991fdf19c0afc3d07d61bd7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
