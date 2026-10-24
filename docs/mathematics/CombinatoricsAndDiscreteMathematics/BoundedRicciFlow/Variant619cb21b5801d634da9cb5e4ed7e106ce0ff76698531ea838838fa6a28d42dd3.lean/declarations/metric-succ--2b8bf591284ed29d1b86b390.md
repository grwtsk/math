# metric_succ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "65ed1b176deaae90eb17ef276301fc01b94d7a81",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 82,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/61/619cb21b5801d634da9cb5e4ed7e106ce0ff76698531ea838838fa6a28d42dd3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:317499d6-cbc0-d4ce-af37-9be764e6b79a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0e69458e-3188-0e21-579e-74edabeb79ab",
  "kind": "theorem",
  "lexical_name": "metric_succ",
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
  "slug": "metric-succ--2b8bf591284ed29d1b86b390",
  "source": {
    "blob": "65ed1b176deaae90eb17ef276301fc01b94d7a81",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 90,
    "line": 82,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/BoundedRicciFlow/Variant619cb21b5801d634da9cb5e4ed7e106ce0ff76698531ea838838fa6a28d42dd3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2b8bf591284ed29d1b86b3902d8e5fea1a6e156a35df26e5058d2a7bd13ed61c",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/BoundedRicciFlow/Variant619cb21b5801d634da9cb5e4ed7e106ce0ff76698531ea838838fa6a28d42dd3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0e69458e-3188-0e21-579e-74edabeb79ab`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 82–90.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem metric_succ
    (flow : BoundedRicciReferenceFlow T)
    (k : Fin flow.horizon) :
    flow.metric ⟨k.1 + 1, Nat.succ_lt_succ k.2⟩ =
      flow.model.metricStep
        (flow.metric ⟨k.1, Nat.lt_succ_of_lt k.2⟩) :=
  flow.metric_step k

/-- Distance to the fixed reference cannot increase at a certified step. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/BoundedRicciFlow/Variant619cb21b5801d634da9cb5e4ed7e106ce0ff76698531ea838838fa6a28d42dd3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/BoundedRicciFlow/Variant619cb21b5801d634da9cb5e4ed7e106ce0ff76698531ea838838fa6a28d42dd3.lean#L82).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `65ed1b176deaae90eb17ef276301fc01b94d7a81` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
