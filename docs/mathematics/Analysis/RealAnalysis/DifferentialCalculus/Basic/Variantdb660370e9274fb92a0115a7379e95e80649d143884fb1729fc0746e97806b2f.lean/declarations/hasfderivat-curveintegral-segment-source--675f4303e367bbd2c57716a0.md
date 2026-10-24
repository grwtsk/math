# HasFDerivAt.curveIntegral_segment_source'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5f66d4defe7ec4507090c529606544578bcc18aa",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 549,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/db/db660370e9274fb92a0115a7379e95e80649d143884fb1729fc0746e97806b2f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:750fb39c-a162-bc9a-b793-4249af5fff76",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:92bea3ec-26ff-39b5-fe02-de31a65fcca7",
  "kind": "theorem",
  "lexical_name": "HasFDerivAt.curveIntegral_segment_source'",
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
  "slug": "hasfderivat-curveintegral-segment-source--675f4303e367bbd2c57716a0",
  "source": {
    "blob": "5f66d4defe7ec4507090c529606544578bcc18aa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 555,
    "line": 549,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variantdb660370e9274fb92a0115a7379e95e80649d143884fb1729fc0746e97806b2f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:675f4303e367bbd2c57716a0730876a9515e273b51398c500d7bd16af593679b",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variantdb660370e9274fb92a0115a7379e95e80649d143884fb1729fc0746e97806b2f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:92bea3ec-26ff-39b5-fe02-de31a65fcca7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 549–555.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem HasFDerivAt.curveIntegral_segment_source' (hω : ∀ᶠ z in 𝓝 a, ContinuousAt ω z) :
    HasFDerivAt (∫ᶜ x in .segment a ·, ω x) (ω a) a :=
  HasFDerivWithinAt.curveIntegral_segment_source' convex_univ
    (by simpa only [nhdsWithin_univ, continuousWithinAt_univ]) (mem_univ _) |>.hasFDerivAt_of_univ

/-- The integral of `ω` along `[a -[ℝ] b]`, as a function of `b`, has derivative `ω a` at `b = a`.
This is a `HasFDerivAt` version assuming that `ω` is continuous on the whole space. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variantdb660370e9274fb92a0115a7379e95e80649d143884fb1729fc0746e97806b2f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variantdb660370e9274fb92a0115a7379e95e80649d143884fb1729fc0746e97806b2f.lean#L549).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5f66d4defe7ec4507090c529606544578bcc18aa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
