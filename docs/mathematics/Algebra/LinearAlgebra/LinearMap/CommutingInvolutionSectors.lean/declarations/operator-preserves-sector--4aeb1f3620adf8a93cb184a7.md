# operator_preserves_sector

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2acf13f0-1f6c-9ae6-416b-a33a7a7a20ca",
  "kind": "theorem",
  "lexical_name": "operator_preserves_sector",
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
  "slug": "operator-preserves-sector--4aeb1f3620adf8a93cb184a7",
  "source": {
    "blob": "eb0d65dd8cdbfc4b84fd5ad15224516874fafb64",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 203,
    "line": 180,
    "path": "GRWTSK/LinearAlgebra/LinearMap/CommutingInvolutionSectors.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4aeb1f3620adf8a93cb184a7f42a36ae1ddf7be6ee1987d6a592777fe7fbc6f9",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/LinearMap/CommutingInvolutionSectors.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2acf13f0-1f6c-9ae6-416b-a33a7a7a20ca`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 180–203.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem operator_preserves_sector
    (pencil : ResolvedPencil Z V actions) (z : Z) (sector : Sector)
    {x : V} (hx : actions.InSector sector x) :
    actions.InSector sector (pencil.operator z x) := by
  rcases hx with ⟨hsigma, htau⟩
  constructor
  · have h := congrArg (fun endomorphism : Module.End ℚ V => endomorphism x)
      (pencil.commutes_sigma z)
    calc
      actions.sigma (pencil.operator z x) = pencil.operator z (actions.sigma x) := by
        simpa [Module.End.mul_apply] using h.symm
      _ = pencil.operator z (sector.1.scalar • x) := by rw [hsigma]
      _ = sector.1.scalar • pencil.operator z x := by simp
  · have h := congrArg (fun endomorphism : Module.End ℚ V => endomorphism x)
      (pencil.commutes_tau z)
    calc
      actions.tau (pencil.operator z x) = pencil.operator z (actions.tau x) := by
        simpa [Module.End.mul_apply] using h.symm
      _ = pencil.operator z (sector.2.scalar • x) := by rw [htau]
      _ = sector.2.scalar • pencil.operator z x := by simp

end ResolvedPencil

/-- Similarity of a finite endomorphism by an invertible coordinate change. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/LinearMap/CommutingInvolutionSectors.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/LinearAlgebra/LinearMap/CommutingInvolutionSectors.lean#L180).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eb0d65dd8cdbfc4b84fd5ad15224516874fafb64` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
