# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:95fde800a7e483c516d528f790b62fdcb3f792d7aa718519c7ec4659ed100bb4",
  "kind": "example",
  "lexical_name": null,
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
  "slug": "example--afc69a1d34a64889d444b9cb",
  "source": {
    "blob": "5fa54fbb1735d69b863607ed4f333a5ae591678d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 7,
    "line": 3,
    "path": "GRWTSK/NumberTheory/Moebius/FiniteLaplaceTransform/Checks/Negative/MissingWeightedEndpoint.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:afc69a1d34a64889d444b9cb72f4b70dece499a8492ff98fc6d352b4069f8d33",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/FiniteLaplaceTransform/Checks/Negative/MissingWeightedEndpoint.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:95fde800a7e483c516d528f790b62fdcb3f792d7aa718519c7ec4659ed100bb4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 3–7.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example {T : ℝ} (hT : 0 ≤ T) {z s : ℂ} (hs : s = z+1/2)
    (hz : z ≠ 0) (hs0 : s ≠ 0) :
    noteWindowLaplace wholePickup z T = pickupDirichletPrefix ⌊Real.exp T⌋₊ s / (z*s) +
      2*Complex.exp (-s*T)/s*(pickupMertensPrefix ⌊Real.exp T⌋₊ : ℂ) := by
  exact wholePickup_cutoff_laplace hT hs hz hs0
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/NumberTheory/Moebius/FiniteLaplaceTransform/Checks/Negative/MissingWeightedEndpoint.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/FiniteLaplaceTransform/Checks/Negative/MissingWeightedEndpoint.lean#L3).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5fa54fbb1735d69b863607ed4f333a5ae591678d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
