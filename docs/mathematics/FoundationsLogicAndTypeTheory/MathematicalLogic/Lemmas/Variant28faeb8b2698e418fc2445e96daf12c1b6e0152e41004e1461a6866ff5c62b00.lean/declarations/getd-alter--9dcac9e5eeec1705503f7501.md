# getD_alter

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "408eb259d59d3644103917416f8020a5465c6cda",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 4028,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/28/28faeb8b2698e418fc2445e96daf12c1b6e0152e41004e1461a6866ff5c62b00.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0c4bfedc-9017-1e36-c992-9bc7421a1ffa",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:38d75208-a2ce-5893-0fc7-d56e8894e1d8",
  "kind": "theorem",
  "lexical_name": "getD_alter",
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
  "slug": "getd-alter--9dcac9e5eeec1705503f7501",
  "source": {
    "blob": "408eb259d59d3644103917416f8020a5465c6cda",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 4036,
    "line": 4028,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Lemmas/Variant28faeb8b2698e418fc2445e96daf12c1b6e0152e41004e1461a6866ff5c62b00.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9dcac9e5eeec1705503f7501d4318da80636122fef7ce19915d20049511dccdc",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Lemmas/Variant28faeb8b2698e418fc2445e96daf12c1b6e0152e41004e1461a6866ff5c62b00.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:38d75208-a2ce-5893-0fc7-d56e8894e1d8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 4028–4036.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem getD_alter [TransCmp cmp] (h : t.WF) {k k' : α} {fallback : β} {f : Option β → Option β} :
    getD (alter t k f) k' fallback =
      if cmp k k' = .eq then
        f (get? t k) |>.getD fallback
      else
        getD t k' fallback :=
  Impl.Const.getD_alter! h

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Lemmas/Variant28faeb8b2698e418fc2445e96daf12c1b6e0152e41004e1461a6866ff5c62b00.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Lemmas/Variant28faeb8b2698e418fc2445e96daf12c1b6e0152e41004e1461a6866ff5c62b00.lean#L4028).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `408eb259d59d3644103917416f8020a5465c6cda` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
