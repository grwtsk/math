# permanent_updateCol_smul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "38b6d0b855c68349faa02a0297f979d08dd6006c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 96,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/cc/cc3ac4cc9da1f7ae092ccdde6ec0996f210617af714447433d20a03c7d64663a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0afc816d-efe6-b6d4-8826-1f367c209b08",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9a0642b3-8941-8370-3a23-acab300570ad",
  "kind": "theorem",
  "lexical_name": "permanent_updateCol_smul",
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
  "slug": "permanent-updatecol-smul--31a90b4e46f0b1b92a25fa52",
  "source": {
    "blob": "38b6d0b855c68349faa02a0297f979d08dd6006c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 107,
    "line": 96,
    "path": "GRWTSK/Algebra/LinearAlgebra/Permanent/Variantcc3ac4cc9da1f7ae092ccdde6ec0996f210617af714447433d20a03c7d64663a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:31a90b4e46f0b1b92a25fa52f904324bb54e9bd7d2f27b06e122c31d45a21c5c",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Permanent/Variantcc3ac4cc9da1f7ae092ccdde6ec0996f210617af714447433d20a03c7d64663a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9a0642b3-8941-8370-3a23-acab300570ad`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 96–107.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem permanent_updateCol_smul (M : Matrix n n R) (j : n) (c : R) (u : n → R) :
    permanent (updateCol M j <| c • u) = c * permanent (updateCol M j u) := by
  simp only [permanent, ← mul_prod_erase _ _ (mem_univ j), updateCol_self, Pi.smul_apply,
    smul_eq_mul, mul_sum, ← mul_assoc]
  congr 1 with p
  rw [Finset.prod_congr rfl (fun i hi ↦ ?_)]
  simp only [ne_eq, ne_of_mem_erase hi, not_false_eq_true, updateCol_ne]

@[deprecated (since := "2024-12-11")]
alias permanent_updateColumn_smul := permanent_updateCol_smul

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Permanent/Variantcc3ac4cc9da1f7ae092ccdde6ec0996f210617af714447433d20a03c7d64663a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Permanent/Variantcc3ac4cc9da1f7ae092ccdde6ec0996f210617af714447433d20a03c7d64663a.lean#L96).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `38b6d0b855c68349faa02a0297f979d08dd6006c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
