# natDegree_pos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ab1c2198597faedcf09dbcc347ea8ed3e3c4abb1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 181,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d4/d4887d690a4d21db3f58cff231de27f7e2632e325721d6a4a26d36e197983337.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d4c3e07b-ef33-ee72-ea71-911483a6b285",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6333015b-29cb-5888-c1f7-e2aaa604875b",
  "kind": "theorem",
  "lexical_name": "natDegree_pos",
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
  "slug": "natdegree-pos--3741b40255efcbcd98316a13",
  "source": {
    "blob": "ab1c2198597faedcf09dbcc347ea8ed3e3c4abb1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 190,
    "line": 181,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Basic/Variantd4887d690a4d21db3f58cff231de27f7e2632e325721d6a4a26d36e197983337.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3741b40255efcbcd98316a13d0046522abda3666c03f4c3623e0d89c201ee43b",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Basic/Variantd4887d690a4d21db3f58cff231de27f7e2632e325721d6a4a26d36e197983337.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6333015b-29cb-5888-c1f7-e2aaa604875b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 181–190.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem natDegree_pos [Nontrivial B] (hx : IsIntegral A x) : 0 < natDegree (minpoly A x) := by
  rw [pos_iff_ne_zero]
  intro ndeg_eq_zero
  have eq_one : minpoly A x = 1 := by
    rw [eq_C_of_natDegree_eq_zero ndeg_eq_zero]
    convert C_1 (R := A)
    simpa only [ndeg_eq_zero.symm] using (monic hx).leadingCoeff
  simpa only [eq_one, map_one, one_ne_zero] using aeval A x

/-- The degree of a minimal polynomial is positive. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Basic/Variantd4887d690a4d21db3f58cff231de27f7e2632e325721d6a4a26d36e197983337.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Basic/Variantd4887d690a4d21db3f58cff231de27f7e2632e325721d6a4a26d36e197983337.lean#L181).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ab1c2198597faedcf09dbcc347ea8ed3e3c4abb1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
