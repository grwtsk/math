# PerturbedBoundaryCertificate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e842dcc0cb0f51978001a1c7c26d2bbf49d6fa2edd5f95a34aa7b2c54b153062",
  "kind": "structure",
  "lexical_name": "PerturbedBoundaryCertificate",
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
  "slug": "perturbedboundarycertificate--cf1facb69d864b3cdcdb6131",
  "source": {
    "blob": "d424d26e4e81bfc0969979311864a25bd48c4f0d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 51,
    "line": 27,
    "path": "GRWTSK/Topology/GeneralTopology/PerturbedBoundary/Variant839c483e2b5c470c92082b0d95a3627e3cd87af67a23554e78f58999c5d5c0df.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cf1facb69d864b3cdcdb61318aeec8b62dc7567fc18ce9bab567b3aff9a4eb61",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/PerturbedBoundary/Variant839c483e2b5c470c92082b0d95a3627e3cd87af67a23554e78f58999c5d5c0df.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e842dcc0cb0f51978001a1c7c26d2bbf49d6fa2edd5f95a34aa7b2c54b153062`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 27–51.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure PerturbedBoundaryCertificate
    {State : Type u}
    {Schedule : Type v}
    [PseudoMetricSpace State]
    (exact :
      ContractiveBoundaryCertificate State Schedule) where
  implementedStep : ℕ → Schedule → State → State
  perturbation : ℕ → Schedule → ℝ≥0
  implementedInvariant :
    ∀ depth schedule {state},
      state ∈ exact.basin →
      implementedStep depth schedule state ∈ exact.basin
  localDefect :
    ∀ depth schedule {state},
      state ∈ exact.basin →
      nndist
          (implementedStep depth schedule state)
          (exact.step schedule state) ≤
        perturbation depth schedule

/--
Robust basin custody derives implemented invariance from the declared local
error budget.  Direct `implementedInvariant` remains the stronger primitive
form accepted by `PerturbedBoundaryCertificate`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/PerturbedBoundary/Variant839c483e2b5c470c92082b0d95a3627e3cd87af67a23554e78f58999c5d5c0df.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/PerturbedBoundary/Variant839c483e2b5c470c92082b0d95a3627e3cd87af67a23554e78f58999c5d5c0df.lean#L27).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d424d26e4e81bfc0969979311864a25bd48c4f0d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
