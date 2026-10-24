# instSemisimple

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2994d26138b2078b102fd7c6b2f0510fe9c242266f88e8cf9fa4bc792d56d850",
  "kind": "instance",
  "lexical_name": "instSemisimple",
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
  "slug": "instsemisimple--03ae730d8653f0bb36ee6199",
  "source": {
    "blob": "e246f8f290e62f777c110796069ec7cadaef7bc2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 86,
    "line": 74,
    "path": "GRWTSK/Algebra/Killing/Variante47ca36f2b5d4686b1fdfe49646e0fce699ae108d9bfe1329af6cec9e2a79a76.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:03ae730d8653f0bb36ee619913145865c8b2da39005e737950bc613752e3d925",
  "verification": {
    "reference": "docs/verification/Algebra/Killing/Variante47ca36f2b5d4686b1fdfe49646e0fce699ae108d9bfe1329af6cec9e2a79a76.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2994d26138b2078b102fd7c6b2f0510fe9c242266f88e8cf9fa4bc792d56d850`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 74–86.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance instSemisimple [IsKilling K L] [Module.Finite K L] : IsSemisimple K L := by
  apply InvariantForm.isSemisimple_of_nondegenerate (Φ := killingForm K L)
  · exact IsKilling.killingForm_nondegenerate _ _
  · exact LieModule.traceForm_lieInvariant _ _ _
  · exact (LieModule.traceForm_isSymm K L L).isRefl
  · intro I h₁ h₂
    exact h₁.1 <| IsKilling.ideal_eq_bot_of_isLieAbelian I

/-- The converse of this is true over a field of characteristic zero. There are counterexamples
over fields with positive characteristic.

Note that when the coefficients are a field this instance is redundant since we have
`LieAlgebra.IsKilling.instSemisimple` and `LieAlgebra.IsSemisimple.instHasTrivialRadical`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Killing/Variante47ca36f2b5d4686b1fdfe49646e0fce699ae108d9bfe1329af6cec9e2a79a76.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Killing/Variante47ca36f2b5d4686b1fdfe49646e0fce699ae108d9bfe1329af6cec9e2a79a76.lean#L74).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e246f8f290e62f777c110796069ec7cadaef7bc2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
