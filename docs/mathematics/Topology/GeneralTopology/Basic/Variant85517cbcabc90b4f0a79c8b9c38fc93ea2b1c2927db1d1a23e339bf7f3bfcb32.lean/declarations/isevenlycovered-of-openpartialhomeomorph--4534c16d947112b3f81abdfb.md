# IsEvenlyCovered.of_openPartialHomeomorph

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c19662de3e595c9ce71ed4980b9b5d7fe3c51648",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 575,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/85/85517cbcabc90b4f0a79c8b9c38fc93ea2b1c2927db1d1a23e339bf7f3bfcb32.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:bff0c6d9-4a42-046f-7343-0900fc1b691a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b3d5a15c-10ae-3c15-5697-440c0afb5d42",
  "kind": "theorem",
  "lexical_name": "IsEvenlyCovered.of_openPartialHomeomorph",
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
  "slug": "isevenlycovered-of-openpartialhomeomorph--4534c16d947112b3f81abdfb",
  "source": {
    "blob": "c19662de3e595c9ce71ed4980b9b5d7fe3c51648",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 588,
    "line": 575,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant85517cbcabc90b4f0a79c8b9c38fc93ea2b1c2927db1d1a23e339bf7f3bfcb32.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4534c16d947112b3f81abdfb6e5edfc633367e24cce171c670d12a43dc59c9e8",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant85517cbcabc90b4f0a79c8b9c38fc93ea2b1c2927db1d1a23e339bf7f3bfcb32.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b3d5a15c-10ae-3c15-5697-440c0afb5d42`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 575–588.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsEvenlyCovered.of_openPartialHomeomorph
    [T2Space E] [T2Space X] [CompactSpace E] {x : X} (hf : Continuous f)
    (h : ∀ e ∈ f ⁻¹' {x}, ∃ φ : OpenPartialHomeomorph E X, e ∈ φ.source ∧ φ = f) :
    IsEvenlyCovered f x (f ⁻¹' {x}) :=
  hf.isClosedMap.isEvenlyCovered_of_openPartialHomeomorph
    ((isClosed_singleton.preimage hf).isCompact.finite (.of_openPartialHomeomorph f subset_rfl h)) h

/-- If `f : E → X` is a continuous map between Hausdorff spaces with `E` compact, `s` is a subset
of `X` such that `f` restricts to a homeomorphism on a neighborhood of every point of `f ⁻¹' s`,
then `f` is a covering map on `s`.

For example, `s` can be taken to be the set of regular values of a C¹ map `f : E → X`
where `E` and `X` are manifolds of the same dimension with `E` compact, according to
the inverse function theorem (see `ContDiffAt.toOpenPartialHomeomorph`). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant85517cbcabc90b4f0a79c8b9c38fc93ea2b1c2927db1d1a23e339bf7f3bfcb32.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant85517cbcabc90b4f0a79c8b9c38fc93ea2b1c2927db1d1a23e339bf7f3bfcb32.lean#L575).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c19662de3e595c9ce71ed4980b9b5d7fe3c51648` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
