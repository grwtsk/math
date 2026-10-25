# castNum_shiftLeft

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d7b5540799b5c985939bb255534134994ef264ba",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 812,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/32/32a8ec153d4a9885fa41d32863229a4e250c45be40808bb7c81e9937dc7280ce.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ef655c0c-82b2-2080-ed54-1c5ab808aa80",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:358661ff-92eb-8561-77be-5fa6efe14e25",
  "kind": "theorem",
  "lexical_name": "castNum_shiftLeft",
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
  "slug": "castnum-shiftleft--1aa83d1b8772b32002319f1b",
  "source": {
    "blob": "d7b5540799b5c985939bb255534134994ef264ba",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 823,
    "line": 812,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Lemmas/Variant32a8ec153d4a9885fa41d32863229a4e250c45be40808bb7c81e9937dc7280ce.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1aa83d1b8772b32002319f1b5df13baea99411fcb423605157131de28037bfe0",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Lemmas/Variant32a8ec153d4a9885fa41d32863229a4e250c45be40808bb7c81e9937dc7280ce.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:358661ff-92eb-8561-77be-5fa6efe14e25`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 812–823.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem castNum_shiftLeft (m : Num) (n : Nat) : ↑(m <<< n) = (m : ℕ) <<< (n : ℕ) := by
  cases m <;> dsimp only [← shiftl_eq_shiftLeft, shiftl]
  · symm
    apply Nat.zero_shiftLeft
  simp only [cast_pos]
  induction n with
  | zero => rfl
  | succ n IH =>
    simp [PosNum.shiftl_succ_eq_bit0_shiftl, Nat.shiftLeft_succ, IH, mul_comm,
      -shiftl_eq_shiftLeft, -PosNum.shiftl_eq_shiftLeft, mul_two]

@[simp, norm_cast]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/Lemmas/Variant32a8ec153d4a9885fa41d32863229a4e250c45be40808bb7c81e9937dc7280ce.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Lemmas/Variant32a8ec153d4a9885fa41d32863229a4e250c45be40808bb7c81e9937dc7280ce.lean#L812).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d7b5540799b5c985939bb255534134994ef264ba` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
