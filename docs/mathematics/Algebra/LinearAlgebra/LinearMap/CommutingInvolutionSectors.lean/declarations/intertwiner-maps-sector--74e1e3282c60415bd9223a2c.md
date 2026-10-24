# Intertwiner.maps_sector

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:85d48ff9-956e-5891-3e48-8f479b1e5380",
  "kind": "theorem",
  "lexical_name": "Intertwiner.maps_sector",
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
  "slug": "intertwiner-maps-sector--74e1e3282c60415bd9223a2c",
  "source": {
    "blob": "eb0d65dd8cdbfc4b84fd5ad15224516874fafb64",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 107,
    "line": 84,
    "path": "GRWTSK/LinearAlgebra/LinearMap/CommutingInvolutionSectors.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:74e1e3282c60415bd9223a2cf31bb05ac2eb4c1945c48ee48e74abf600cbf9bd",
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

Occurrence: `result:85d48ff9-956e-5891-3e48-8f479b1e5380`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 84–107.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Intertwiner.maps_sector
    {V W : Type*}
    [AddCommGroup V] [Module ℚ V]
    [AddCommGroup W] [Module ℚ W]
    {source : CommutingInvolutions V} {target : CommutingInvolutions W}
    (intertwiner : Intertwiner source target) (sector : Sector) {x : V}
    (hx : source.InSector sector x) :
    target.InSector sector (intertwiner.map x) := by
  rcases hx with ⟨hsigma, htau⟩
  constructor
  · have h := congrArg (fun f : V →ₗ[ℚ] W => f x) intertwiner.sigma_intertwines
    calc
      target.sigma (intertwiner.map x) = intertwiner.map (source.sigma x) := by
        simpa using h.symm
      _ = intertwiner.map (sector.1.scalar • x) := by rw [hsigma]
      _ = sector.1.scalar • intertwiner.map x := by simp
  · have h := congrArg (fun f : V →ₗ[ℚ] W => f x) intertwiner.tau_intertwines
    calc
      target.tau (intertwiner.map x) = intertwiner.map (source.tau x) := by
        simpa using h.symm
      _ = intertwiner.map (sector.2.scalar • x) := by rw [htau]
      _ = sector.2.scalar • intertwiner.map x := by simp

/-- An explicit four-sector direct-sum certificate. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/LinearMap/CommutingInvolutionSectors.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/LinearAlgebra/LinearMap/CommutingInvolutionSectors.lean#L84).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eb0d65dd8cdbfc4b84fd5ad15224516874fafb64` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
