# ext

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a17491df6ec4d815c0d84a1ecf0df8b52902b03b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 197,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f4/f4369ce38a8dfa2aec2d0910f763443584396b43c9e4ff1501196234f2fbc027.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0bdbf3bf-bbe6-f1fa-fa45-f94048e9a57f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f82d9e7e-1e96-40da-22a0-84e2188347cb",
  "kind": "theorem",
  "lexical_name": "ext",
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
  "slug": "ext--ff3e4add39317d8fa4305a2a",
  "source": {
    "blob": "a17491df6ec4d815c0d84a1ecf0df8b52902b03b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 201,
    "line": 197,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variantf4369ce38a8dfa2aec2d0910f763443584396b43c9e4ff1501196234f2fbc027.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ff3e4add39317d8fa4305a2aa6a1e49a60ece4eda9cd2805ebe955a9e3f36a66",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variantf4369ce38a8dfa2aec2d0910f763443584396b43c9e4ff1501196234f2fbc027.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f82d9e7e-1e96-40da-22a0-84e2188347cb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 197–201.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ext {μ₁ μ₂ : OuterMeasure α} (h : ∀ s, μ₁ s = μ₂ s) : μ₁ = μ₂ :=
  DFunLike.ext _ _ h

/-- A version of `MeasureTheory.OuterMeasure.ext` that assumes `μ₁ s = μ₂ s` on all *nonempty*
sets `s`, and gets `μ₁ ∅ = μ₂ ∅` from `MeasureTheory.OuterMeasure.empty'`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variantf4369ce38a8dfa2aec2d0910f763443584396b43c9e4ff1501196234f2fbc027.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variantf4369ce38a8dfa2aec2d0910f763443584396b43c9e4ff1501196234f2fbc027.lean#L197).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a17491df6ec4d815c0d84a1ecf0df8b52902b03b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
