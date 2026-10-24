# analyticWithinAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2670a49138c7cc57c30157ad969a9658e25f1816",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 133,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/38/3879afdc6c0ce83822b2462887ffde81208df8f947995a2d9d0240a755c7a4f8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:04de3c79-9b40-b2d6-52e4-b65f768f4668",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fca73986-d1cc-6495-da3f-d95b73492d78",
  "kind": "lemma",
  "lexical_name": "analyticWithinAt",
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
  "slug": "analyticwithinat--b20e569b1b21e12d2476c7b9",
  "source": {
    "blob": "2670a49138c7cc57c30157ad969a9658e25f1816",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 151,
    "line": 133,
    "path": "GRWTSK/Analysis/ComplexAnalysis/CPolynomial/Variant3879afdc6c0ce83822b2462887ffde81208df8f947995a2d9d0240a755c7a4f8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b20e569b1b21e12d2476c7b9efe4fee80db6a6c9e47ded09087b1e0e6340b2d4",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/CPolynomial/Variant3879afdc6c0ce83822b2462887ffde81208df8f947995a2d9d0240a755c7a4f8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fca73986-d1cc-6495-da3f-d95b73492d78`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 133–151.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma analyticWithinAt : AnalyticWithinAt 𝕜 f s x := f.analyticAt.analyticWithinAt

end ContinuousMultilinearMap


/-!
### Continuous linear maps into continuous multilinear maps

We show that a continuous linear map into continuous multilinear maps is continuously polynomial
(as a function of two variables, i.e., uncurried). Therefore, it is also analytic.
-/

namespace ContinuousLinearMap

variable {ι : Type*} {Em : ι → Type*} [∀ i, NormedAddCommGroup (Em i)] [∀ i, NormedSpace 𝕜 (Em i)]
  [Fintype ι] (f : G →L[𝕜] ContinuousMultilinearMap 𝕜 Em F)
  {s : Set (G × (Π i, Em i))} {x : G × (Π i, Em i)}

/-- Formal multilinear series associated to a linear map into multilinear maps. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/CPolynomial/Variant3879afdc6c0ce83822b2462887ffde81208df8f947995a2d9d0240a755c7a4f8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/CPolynomial/Variant3879afdc6c0ce83822b2462887ffde81208df8f947995a2d9d0240a755c7a4f8.lean#L133).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2670a49138c7cc57c30157ad969a9658e25f1816` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
