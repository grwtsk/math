# op_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "63018aadab33de8bcc38b68918cbc9fac9d28e30",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 30,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/76/767e70348b9d3cb257985532955ac2581be5c5be78e04f9871ca200db80789f1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:dfce5f44-2f21-4232-9477-19884d478e8a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:aacb6d8d-7147-f1a3-c10f-99797489fb20",
  "kind": "lemma",
  "lexical_name": "op_iff",
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
  "slug": "op-iff--50163e6fe8cfab96973ffd1a",
  "source": {
    "blob": "63018aadab33de8bcc38b68918cbc9fac9d28e30",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 34,
    "line": 30,
    "path": "GRWTSK/Algebra/GroupTheory/Opposite/Variant767e70348b9d3cb257985532955ac2581be5c5be78e04f9871ca200db80789f1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:50163e6fe8cfab96973ffd1a48ab9695541d25bbfdcf6bd19ed5ba18359300fb",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Opposite/Variant767e70348b9d3cb257985532955ac2581be5c5be78e04f9871ca200db80789f1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:aacb6d8d-7147-f1a3-c10f-99797489fb20`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 30–34.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma op_iff {c : RingCon R} {x y : Rᵐᵒᵖ} : c.op x y ↔ c y.unop x.unop := Iff.rfl

/--
If `c` is a `RingCon Rᵐᵒᵖ`, then `(a, b) ↦ c b.op a.op` is a `RingCon R`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Opposite/Variant767e70348b9d3cb257985532955ac2581be5c5be78e04f9871ca200db80789f1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Opposite/Variant767e70348b9d3cb257985532955ac2581be5c5be78e04f9871ca200db80789f1.lean#L30).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `63018aadab33de8bcc38b68918cbc9fac9d28e30` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
