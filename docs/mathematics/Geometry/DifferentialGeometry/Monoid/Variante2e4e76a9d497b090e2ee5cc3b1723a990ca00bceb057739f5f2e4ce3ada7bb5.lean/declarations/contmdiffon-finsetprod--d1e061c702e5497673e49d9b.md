# contMDiffOn_finsetProd'

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
      "line": 407,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e2/e2e4e76a9d497b090e2ee5cc3b1723a990ca00bceb057739f5f2e4ce3ada7bb5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2990e4f3-8a96-f810-5f64-8d15bc29e7ce",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f5381ead-ccfa-5d2b-ca82-a6544332f2ea",
  "kind": "theorem",
  "lexical_name": "contMDiffOn_finsetProd'",
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
  "slug": "contmdiffon-finsetprod--d1e061c702e5497673e49d9b",
  "source": {
    "blob": "9b9686ee034b27560b364fc94453fa340a53cc13",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 416,
    "line": 407,
    "path": "GRWTSK/Geometry/DifferentialGeometry/Monoid/Variante2e4e76a9d497b090e2ee5cc3b1723a990ca00bceb057739f5f2e4ce3ada7bb5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d1e061c702e5497673e49d9b2c0a9cc45886628d2a9808bcfd84d15f0360e887",
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

Occurrence: `result:f5381ead-ccfa-5d2b-ca82-a6544332f2ea`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 407–416.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem contMDiffOn_finsetProd' (h : ∀ i ∈ t, CMDiff[s] n (f i)) :
    CMDiff[s] n (∏ i ∈ t, f i) :=
  fun x hx ↦ contMDiffWithinAt_finsetProd' fun i hi ↦ h i hi x hx

@[deprecated (since := "2026-04-08")] alias contMDiffOn_finset_sum' := contMDiffOn_finsetSum'

@[to_additive existing, deprecated (since := "2026-04-08")]
alias contMDiffOn_finset_prod' := contMDiffOn_finsetProd'

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/Monoid/Variante2e4e76a9d497b090e2ee5cc3b1723a990ca00bceb057739f5f2e4ce3ada7bb5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/Monoid/Variante2e4e76a9d497b090e2ee5cc3b1723a990ca00bceb057739f5f2e4ce3ada7bb5.lean#L407).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9b9686ee034b27560b364fc94453fa340a53cc13` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
