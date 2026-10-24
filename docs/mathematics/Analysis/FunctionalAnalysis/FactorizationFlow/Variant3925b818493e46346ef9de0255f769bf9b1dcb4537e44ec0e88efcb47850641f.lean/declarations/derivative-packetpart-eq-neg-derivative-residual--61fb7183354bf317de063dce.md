# derivative_packetPart_eq_neg_derivative_residual

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b4df58f9-3992-f079-f645-cd7b20b59c71",
  "kind": "theorem",
  "lexical_name": "derivative_packetPart_eq_neg_derivative_residual",
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
  "slug": "derivative-packetpart-eq-neg-derivative-residual--61fb7183354bf317de063dce",
  "source": {
    "blob": "6014eb5c6a15ad2542deae08dfadebe6e61de6d3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 199,
    "line": 158,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/FactorizationFlow/Variant3925b818493e46346ef9de0255f769bf9b1dcb4537e44ec0e88efcb47850641f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:61fb7183354bf317de063dce4505c3194d08fa302e1590749fbedc04df38c4bc",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/FactorizationFlow/Variant3925b818493e46346ef9de0255f769bf9b1dcb4537e44ec0e88efcb47850641f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b4df58f9-3992-f079-f645-cd7b20b59c71`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 158–199.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem derivative_packetPart_eq_neg_derivative_residual
    {Left Right LeftPacketSpace RightPacketSpace : Type*}
    [Fintype Left] [Fintype Right] [DecidableEq Left] [DecidableEq Right]
    [NormedAddCommGroup LeftPacketSpace]
    [InnerProductSpace ℂ LeftPacketSpace] [CompleteSpace LeftPacketSpace]
    [NormedAddCommGroup RightPacketSpace]
    [InnerProductSpace ℂ RightPacketSpace] [CompleteSpace RightPacketSpace]
    {leftIndex : Left → ℕ} {rightIndex : Right → ℕ}
    (flow : CorrelationCompatibleFactorizationFlow Left Right
      LeftPacketSpace RightPacketSpace leftIndex rightIndex)
    (t : ℝ) (x : ℕ) :
    flow.packetDerivative t x = -flow.residualDerivative t x := by
  have hsum := (flow.differentiablePacket t x).add
    (flow.differentiableResidual t x)
  have hconstant :
      HasDerivAt
        (fun _ : ℝ ↦ bilinearMatrixPairing flow.leftCoefficient
          (productCutoffMatrix leftIndex rightIndex x)
          flow.rightCoefficient)
        0 t := hasDerivAt_const t _
  have heq :
      (fun s ↦ flow.packetPairing s x + flow.residualPairing s x) =
        (fun _ : ℝ ↦ bilinearMatrixPairing flow.leftCoefficient
          (productCutoffMatrix leftIndex rightIndex x)
          flow.rightCoefficient) := by
    funext s
    exact (flow.cutoffPairing_eq s x).symm
  have hzero :
      HasDerivAt
        (fun s ↦ flow.packetPairing s x + flow.residualPairing s x)
        0 t := by
    simpa only [heq] using hconstant
  have hderivative :
      flow.packetDerivative t x + flow.residualDerivative t x = 0 :=
    hsum.unique hzero
  exact eq_neg_of_add_eq_zero_left hderivative

end

end Surface.Core.TypeII

end
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/FactorizationFlow/Variant3925b818493e46346ef9de0255f769bf9b1dcb4537e44ec0e88efcb47850641f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/FactorizationFlow/Variant3925b818493e46346ef9de0255f769bf9b1dcb4537e44ec0e88efcb47850641f.lean#L158).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6014eb5c6a15ad2542deae08dfadebe6e61de6d3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
