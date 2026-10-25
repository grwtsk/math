# optionSubtype_symm_apply_symm_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "39d9a8f957ff0a321b0c70fb93b9b11de7231da2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 261,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a8/a8931fdd9a9fb3b905ff5584da160379af0f47dddf6e65dba74a9e54f043852a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9dde5510-662f-dcf2-a902-5b3a5f2caff0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:51f4c924-d48a-9d7e-e9d1-b72c8d7241ee",
  "kind": "theorem",
  "lexical_name": "optionSubtype_symm_apply_symm_apply",
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
  "slug": "optionsubtype-symm-apply-symm-apply--a9106fc6125ee6ccb956cbff",
  "source": {
    "blob": "39d9a8f957ff0a321b0c70fb93b9b11de7231da2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 268,
    "line": 261,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Option/Varianta8931fdd9a9fb3b905ff5584da160379af0f47dddf6e65dba74a9e54f043852a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a9106fc6125ee6ccb956cbfff80bfbfe56869488ef31da46dde1c8c7c999651a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Option/Varianta8931fdd9a9fb3b905ff5584da160379af0f47dddf6e65dba74a9e54f043852a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:51f4c924-d48a-9d7e-e9d1-b72c8d7241ee`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 261–268.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem optionSubtype_symm_apply_symm_apply [DecidableEq β] (x : β) (e : α ≃ { y : β // y ≠ x })
    (b : { y : β // y ≠ x }) : ((optionSubtype x).symm e : Option α ≃ β).symm b = e.symm b := by
  simp only [optionSubtype, coe_fn_symm_mk, Subtype.coe_mk,
             Subtype.coe_eta, dite_eq_ite, ite_eq_right_iff]
  exact fun h => False.elim (b.property h)
#align equiv.option_subtype_symm_apply_symm_apply Equiv.optionSubtype_symm_apply_symm_apply

end Equiv
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Option/Varianta8931fdd9a9fb3b905ff5584da160379af0f47dddf6e65dba74a9e54f043852a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Option/Varianta8931fdd9a9fb3b905ff5584da160379af0f47dddf6e65dba74a9e54f043852a.lean#L261).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `39d9a8f957ff0a321b0c70fb93b9b11de7231da2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
