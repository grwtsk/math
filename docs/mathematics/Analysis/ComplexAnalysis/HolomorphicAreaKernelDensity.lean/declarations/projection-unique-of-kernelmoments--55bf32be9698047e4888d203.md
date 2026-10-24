# projection_unique_of_kernelMoments

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6b71b9ba01b8b76ef64ae1226e70a66233fc822a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 144,
      "path": "GRWTSK/Analysis/Complex/HolomorphicAreaKernelDensity.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1700268e-db0a-815e-d8bf-e73715493e94",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bb03eb9f-3b1e-64fc-7b0d-116201063c3a",
  "kind": "theorem",
  "lexical_name": "projection_unique_of_kernelMoments",
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
  "slug": "projection-unique-of-kernelmoments--55bf32be9698047e4888d203",
  "source": {
    "blob": "6b71b9ba01b8b76ef64ae1226e70a66233fc822a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 161,
    "line": 144,
    "path": "GRWTSK/Analysis/Complex/HolomorphicAreaKernelDensity.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:55bf32be9698047e4888d20355e8f49aae10955a3097adf95f35f012c3371369",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/HolomorphicAreaKernelDensity.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bb03eb9f-3b1e-64fc-7b0d-116201063c3a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 144–161.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem projection_unique_of_kernelMoments (hOpen : D.IsOpenCover) (S : Set D.X.carrier)
    (hS : Dense S) (g p : AmbientL2 D.X) (hp : p ∈ holomorphicSubspace hOpen)
    (hmom : ∀ x ∈ S, inner ℂ (l2Embedding hOpen (kernelVector hOpen x)) (g - p) = 0) :
    p = bergmanProjection hOpen g := by
  obtain ⟨v, rfl⟩ := hp
  have hv : v = bergmanLift hOpen g := by
    apply evaluation_ext_on_dense hOpen S hS
    intro x hx
    have hm := hmom x hx
    rw [inner_sub_right, toL2_inner] at hm
    have hc := bergmanLift_inner hOpen (kernelVector hOpen x) g
    change inner ℂ (kernelVector hOpen x) (bergmanLift hOpen g) =
      inner ℂ (l2Embedding hOpen (kernelVector hOpen x)) g at hc
    rw [← hc, kernelVector_evaluation, kernelVector_evaluation, sub_eq_zero] at hm
    exact hm.symm
  rw [bergmanProjection_apply, hv]

/-- Dense kernel moments detect the projection, not arbitrary ambient input values or classes. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ComplexAnalysis/HolomorphicAreaKernelDensity.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Complex/HolomorphicAreaKernelDensity.lean#L144).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6b71b9ba01b8b76ef64ae1226e70a66233fc822a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
