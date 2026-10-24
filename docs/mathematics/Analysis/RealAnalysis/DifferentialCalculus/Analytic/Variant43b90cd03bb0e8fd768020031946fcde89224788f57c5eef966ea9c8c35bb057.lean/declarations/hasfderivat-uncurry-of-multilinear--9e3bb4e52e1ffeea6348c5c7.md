# hasFDerivAt_uncurry_of_multilinear

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8e892ed32827bd4cd53f23013c9790c987e315a1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 880,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/43/43b90cd03bb0e8fd768020031946fcde89224788f57c5eef966ea9c8c35bb057.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9697d719-ea43-c369-fd89-a587058850d3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:296436d4-9f13-040a-cfbf-4e7dd70782ca",
  "kind": "theorem",
  "lexical_name": "hasFDerivAt_uncurry_of_multilinear",
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
  "slug": "hasfderivat-uncurry-of-multilinear--9e3bb4e52e1ffeea6348c5c7",
  "source": {
    "blob": "8e892ed32827bd4cd53f23013c9790c987e315a1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 890,
    "line": 880,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Analytic/Variant43b90cd03bb0e8fd768020031946fcde89224788f57c5eef966ea9c8c35bb057.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9e3bb4e52e1ffeea6348c5c705cc65265e56f24f61e870e3473a533ce7cacdbf",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Analytic/Variant43b90cd03bb0e8fd768020031946fcde89224788f57c5eef966ea9c8c35bb057.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:296436d4-9f13-040a-cfbf-4e7dd70782ca`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 880–890.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hasFDerivAt_uncurry_of_multilinear [DecidableEq ι]
    (f : E →L[𝕜] ContinuousMultilinearMap 𝕜 G F) (v : E × Π i, G i) :
    HasFDerivAt (fun (p : E × Π i, G i) ↦ f p.1 p.2)
      ((f.flipMultilinear v.2) ∘L (.fst _ _ _) +
        ∑ i : ι, ((f v.1).toContinuousLinearMap v.2 i) ∘L (.proj _) ∘L (.snd _ _ _)) v :=
  (f ∘L .fst 𝕜 E (∀ i, G i)).hasFDerivAt.continuousMultilinearMap_apply
    (hasFDerivAt_pi'.mp (hasFDerivAt_snd (E := E) (F := ∀ i, G i)))

/-- Given `f` a linear map into multilinear maps, then the derivative
of `x ↦ f (a x) (b₁ x, ..., bₙ x)` at `x` applied to a vector `v` is given by
`f (a' v) (b₁ x, ...., bₙ x) + ∑ i, f a (b₁ x, ..., b'ᵢ v, ..., bₙ x)`. Version inside a set. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Analytic/Variant43b90cd03bb0e8fd768020031946fcde89224788f57c5eef966ea9c8c35bb057.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Analytic/Variant43b90cd03bb0e8fd768020031946fcde89224788f57c5eef966ea9c8c35bb057.lean#L880).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8e892ed32827bd4cd53f23013c9790c987e315a1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
