# vsub_mem_vectorSpan_pair

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5c5c3426696924de352f23248559894bf6f813be",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 895,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6e/6e329af15cc187e0292097c7d6f2e4270aa49b519021fa474951ef8c1219963c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:494caa54-c94e-bac2-92dc-9066813ee7ad",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:798bfee8-f25a-671a-8aa8-75f74e5cc73d",
  "kind": "theorem",
  "lexical_name": "vsub_mem_vectorSpan_pair",
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
  "slug": "vsub-mem-vectorspan-pair--862de323a024b38d2042d22b",
  "source": {
    "blob": "5c5c3426696924de352f23248559894bf6f813be",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 898,
    "line": 895,
    "path": "GRWTSK/Geometry/ConvexGeometry/Defs/Variant6e329af15cc187e0292097c7d6f2e4270aa49b519021fa474951ef8c1219963c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:862de323a024b38d2042d22b2f857063885da0dfe04d01c7b815a698ae9b4720",
  "verification": {
    "reference": "docs/verification/Geometry/ConvexGeometry/Defs/Variant6e329af15cc187e0292097c7d6f2e4270aa49b519021fa474951ef8c1219963c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:798bfee8-f25a-671a-8aa8-75f74e5cc73d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 895–898.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem vsub_mem_vectorSpan_pair (p₁ p₂ : P) : p₁ -ᵥ p₂ ∈ vectorSpan k ({p₁, p₂} : Set P) :=
  vsub_mem_vectorSpan _ (Set.mem_insert _ _) (Set.mem_insert_of_mem _ (Set.mem_singleton _))

/-- The difference between two points (reversed) lies in their `vectorSpan`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/ConvexGeometry/Defs/Variant6e329af15cc187e0292097c7d6f2e4270aa49b519021fa474951ef8c1219963c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ConvexGeometry/Defs/Variant6e329af15cc187e0292097c7d6f2e4270aa49b519021fa474951ef8c1219963c.lean#L895).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5c5c3426696924de352f23248559894bf6f813be` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
