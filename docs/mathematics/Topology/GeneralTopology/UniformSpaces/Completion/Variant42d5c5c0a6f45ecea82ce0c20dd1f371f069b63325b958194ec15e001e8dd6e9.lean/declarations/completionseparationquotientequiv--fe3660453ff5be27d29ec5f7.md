# completionSeparationQuotientEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0719eb2dfc80c5b88d986b4c4bd0f8f08625a83741e8f3b3e6d199601ffe6c0a",
  "kind": "def",
  "lexical_name": "completionSeparationQuotientEquiv",
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
  "slug": "completionseparationquotientequiv--fe3660453ff5be27d29ec5f7",
  "source": {
    "blob": "2bb3fbc2d4931f9955e903e15ef62d87caba0129",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 513,
    "line": 501,
    "path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/Completion/Variant42d5c5c0a6f45ecea82ce0c20dd1f371f069b63325b958194ec15e001e8dd6e9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fe3660453ff5be27d29ec5f777e256f0897ff1762d8b37c1b86ce15403d7088b",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UniformSpaces/Completion/Variant42d5c5c0a6f45ecea82ce0c20dd1f371f069b63325b958194ec15e001e8dd6e9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0719eb2dfc80c5b88d986b4c4bd0f8f08625a83741e8f3b3e6d199601ffe6c0a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 501–513.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def completionSeparationQuotientEquiv (α : Type u) [UniformSpace α] :
    Completion (SeparationQuotient α) ≃ Completion α := by
  refine ⟨Completion.extension (lift' ((↑) : α → Completion α)),
    Completion.map SeparationQuotient.mk, fun a ↦ ?_, fun a ↦ ?_⟩
  · refine induction_on a (isClosed_eq (continuous_map.comp continuous_extension) continuous_id) ?_
    refine SeparationQuotient.surjective_mk.forall.2 fun a ↦ ?_
    rw [extension_coe (uniformContinuous_lift' _), lift'_mk (uniformContinuous_coe α),
      map_coe uniformContinuous_mk]
  · refine induction_on a
      (isClosed_eq (continuous_extension.comp continuous_map) continuous_id) fun a ↦ ?_
    rw [map_coe uniformContinuous_mk, extension_coe (uniformContinuous_lift' _),
      lift'_mk (uniformContinuous_coe _)]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Topology/GeneralTopology/UniformSpaces/Completion/Variant42d5c5c0a6f45ecea82ce0c20dd1f371f069b63325b958194ec15e001e8dd6e9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UniformSpaces/Completion/Variant42d5c5c0a6f45ecea82ce0c20dd1f371f069b63325b958194ec15e001e8dd6e9.lean#L501).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2bb3fbc2d4931f9955e903e15ef62d87caba0129` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
