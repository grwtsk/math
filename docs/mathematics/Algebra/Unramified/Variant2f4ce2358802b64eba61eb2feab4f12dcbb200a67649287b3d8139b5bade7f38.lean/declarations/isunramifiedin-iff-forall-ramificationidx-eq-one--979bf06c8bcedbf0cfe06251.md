# isUnramifiedIn_iff_forall_ramificationIdx_eq_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2caa3c25-7094-94c5-6da0-61e233d7c6f5",
  "kind": "theorem",
  "lexical_name": "isUnramifiedIn_iff_forall_ramificationIdx_eq_one",
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
  "slug": "isunramifiedin-iff-forall-ramificationidx-eq-one--979bf06c8bcedbf0cfe06251",
  "source": {
    "blob": "8b003f3884485b10a57f3939c6a1ea0f2730251c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 181,
    "line": 169,
    "path": "GRWTSK/Algebra/Unramified/Variant2f4ce2358802b64eba61eb2feab4f12dcbb200a67649287b3d8139b5bade7f38.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:979bf06c8bcedbf0cfe062519518fd5416d7a7b74c5b2820a89eb5086b6816e1",
  "verification": {
    "reference": "docs/verification/Algebra/Unramified/Variant2f4ce2358802b64eba61eb2feab4f12dcbb200a67649287b3d8139b5bade7f38.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2caa3c25-7094-94c5-6da0-61e233d7c6f5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 169–181.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isUnramifiedIn_iff_forall_ramificationIdx_eq_one [IsDomain R]
    [Module.Finite ℤ R] [CharZero R] [EssFiniteType R S]
    [Algebra.IsIntegral R S] {𝔭 : Ideal R} :
    IsUnramifiedIn S 𝔭 ↔
      ∀ (𝔓 : Ideal S) [𝔓.IsPrime], 𝔓.LiesOver 𝔭 → Ideal.ramificationIdx 𝔓 R = 1 := by
  have : Ring.HasFiniteQuotients R := .of_module_finite ℤ _
  refine ⟨fun hunr 𝔓 _ hP ↦ hunr.ramificationIdx_eq_one hP, fun h 𝔓 _ hP ↦ ?_⟩
  rw [← Ideal.ramificationIdx_eq_one_iff]
  exact h 𝔓 hP

end Algebra

end IsUnramifiedIn
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Unramified/Variant2f4ce2358802b64eba61eb2feab4f12dcbb200a67649287b3d8139b5bade7f38.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Unramified/Variant2f4ce2358802b64eba61eb2feab4f12dcbb200a67649287b3d8139b5bade7f38.lean#L169).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8b003f3884485b10a57f3939c6a1ea0f2730251c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
