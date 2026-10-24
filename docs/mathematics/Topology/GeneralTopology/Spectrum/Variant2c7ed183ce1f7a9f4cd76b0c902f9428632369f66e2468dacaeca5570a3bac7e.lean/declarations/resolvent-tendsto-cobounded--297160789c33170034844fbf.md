# resolvent_tendsto_cobounded

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b4020071-90ca-8a69-7927-fb37932036f1",
  "kind": "theorem",
  "lexical_name": "resolvent_tendsto_cobounded",
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
  "slug": "resolvent-tendsto-cobounded--297160789c33170034844fbf",
  "source": {
    "blob": "63c1901026c6855fadc702ac7372ab4733738167",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 293,
    "line": 277,
    "path": "GRWTSK/Topology/GeneralTopology/Spectrum/Variant2c7ed183ce1f7a9f4cd76b0c902f9428632369f66e2468dacaeca5570a3bac7e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:297160789c33170034844fbf44726a2123fda375ffc5a5d0ecb879d0506e958b",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Spectrum/Variant2c7ed183ce1f7a9f4cd76b0c902f9428632369f66e2468dacaeca5570a3bac7e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b4020071-90ca-8a69-7927-fb37932036f1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 277–293.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem resolvent_tendsto_cobounded (a : A) : Tendsto (resolvent a) (cobounded 𝕜) (𝓝 0) :=
  resolvent_isBigO_inv a |>.trans_tendsto tendsto_inv₀_cobounded

end resolvent

section OneSubSMul

open ContinuousMultilinearMap ENNReal FormalMultilinearSeries

open scoped NNReal ENNReal

variable [NontriviallyNormedField 𝕜] [NormedRing A] [NormedAlgebra 𝕜 A]

variable (𝕜) in
/-- In a Banach algebra `A` over a nontrivially normed field `𝕜`, for any `a : A` the
power series with coefficients `a ^ n` represents the function `(1 - z • a)⁻¹` in a disk of
radius `‖a‖₊⁻¹`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Spectrum/Variant2c7ed183ce1f7a9f4cd76b0c902f9428632369f66e2468dacaeca5570a3bac7e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Spectrum/Variant2c7ed183ce1f7a9f4cd76b0c902f9428632369f66e2468dacaeca5570a3bac7e.lean#L277).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `63c1901026c6855fadc702ac7372ab4733738167` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
