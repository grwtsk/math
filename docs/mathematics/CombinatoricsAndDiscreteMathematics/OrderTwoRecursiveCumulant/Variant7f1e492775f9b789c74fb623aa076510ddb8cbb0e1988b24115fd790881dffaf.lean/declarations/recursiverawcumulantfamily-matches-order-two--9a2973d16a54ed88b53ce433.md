# recursiveRawCumulantFamily_matches_order_two

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "544bffdab4ed933bb8f836249c68bccbee2eca16",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 186,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7f/7f1e492775f9b789c74fb623aa076510ddb8cbb0e1988b24115fd790881dffaf.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:62c1ceef-76d5-9183-06ec-395b3157f20b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2b3bd826-9e2a-74f3-ebbe-4da7cbda3cf9",
  "kind": "theorem",
  "lexical_name": "recursiveRawCumulantFamily_matches_order_two",
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
  "slug": "recursiverawcumulantfamily-matches-order-two--9a2973d16a54ed88b53ce433",
  "source": {
    "blob": "544bffdab4ed933bb8f836249c68bccbee2eca16",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 199,
    "line": 186,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderTwoRecursiveCumulant/Variant7f1e492775f9b789c74fb623aa076510ddb8cbb0e1988b24115fd790881dffaf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9a2973d16a54ed88b53ce433863bd40f02b57772816fdab351b081a84a7ddb37",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderTwoRecursiveCumulant/Variant7f1e492775f9b789c74fb623aa076510ddb8cbb0e1988b24115fd790881dffaf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2b3bd826-9e2a-74f3-ebbe-4da7cbda3cf9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 186–199.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem recursiveRawCumulantFamily_matches_order_two
    (theta : E) :
    (∀ directions : Fin 1 → E,
      F.recursiveRawCumulantFamily theta 1 directions =
        F.firstDirectionalCumulant theta directions) ∧
    (∀ directions : Fin 2 → E,
      F.recursiveRawCumulantFamily theta 2 directions =
        F.secondDirectionalCumulant theta directions) :=
  ⟨F.recursiveRawCumulantFamily_one theta,
    F.recursiveRawCumulantFamily_two theta⟩

end FiniteLogAffineFamily

end FormalResearch.PositiveAtlas
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderTwoRecursiveCumulant/Variant7f1e492775f9b789c74fb623aa076510ddb8cbb0e1988b24115fd790881dffaf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderTwoRecursiveCumulant/Variant7f1e492775f9b789c74fb623aa076510ddb8cbb0e1988b24115fd790881dffaf.lean#L186).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `544bffdab4ed933bb8f836249c68bccbee2eca16` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
