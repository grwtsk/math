# not_bddAbove_of_tendsto_atTop

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8189502334963029ccb04602b58e4d1e3e064bd7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 450,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ee/ee0102ed5147c64cd1163555e1e6f79f8a109f2f14aa05e091e8d4d717487843.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c8956816-d875-7e79-25f8-b5584cc1d629",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:db7b7430-2802-9385-a442-a3343d7fcf26",
  "kind": "theorem",
  "lexical_name": "not_bddAbove_of_tendsto_atTop",
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
  "slug": "not-bddabove-of-tendsto-attop--030c4be498146c3d675b6d5d",
  "source": {
    "blob": "8189502334963029ccb04602b58e4d1e3e064bd7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 457,
    "line": 450,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variantee0102ed5147c64cd1163555e1e6f79f8a109f2f14aa05e091e8d4d717487843.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:030c4be498146c3d675b6d5d29432ab8f8c65246537380c6ff8ceeb67632b997",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variantee0102ed5147c64cd1163555e1e6f79f8a109f2f14aa05e091e8d4d717487843.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:db7b7430-2802-9385-a442-a3343d7fcf26`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 450–457.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem not_bddAbove_of_tendsto_atTop [NoMaxOrder β] (h : Tendsto f l atTop) :
    ¬BddAbove (range f) := by
  rintro ⟨M, hM⟩
  have : ∀ x, f x ≤ M := by aesop
  have : ∅ = f ⁻¹' Ioi M := by aesop (add forward safe not_le_of_lt)
  apply Filter.empty_notMem l
  aesop (add safe Ioi_mem_atTop)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variantee0102ed5147c64cd1163555e1e6f79f8a109f2f14aa05e091e8d4d717487843.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variantee0102ed5147c64cd1163555e1e6f79f8a109f2f14aa05e091e8d4d717487843.lean#L450).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8189502334963029ccb04602b58e4d1e3e064bd7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
