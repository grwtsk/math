# totalMap_coordinate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a9efee003f9513dbfd8cc00b16a9ee486124574a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 79,
      "path": "GRWTSK/Analysis/Complex/HolomorphicLineGaugeTopology.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:59441c27-fa03-43d2-6ad5-2051e346883c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:223e18a8-2824-feed-d567-66a1b0246467",
  "kind": "theorem",
  "lexical_name": "totalMap_coordinate",
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
  "slug": "totalmap-coordinate--d364ce4e52dd2bd67e50835d",
  "source": {
    "blob": "a9efee003f9513dbfd8cc00b16a9ee486124574a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 91,
    "line": 79,
    "path": "GRWTSK/Analysis/Complex/HolomorphicLineGaugeTopology.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d364ce4e52dd2bd67e50835da315be198dc2b513ad3dfa242c1977f23b59367f",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/HolomorphicLineGaugeTopology.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:223e18a8-2824-feed-d567-66a1b0246467`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 79–91.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem totalMap_coordinate (G : Gauge C E) (hOpen : D.IsOpenCover)
    (i : ι) (p : (C.vectorBundleCore hOpen).TotalSpace)
    (hi : p.proj.1 ∈ (D.U i).carrier) :
    ((E.vectorBundleCore hOpen).localTriv i (G.totalMap hOpen p)).2 =
      unitValue (G.frame i) ⟨p.proj.1, hi⟩ *
        ((C.vectorBundleCore hOpen).localTriv i p).2 := by
  change E.scalar (D.select p.proj) i p.proj *
      (unitValue (G.frame (D.select p.proj)) ⟨p.proj.1, D.select_mem p.proj⟩ * p.snd) =
    unitValue (G.frame i) ⟨p.proj.1, hi⟩ * (C.scalar (D.select p.proj) i p.proj * p.snd)
  rw [← mul_assoc, ← G.compatible (D.select p.proj) i p.proj (D.select_mem p.proj) hi,
    mul_assoc]

/-- Continuity is proved in local bundle coordinates; raw fiber type equality is not used as proof. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ComplexAnalysis/HolomorphicLineGaugeTopology.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Complex/HolomorphicLineGaugeTopology.lean#L79).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a9efee003f9513dbfd8cc00b16a9ee486124574a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
