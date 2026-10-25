# fst_prodExtendRight

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "428db1ca88d4c7bdc5d1037f7cdba0c363199d02",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 894,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5c/5cddeea4ce119fd9fdcb48c7d138705b4cab2132d54fe6845f2f1de13b648c79.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9ad67c0f-be59-78c5-030e-52cd60d7c754",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f8de983a-2417-6883-6f26-b5c247eaf5da",
  "kind": "theorem",
  "lexical_name": "fst_prodExtendRight",
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
  "slug": "fst-prodextendright--3bd61770af1dbe323fb39363",
  "source": {
    "blob": "428db1ca88d4c7bdc5d1037f7cdba0c363199d02",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 907,
    "line": 894,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant5cddeea4ce119fd9fdcb48c7d138705b4cab2132d54fe6845f2f1de13b648c79.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3bd61770af1dbe323fb39363359d3d0cdc90b4c96fd4a2d4acb1713c64bdbd38",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant5cddeea4ce119fd9fdcb48c7d138705b4cab2132d54fe6845f2f1de13b648c79.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f8de983a-2417-6883-6f26-b5c247eaf5da`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 894–907.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fst_prodExtendRight (ab : α₁ × β₁) : (prodExtendRight a e ab).fst = ab.fst := by
  rw [prodExtendRight]
  dsimp
  split_ifs with h
  · rw [h]
  · rfl
#align equiv.perm.fst_prod_extend_right Equiv.Perm.fst_prodExtendRight

end Perm

section

/-- The type of functions to a product `α × β` is equivalent to the type of pairs of functions
`γ → α` and `γ → β`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant5cddeea4ce119fd9fdcb48c7d138705b4cab2132d54fe6845f2f1de13b648c79.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant5cddeea4ce119fd9fdcb48c7d138705b4cab2132d54fe6845f2f1de13b648c79.lean#L894).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `428db1ca88d4c7bdc5d1037f7cdba0c363199d02` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
