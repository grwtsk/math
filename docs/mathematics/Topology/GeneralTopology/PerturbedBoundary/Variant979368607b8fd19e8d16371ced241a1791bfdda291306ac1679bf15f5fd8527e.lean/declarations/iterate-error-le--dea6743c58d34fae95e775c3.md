# iterate_error_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a91cf3fd2b646779b4d384eaf63fc11baaed740e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 250,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/97/979368607b8fd19e8d16371ced241a1791bfdda291306ac1679bf15f5fd8527e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4e3d43b2-5257-af15-a11d-6481343afb3f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:db27cd00-0e97-f53b-e80d-3e64645a27ab",
  "kind": "theorem",
  "lexical_name": "iterate_error_le",
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
  "slug": "iterate-error-le--dea6743c58d34fae95e775c3",
  "source": {
    "blob": "a91cf3fd2b646779b4d384eaf63fc11baaed740e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 299,
    "line": 250,
    "path": "GRWTSK/Topology/GeneralTopology/PerturbedBoundary/Variant979368607b8fd19e8d16371ced241a1791bfdda291306ac1679bf15f5fd8527e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dea6743c58d34fae95e775c3c669e88b1979220698bdaf78f7ed3c5c3441cc42",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/PerturbedBoundary/Variant979368607b8fd19e8d16371ced241a1791bfdda291306ac1679bf15f5fd8527e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:db27cd00-0e97-f53b-e80d-3e64645a27ab`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 250–299.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem iterate_error_le
    (perturbed : PerturbedBoundaryCertificate exact)
    (schedule : ℕ → Schedule)
    {initial : State}
    (initial_mem : initial ∈ exact.basin) :
    ∀ depth,
      nndist
          (iteratePerturbed
            perturbed schedule depth initial)
          exact.boundary ≤
        perturbed.transportedError
          schedule depth
          (nndist initial exact.boundary) := by
  intro depth
  induction depth with
  | zero =>
      simp [iteratePerturbed, transportedError]
  | succ depth inductionHypothesis =>
      calc
        nndist
            (iteratePerturbed
              perturbed schedule (depth + 1) initial)
            exact.boundary ≤
          exact.contraction *
              nndist
                (iteratePerturbed
                  perturbed schedule depth initial)
                exact.boundary +
            perturbed.perturbation depth (schedule depth) := by
              simpa [iteratePerturbed] using
                perturbed.one_step_boundary_error
                  depth
                  (schedule depth)
                  (perturbed.iterate_mem
                    schedule initial_mem depth)
        _ ≤
          exact.contraction *
              perturbed.transportedError
                schedule depth
                (nndist initial exact.boundary) +
            perturbed.perturbation depth (schedule depth) :=
          add_le_add_right
            (mul_le_mul_left'
              inductionHypothesis exact.contraction)
            _
        _ =
          perturbed.transportedError
            schedule (depth + 1)
            (nndist initial exact.boundary) := rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/PerturbedBoundary/Variant979368607b8fd19e8d16371ced241a1791bfdda291306ac1679bf15f5fd8527e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/PerturbedBoundary/Variant979368607b8fd19e8d16371ced241a1791bfdda291306ac1679bf15f5fd8527e.lean#L250).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a91cf3fd2b646779b4d384eaf63fc11baaed740e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
