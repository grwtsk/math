# sub_iff_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ed34a6d4ce7686317dda642540d628afe86e140b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 172,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b1/b1fda944e93136f9fa516a35e3bb72652b581844760b6fba3fd6022027e1bd5d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:cd0d4e11-9fe0-3f3c-090c-60840a72e2b0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:986177b7-8b6c-5586-a8f5-745f9bf6c21e",
  "kind": "theorem",
  "lexical_name": "sub_iff_right",
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
  "slug": "sub-iff-right--4cf9a89dccee9754ef3a41a7",
  "source": {
    "blob": "ed34a6d4ce7686317dda642540d628afe86e140b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 183,
    "line": 172,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ModEq/Variantb1fda944e93136f9fa516a35e3bb72652b581844760b6fba3fd6022027e1bd5d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4cf9a89dccee9754ef3a41a782a5abe457bce6a99c7f2d5f51397fd7f50e6539",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/ModEq/Variantb1fda944e93136f9fa516a35e3bb72652b581844760b6fba3fd6022027e1bd5d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:986177b7-8b6c-5586-a8f5-745f9bf6c21e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 172–183.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem sub_iff_right :
    a₂ ≡ b₂ [PMOD p] → (a₁ - a₂ ≡ b₁ - b₂ [PMOD p] ↔ a₁ ≡ b₁ [PMOD p]) := fun ⟨m, hm⟩ =>
  (Equiv.subRight m).symm.exists_congr_left.trans <| by simp [sub_sub_sub_comm, hm, sub_smul, ModEq]

protected alias ⟨add_left_cancel, add⟩ := ModEq.add_iff_left

protected alias ⟨add_right_cancel, _⟩ := ModEq.add_iff_right

protected alias ⟨sub_left_cancel, sub⟩ := ModEq.sub_iff_left

protected alias ⟨sub_right_cancel, _⟩ := ModEq.sub_iff_right

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/ModEq/Variantb1fda944e93136f9fa516a35e3bb72652b581844760b6fba3fd6022027e1bd5d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ModEq/Variantb1fda944e93136f9fa516a35e3bb72652b581844760b6fba3fd6022027e1bd5d.lean#L172).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ed34a6d4ce7686317dda642540d628afe86e140b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
