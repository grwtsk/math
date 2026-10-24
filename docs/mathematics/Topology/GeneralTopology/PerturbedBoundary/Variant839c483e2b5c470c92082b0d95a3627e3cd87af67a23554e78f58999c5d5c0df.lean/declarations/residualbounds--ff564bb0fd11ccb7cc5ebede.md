# residualBounds

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:14bf5dd46c8c9051bcd9e410fb28235eddd9960c56d43d41616dea149b43f87a",
  "kind": "def",
  "lexical_name": "residualBounds",
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
  "slug": "residualbounds--ff564bb0fd11ccb7cc5ebede",
  "source": {
    "blob": "d424d26e4e81bfc0969979311864a25bd48c4f0d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 321,
    "line": 308,
    "path": "GRWTSK/Topology/GeneralTopology/PerturbedBoundary/Variant839c483e2b5c470c92082b0d95a3627e3cd87af67a23554e78f58999c5d5c0df.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ff564bb0fd11ccb7cc5ebede4ab5e14a49cdc609182a3b3cfcb4fc708fe7706c",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/PerturbedBoundary/Variant839c483e2b5c470c92082b0d95a3627e3cd87af67a23554e78f58999c5d5c0df.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:14bf5dd46c8c9051bcd9e410fb28235eddd9960c56d43d41616dea149b43f87a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 308–321.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def residualBounds
    (perturbed : PerturbedBoundaryCertificate exact)
    (schedule : ℕ → Schedule) :
    ℕ → List (Mathematics.Attention.ResidualBound Unit)
  | 0 => []
  | depth + 1 =>
      residualBounds perturbed schedule depth ++
        [{ kind :=
              .reproductiveBehavior
           localError :=
              perturbed.perturbation depth (schedule depth)
           lipschitz := exact.contraction
           proofRef := () }]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/PerturbedBoundary/Variant839c483e2b5c470c92082b0d95a3627e3cd87af67a23554e78f58999c5d5c0df.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/PerturbedBoundary/Variant839c483e2b5c470c92082b0d95a3627e3cd87af67a23554e78f58999c5d5c0df.lean#L308).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d424d26e4e81bfc0969979311864a25bd48c4f0d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
