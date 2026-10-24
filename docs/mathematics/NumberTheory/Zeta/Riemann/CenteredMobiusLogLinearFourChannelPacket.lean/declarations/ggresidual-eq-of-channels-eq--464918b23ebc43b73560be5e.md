# ggResidual_eq_of_channels_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:059b3813-cfa3-ed4d-72b8-cd543c2e0b70",
  "kind": "theorem",
  "lexical_name": "ggResidual_eq_of_channels_eq",
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
  "slug": "ggresidual-eq-of-channels-eq--464918b23ebc43b73560be5e",
  "source": {
    "blob": "13734e6786df00272e472b37f05b46e36c3d0a86",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 259,
    "line": 246,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CenteredMobiusLogLinearFourChannelPacket.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:464918b23ebc43b73560be5e63d237664356a33addf8906b0584f4fd846b7458",
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

Occurrence: `result:059b3813-cfa3-ed4d-72b8-cd543c2e0b70`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 246–259.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ggResidual_eq_of_channels_eq
    {P Q : LinearFourChannelMobiusLogPacket} {n m : ℕ}
    (hout : linearFourChannelMobiusLogTransform P n m =
      linearFourChannelMobiusLogTransform Q n m)
    (haa : P.aa = Q.aa)
    (hagrow : mobiusLogDivisorRow P.ag m = mobiusLogDivisorRow Q.ag m)
    (hgarow : mobiusLogDivisorRow P.ga n = mobiusLogDivisorRow Q.ga n) :
    linearFourChannelGGResidual P n m =
      linearFourChannelGGResidual Q n m := by
  unfold linearFourChannelGGResidual
  rw [hout, haa, hagrow, hgarow]

/-- Clean two-stage GG rectangle recovery, assuming equality of the already
separated AA/AG/GA row transforms. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CenteredMobiusLogLinearFourChannelPacket.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CenteredMobiusLogLinearFourChannelPacket.lean#L246).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `13734e6786df00272e472b37f05b46e36c3d0a86` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
