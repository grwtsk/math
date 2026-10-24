# contMDiffAt_finprod

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9b9686ee034b27560b364fc94453fa340a53cc13",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 375,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e2/e2e4e76a9d497b090e2ee5cc3b1723a990ca00bceb057739f5f2e4ce3ada7bb5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7df40ea2-225a-a369-bcab-36ebb7393408",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ea25edbc-6a41-2759-0026-5a01b8463ea3",
  "kind": "theorem",
  "lexical_name": "contMDiffAt_finprod",
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
  "slug": "contmdiffat-finprod--c0f7deeaed4ebc720498ba09",
  "source": {
    "blob": "9b9686ee034b27560b364fc94453fa340a53cc13",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 380,
    "line": 375,
    "path": "GRWTSK/Geometry/DifferentialGeometry/Monoid/Variante2e4e76a9d497b090e2ee5cc3b1723a990ca00bceb057739f5f2e4ce3ada7bb5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c0f7deeaed4ebc720498ba09de2696b35101d568a66f42eeddb6d080a57c61b8",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/Monoid/Variante2e4e76a9d497b090e2ee5cc3b1723a990ca00bceb057739f5f2e4ce3ada7bb5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ea25edbc-6a41-2759-0026-5a01b8463ea3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 375–380.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem contMDiffAt_finprod
    (lf : LocallyFinite fun i ↦ mulSupport <| f i) (h : ∀ i, CMDiffAt n (f i) x₀) :
    CMDiffAt n (fun x ↦ ∏ᶠ i, f i x) x₀ :=
  contMDiffWithinAt_finprod lf h

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/Monoid/Variante2e4e76a9d497b090e2ee5cc3b1723a990ca00bceb057739f5f2e4ce3ada7bb5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/Monoid/Variante2e4e76a9d497b090e2ee5cc3b1723a990ca00bceb057739f5f2e4ce3ada7bb5.lean#L375).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9b9686ee034b27560b364fc94453fa340a53cc13` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
