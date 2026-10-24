# angularFourier_finite_sum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "15fbb58a1352087059089b2f6e7a762355aead96",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 130,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3d/3dee90cbe359deef7099d0a6b5590e336c60f737b6fe4c841ecf09f805743c27.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c74643dd-37b3-ddcb-f6ae-2cfefa2c06f6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:756ded86-de3a-6b1f-5e2a-609e5f336492",
  "kind": "theorem",
  "lexical_name": "angularFourier_finite_sum",
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
  "slug": "angularfourier-finite-sum--297ec2ec4fbfa880eee3ec2d",
  "source": {
    "blob": "15fbb58a1352087059089b2f6e7a762355aead96",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 140,
    "line": 130,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/AcousticMultipath/Variant3dee90cbe359deef7099d0a6b5590e336c60f737b6fe4c841ecf09f805743c27.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:297ec2ec4fbfa880eee3ec2dd864b7ea848cdb22d77e8decda6b79bad326b619",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/AcousticMultipath/Variant3dee90cbe359deef7099d0a6b5590e336c60f737b6fe4c841ecf09f805743c27.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:756ded86-de3a-6b1f-5e2a-609e5f336492`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 130–140.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem angularFourier_finite_sum {Path : Type*} (paths : Finset Path)
    (signals : Path → ℝ → ℂ) (integrable : ∀ path ∈ paths, Integrable (signals path))
    (frequency : ℝ) :
    angularFourier (fun time => ∑ path ∈ paths, signals path time) frequency =
      ∑ path ∈ paths, angularFourier (signals path) frequency := by
  unfold angularFourier
  simp_rw [Finset.mul_sum]
  exact integral_finsetSum paths fun path member =>
    angular_fourier_integrable (signals path) (integrable path member) frequency

/-- The finite delayed source model has its exact Fourier factorization with genuine L¹ data. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/AcousticMultipath/Variant3dee90cbe359deef7099d0a6b5590e336c60f737b6fe4c841ecf09f805743c27.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/AcousticMultipath/Variant3dee90cbe359deef7099d0a6b5590e336c60f737b6fe4c841ecf09f805743c27.lean#L130).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `15fbb58a1352087059089b2f6e7a762355aead96` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
