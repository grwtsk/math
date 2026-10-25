# sumCompl_symm_apply_neg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "684c759195ec1f47d7fb18b156a10aa6aeabdd3c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 299,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/df/df604983467488d4bc91a59822530bc04cad0ec59a0ca7831e08c5932d9cb791.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e6c6778c-09ec-a265-1b32-7cc2500ec969",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1d7b4e11-19ed-2be1-587e-ef0235d171eb",
  "kind": "theorem",
  "lexical_name": "sumCompl_symm_apply_neg",
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
  "slug": "sumcompl-symm-apply-neg--bad12664aaf255de9c061cae",
  "source": {
    "blob": "684c759195ec1f47d7fb18b156a10aa6aeabdd3c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 309,
    "line": 299,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variantdf604983467488d4bc91a59822530bc04cad0ec59a0ca7831e08c5932d9cb791.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bad12664aaf255de9c061cae202a247efa10cfbd8e3dc905595eac77e976060f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variantdf604983467488d4bc91a59822530bc04cad0ec59a0ca7831e08c5932d9cb791.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1d7b4e11-19ed-2be1-587e-ef0235d171eb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 299–309.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sumCompl_symm_apply_neg {α} {p : α → Prop} [DecidablePred p] (x : {x // ¬ p x}) :
    (sumCompl p).symm x = Sum.inr x :=
  sumCompl_symm_apply_of_neg x.2

end sumCompl

section

open Sum

/-- Type product is left distributive with respect to type sum up to an equivalence. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variantdf604983467488d4bc91a59822530bc04cad0ec59a0ca7831e08c5932d9cb791.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variantdf604983467488d4bc91a59822530bc04cad0ec59a0ca7831e08c5932d9cb791.lean#L299).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `684c759195ec1f47d7fb18b156a10aa6aeabdd3c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
