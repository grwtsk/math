# log_natCast

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e5708f0f9708d24657af8549151c40079f580cf3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 74,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f0/f086f108ddf884d2e87535bfb219033df0f146cc65dc781167d8cd135962117f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:97a4ea02-d5ea-7f68-1fdb-af6204ffad98",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f7dfe7d2-f5f3-b4b6-fcad-c2249a954add",
  "kind": "theorem",
  "lexical_name": "log_natCast",
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
  "slug": "log-natcast--7a2553dba5d671c9f10d08c2",
  "source": {
    "blob": "e5708f0f9708d24657af8549151c40079f580cf3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 80,
    "line": 74,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Log/Variantf086f108ddf884d2e87535bfb219033df0f146cc65dc781167d8cd135962117f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7a2553dba5d671c9f10d08c2aa6c75c6e011d7f3970edbf720f730a5904ba85a",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Log/Variantf086f108ddf884d2e87535bfb219033df0f146cc65dc781167d8cd135962117f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f7dfe7d2-f5f3-b4b6-fcad-c2249a954add`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 74–80.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem log_natCast (b : ℕ) (n : ℕ) : log b (n : R) = Nat.log b n := by
  cases n
  · simp [log_of_right_le_one]
  · rw [log_of_one_le_right, Nat.floor_coe]
    simp
#align int.log_nat_cast Int.log_natCast

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Log/Variantf086f108ddf884d2e87535bfb219033df0f146cc65dc781167d8cd135962117f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Log/Variantf086f108ddf884d2e87535bfb219033df0f146cc65dc781167d8cd135962117f.lean#L74).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e5708f0f9708d24657af8549151c40079f580cf3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
