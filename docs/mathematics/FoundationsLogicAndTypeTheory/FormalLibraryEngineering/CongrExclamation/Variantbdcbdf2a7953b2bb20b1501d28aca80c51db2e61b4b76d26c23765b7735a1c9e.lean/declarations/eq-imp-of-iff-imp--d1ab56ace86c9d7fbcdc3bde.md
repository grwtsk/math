# eq_imp_of_iff_imp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "43e8ba19f043c5b47163c53387cde93eab4a6123",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 502,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/bd/bdcbdf2a7953b2bb20b1501d28aca80c51db2e61b4b76d26c23765b7735a1c9e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:cdc62ba0-326d-c557-1303-3b53b769e59d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:45540c43-d278-0da9-39f1-1c1bc165e068",
  "kind": "theorem",
  "lexical_name": "eq_imp_of_iff_imp",
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
  "slug": "eq-imp-of-iff-imp--d1ab56ace86c9d7fbcdc3bde",
  "source": {
    "blob": "43e8ba19f043c5b47163c53387cde93eab4a6123",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 518,
    "line": 502,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrExclamation/Variantbdcbdf2a7953b2bb20b1501d28aca80c51db2e61b4b76d26c23765b7735a1c9e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d1ab56ace86c9d7fbcdc3bdea22f5f6829b15f92c530d3f49d85a7f3c31b086a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrExclamation/Variantbdcbdf2a7953b2bb20b1501d28aca80c51db2e61b4b76d26c23765b7735a1c9e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:45540c43-d278-0da9-39f1-1c1bc165e068`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 502–518.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem eq_imp_of_iff_imp {x y : Prop} {p : x = y → Prop}
    (h : (he : x ↔ y) → p (propext he)) (he : x = y) : p he := by
  cases he
  exact h Iff.rfl

/--
Does `Lean.MVarId.intros` but then cleans up the introduced hypotheses, removing anything
that is trivial. If there are any patterns in the current `CongrMetaM` state then instead
of `Lean.MVarId.intros` it does `Lean.Elab..Tactic.RCases.rintro`.

Cleaning up includes:
- deleting hypotheses of the form `HEq x x`, `x = x`, and `x ↔ x`.
- deleting Prop hypotheses that are already in the local context.
- converting `HEq x y` to `x = y` if possible.
- converting `x = y` to `x ↔ y` if possible.
-/
partial
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrExclamation/Variantbdcbdf2a7953b2bb20b1501d28aca80c51db2e61b4b76d26c23765b7735a1c9e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrExclamation/Variantbdcbdf2a7953b2bb20b1501d28aca80c51db2e61b4b76d26c23765b7735a1c9e.lean#L502).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `43e8ba19f043c5b47163c53387cde93eab4a6123` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
