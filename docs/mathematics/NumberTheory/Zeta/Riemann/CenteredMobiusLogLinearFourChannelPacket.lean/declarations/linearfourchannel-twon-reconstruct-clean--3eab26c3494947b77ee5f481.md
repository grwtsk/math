# linearFourChannel_twoN_reconstruct_clean

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e44d91e4-2b18-fb43-f13a-2df332306e6a",
  "kind": "theorem",
  "lexical_name": "linearFourChannel_twoN_reconstruct_clean",
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
  "slug": "linearfourchannel-twon-reconstruct-clean--3eab26c3494947b77ee5f481",
  "source": {
    "blob": "13734e6786df00272e472b37f05b46e36c3d0a86",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 214,
    "line": 171,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CenteredMobiusLogLinearFourChannelPacket.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3eab26c3494947b77ee5f481b7ea7c6cd8bae5e6bef1eb7d445d53be69e42f3f",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CenteredMobiusLogLinearFourChannelPacket.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e44d91e4-2b18-fb43-f13a-2df332306e6a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 171–214.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem linearFourChannel_twoN_reconstruct_clean
    {N : ℕ} (hN : 1 ≤ N)
    (P Q : LinearFourChannelMobiusLogPacket)
    (hout : ∀ n m, 1 ≤ n → n ≤ 2 * N → 1 ≤ m → m ≤ 2 * N →
      linearFourChannelMobiusLogTransform P n m =
        linearFourChannelMobiusLogTransform Q n m) :
    P.aa = Q.aa ∧
    (∀ e, 1 ≤ e → e ≤ N → P.ag e = Q.ag e) ∧
    (∀ d, 1 ≤ d → d ≤ N → P.ga d = Q.ga d) ∧
    (∀ d e, 1 ≤ d → d ≤ N → 1 ≤ e → e ≤ N →
      P.gg d e = Q.gg d e) := by
  have haa : P.aa = Q.aa := by
    have h := hout 1 1 (by omega) (by omega) (by omega) (by omega)
    simpa [linearFourChannelTransform_one_one] using h
  have hag : ∀ e, 1 ≤ e → e ≤ N → P.ag e = Q.ag e := by
    apply truncatedMobiusLogConvolution_twoN_reconstruct
    intro m hm hm2N
    have h := hout 1 m (by omega) (by omega) hm hm2N
    rw [linearFourChannelTransform_one_right,
      linearFourChannelTransform_one_right, haa] at h
    exact h
  have hga : ∀ d, 1 ≤ d → d ≤ N → P.ga d = Q.ga d := by
    apply truncatedMobiusLogConvolution_twoN_reconstruct
    intro n hn hn2N
    have h := hout n 1 hn hn2N (by omega) (by omega)
    rw [linearFourChannelTransform_left_one,
      linearFourChannelTransform_left_one, haa] at h
    exact h
  have hres : ∀ n m, 1 ≤ n → n ≤ 2 * N → 1 ≤ m → m ≤ 2 * N →
      linearFourChannelGGResidual P n m =
        linearFourChannelGGResidual Q n m := by
    intro n m hn hn2N hm hm2N
    apply ggResidual_eq_of_channels_eq
    · exact hout n m hn hn2N hm hm2N
    · exact haa
    · exact mobiusLogDivisorRow_eq_of_coeff_eq_through_N
        hm hm2N P.ag Q.ag hag
    · exact mobiusLogDivisorRow_eq_of_coeff_eq_through_N
        hn hn2N P.ga Q.ga hga
  refine ⟨haa, hag, hga, ?_⟩
  exact gg_twoN_reconstruct_of_residual_eq P Q hres

/-- Backward-compatible theorem name, now delegated to the clean two-stage
proof. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CenteredMobiusLogLinearFourChannelPacket.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CenteredMobiusLogLinearFourChannelPacket.lean#L171).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `13734e6786df00272e472b37f05b46e36c3d0a86` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
