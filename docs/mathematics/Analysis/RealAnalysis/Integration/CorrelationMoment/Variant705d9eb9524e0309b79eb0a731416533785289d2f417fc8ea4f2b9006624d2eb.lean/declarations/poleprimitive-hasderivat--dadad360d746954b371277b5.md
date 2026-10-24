# polePrimitive_hasDerivAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1bf59ce65f4f74b603505d13a23150f1fd929c26",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 28,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/70/705d9eb9524e0309b79eb0a731416533785289d2f417fc8ea4f2b9006624d2eb.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:99a6ebdd-866e-556f-cc68-878f279b8049",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2aea8140-bdc9-525d-73a6-ca6bcc17a37b",
  "kind": "theorem",
  "lexical_name": "polePrimitive_hasDerivAt",
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
  "slug": "poleprimitive-hasderivat--dadad360d746954b371277b5",
  "source": {
    "blob": "1bf59ce65f4f74b603505d13a23150f1fd929c26",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 39,
    "line": 28,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/CorrelationMoment/Variant705d9eb9524e0309b79eb0a731416533785289d2f417fc8ea4f2b9006624d2eb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dadad360d746954b371277b581242e4e87bf5f5dc93514a996028994ad9a7192",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/CorrelationMoment/Variant705d9eb9524e0309b79eb0a731416533785289d2f417fc8ea4f2b9006624d2eb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2aea8140-bdc9-525d-73a6-ca6bcc17a37b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 28–39.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem polePrimitive_hasDerivAt (A σ x : ℝ) (hσ : σ ^ 2 = 1 / 4) :
    HasDerivAt (polePrimitive A σ)
      (Real.exp (σ * x) * (secondInterior A x - bumpInterior A x / 4)) x := by
  have hd := (((hasDerivAt_id x).const_mul σ).exp).mul
    ((firstInterior_hasDerivAt A x).sub ((bumpInterior_hasDerivAt A x).const_mul σ))
  apply hd.congr_deriv
  dsimp only [Pi.sub_apply, id_eq]
  calc
    _ = Real.exp (σ * x) * (secondInterior A x - σ ^ 2 * bumpInterior A x) := by ring
    _ = _ := by rw [hσ]; ring

/-- Both primitive boundary traces are zero, using the actual bump and derivative traces. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/CorrelationMoment/Variant705d9eb9524e0309b79eb0a731416533785289d2f417fc8ea4f2b9006624d2eb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/CorrelationMoment/Variant705d9eb9524e0309b79eb0a731416533785289d2f417fc8ea4f2b9006624d2eb.lean#L28).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1bf59ce65f4f74b603505d13a23150f1fd929c26` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
