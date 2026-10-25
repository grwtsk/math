# tg05_edgeInteriorDisjointness

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a15fea98efc728e4a1c5d2a720572ac3bee2366d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 11,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d1/d1398646ce5a9a90ca6890032ff7b051e2ccdea515a3f49845f78bc8ca91fe92.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3776ab2c-7c88-5995-9608-01e8c9128e43",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:088a4bbd-92cf-4b4e-055a-7efb53dcbd3c",
  "kind": "theorem",
  "lexical_name": "tg05_edgeInteriorDisjointness",
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
  "slug": "tg05-edgeinteriordisjointness--d77f63303080e28bf503ba60",
  "source": {
    "blob": "a15fea98efc728e4a1c5d2a720572ac3bee2366d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 22,
    "line": 11,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TG05EdgeInteriorDisjointness/Variantd1398646ce5a9a90ca6890032ff7b051e2ccdea515a3f49845f78bc8ca91fe92.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d77f63303080e28bf503ba60ca9981400e371789821bc99ed84d6ddb4d2f79de",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TG05EdgeInteriorDisjointness/Variantd1398646ce5a9a90ca6890032ff7b051e2ccdea515a3f49845f78bc8ca91fe92.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:088a4bbd-92cf-4b4e-055a-7efb53dcbd3c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 11–22.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tg05_edgeInteriorDisjointness
    {Vertex : Type uVertex} {Edge : Type uEdge}
    (G : DirectedGraph Vertex Edge)
    (I : ClosedInterval.{uInterval}) : TG05Claim G I where
  distinctInteriors := by
    intro e f hef x he hf
    exact distinct_edgeInteriors_disjoint hef he hf
  interiorsAvoidVertices := by
    intro e x he v hv
    exact edgeInterior_avoids_vertices he hv

end FCRS.ControlledSpherical.TopologicalTheorems
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TG05EdgeInteriorDisjointness/Variantd1398646ce5a9a90ca6890032ff7b051e2ccdea515a3f49845f78bc8ca91fe92.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TG05EdgeInteriorDisjointness/Variantd1398646ce5a9a90ca6890032ff7b051e2ccdea515a3f49845f78bc8ca91fe92.lean#L11).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a15fea98efc728e4a1c5d2a720572ac3bee2366d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
