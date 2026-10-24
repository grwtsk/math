# finitePacketEnergy_le_reconstruction_add_residual

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6b3e550b-9087-3ef8-834a-554619390df8",
  "kind": "theorem",
  "lexical_name": "finitePacketEnergy_le_reconstruction_add_residual",
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
  "slug": "finitepacketenergy-le-reconstruction-add-residual--61a2d29fbf9d9bbb4f21f6d9",
  "source": {
    "blob": "3d78133e07815dfd17a95daf9251da60c14d0cc7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 100,
    "line": 73,
    "path": "GRWTSK/NumberTheory/Moebius/RestrictedFrameResidualComparison.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:61a2d29fbf9d9bbb4f21f6d9c1fbe2150d42e58de9cbc530eb58605ec8fc80a0",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/RestrictedFrameResidualComparison.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6b3e550b-9087-3ef8-834a-554619390df8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 73–100.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finitePacketEnergy_le_reconstruction_add_residual
    {ι κ : Type} [Fintype ι] [Fintype κ]
    (T : FiniteArithmeticBridge ι κ)
    (R : (κ → ℂ) → (ι → ℂ))
    (f : FiniteCenteredPacket ι) :
    finitePacketEnergy f ≤
      2 * finitePacketEnergy (R (T.linearPart f)) +
        2 * finitePacketEnergy (ReconstructionResidual T R f) := by
  have hdecomp :
      f = R (T.linearPart f) + ReconstructionResidual T R f := by
    funext i
    change f i =
      (R (T.linearPart f)) i + (f i - (R (T.linearPart f)) i)
    abel
  calc
    finitePacketEnergy f =
        finitePacketEnergy
          (R (T.linearPart f) + ReconstructionResidual T R f) :=
      congrArg finitePacketEnergy hdecomp
    _ ≤ 2 * finitePacketEnergy (R (T.linearPart f)) +
          2 * finitePacketEnergy (ReconstructionResidual T R f) :=
      finitePacketEnergy_add_le_two _ _

set_option linter.unusedVariables false in
/-- A bounded approximate reconstruction with relative *squared-energy*
residual q < 1/2 supplies the required positive restricted lower frame.
No hypothesis of global injectivity is used, but both estimates must hold on
the SAME restricted difference space D. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/RestrictedFrameResidualComparison.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/RestrictedFrameResidualComparison.lean#L73).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3d78133e07815dfd17a95daf9251da60c14d0cc7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
