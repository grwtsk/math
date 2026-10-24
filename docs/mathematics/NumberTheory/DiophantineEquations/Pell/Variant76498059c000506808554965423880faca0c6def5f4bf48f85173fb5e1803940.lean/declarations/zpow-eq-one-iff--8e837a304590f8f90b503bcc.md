# zpow_eq_one_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dd4ee2f8-4057-386b-4f4d-9f6472c4f46c",
  "kind": "theorem",
  "lexical_name": "zpow_eq_one_iff",
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
  "slug": "zpow-eq-one-iff--8e837a304590f8f90b503bcc",
  "source": {
    "blob": "91c03851fa8c4a2b26e030fb2f66e8da20a71f30",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 588,
    "line": 582,
    "path": "GRWTSK/NumberTheory/DiophantineEquations/Pell/Variant76498059c000506808554965423880faca0c6def5f4bf48f85173fb5e1803940.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8e837a304590f8f90b503bcc0fbd0c784693dc6017b19784072b8977008764f9",
  "verification": {
    "reference": "docs/verification/NumberTheory/DiophantineEquations/Pell/Variant76498059c000506808554965423880faca0c6def5f4bf48f85173fb5e1803940.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dd4ee2f8-4057-386b-4f4d-9f6472c4f46c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 582–588.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem zpow_eq_one_iff {a : Solution₁ d} (h : IsFundamental a) (n : ℤ) : a ^ n = 1 ↔ n = 0 := by
  rw [← zpow_zero a]
  exact ⟨fun H => h.y_strictMono.injective (congr_arg Solution₁.y H), fun H => H ▸ rfl⟩
#align pell.is_fundamental.zpow_eq_one_iff Pell.IsFundamental.zpow_eq_one_iff

/-- A power of a fundamental solution is never equal to the negative of a power of this
fundamental solution. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/DiophantineEquations/Pell/Variant76498059c000506808554965423880faca0c6def5f4bf48f85173fb5e1803940.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/DiophantineEquations/Pell/Variant76498059c000506808554965423880faca0c6def5f4bf48f85173fb5e1803940.lean#L582).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `91c03851fa8c4a2b26e030fb2f66e8da20a71f30` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
