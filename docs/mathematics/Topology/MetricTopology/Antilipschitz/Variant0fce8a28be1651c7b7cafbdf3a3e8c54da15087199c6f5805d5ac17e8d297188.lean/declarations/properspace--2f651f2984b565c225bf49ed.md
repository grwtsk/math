# properSpace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:65090d0f-4800-0204-58e5-1df507176e81",
  "kind": "theorem",
  "lexical_name": "properSpace",
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
  "slug": "properspace--2f651f2984b565c225bf49ed",
  "source": {
    "blob": "1bcccb07943207b13e0b65971b630235f515a97e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 215,
    "line": 205,
    "path": "GRWTSK/Topology/MetricTopology/Antilipschitz/Variant0fce8a28be1651c7b7cafbdf3a3e8c54da15087199c6f5805d5ac17e8d297188.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2f651f2984b565c225bf49edd62045b2d571f71cb482b3a71e6d7af53133247e",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Antilipschitz/Variant0fce8a28be1651c7b7cafbdf3a3e8c54da15087199c6f5805d5ac17e8d297188.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:65090d0f-4800-0204-58e5-1df507176e81`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 205–215.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem properSpace {α : Type*} [MetricSpace α] {K : ℝ≥0} {f : α → β} [ProperSpace α]
    (hK : AntilipschitzWith K f) (f_cont : Continuous f) (hf : Function.Surjective f) :
    ProperSpace β := by
  refine ⟨fun x₀ r => ?_⟩
  let K := f ⁻¹' closedBall x₀ r
  have A : IsClosed K := isClosed_closedBall.preimage f_cont
  have B : IsBounded K := hK.isBounded_preimage isBounded_closedBall
  have : IsCompact K := isCompact_iff_isClosed_bounded.2 ⟨A, B⟩
  convert this.image f_cont
  exact (hf.image_preimage _).symm

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Antilipschitz/Variant0fce8a28be1651c7b7cafbdf3a3e8c54da15087199c6f5805d5ac17e8d297188.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Antilipschitz/Variant0fce8a28be1651c7b7cafbdf3a3e8c54da15087199c6f5805d5ac17e8d297188.lean#L205).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1bcccb07943207b13e0b65971b630235f515a97e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
