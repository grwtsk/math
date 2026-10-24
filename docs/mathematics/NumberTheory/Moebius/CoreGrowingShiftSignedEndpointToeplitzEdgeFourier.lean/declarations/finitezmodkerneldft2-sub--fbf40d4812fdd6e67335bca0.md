# finiteZModKernelDFT2_sub

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3d39edad-4d55-1d30-b182-ae5eed750d82",
  "kind": "theorem",
  "lexical_name": "finiteZModKernelDFT2_sub",
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
  "slug": "finitezmodkerneldft2-sub--fbf40d4812fdd6e67335bca0",
  "source": {
    "blob": "9a2d6f38f580ce97dd70fe012f8edbfa818654ed",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 481,
    "line": 459,
    "path": "GRWTSK/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointToeplitzEdgeFourier.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fbf40d4812fdd6e67335bca09fe21ac07c417405a055c859e3047b748c87f301",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointToeplitzEdgeFourier.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3d39edad-4d55-1d30-b182-ae5eed750d82`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 459–481.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finiteZModKernelDFT2_sub
    {Q : ℕ} [NeZero Q]
    (K R : ZMod Q → ZMod Q → ℂ)
    (r s : ZMod Q) :
    finiteZModKernelDFT2 (fun x y => K x y - R x y) r s =
      finiteZModKernelDFT2 K r s - finiteZModKernelDFT2 R r s := by
  unfold finiteZModKernelDFT2
  have hinner (x : ZMod Q) :
      ZMod.dft (fun y => K x y - R x y) s =
        ZMod.dft (K x) s - ZMod.dft (R x) s := by
    change ZMod.dft ((K x) - (R x)) s = _
    rw [map_sub]
    rfl
  have hfun :
      (fun x => ZMod.dft (fun y => K x y - R x y) s) =
        (fun x => ZMod.dft (K x) s) -
          (fun x => ZMod.dft (R x) s) := by
    funext x
    exact hinner x
  rw [hfun, map_sub]
  rfl

/-- Two-dimensional DFT of the strict Toeplitz bulk. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointToeplitzEdgeFourier.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointToeplitzEdgeFourier.lean#L459).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9a2d6f38f580ce97dd70fe012f8edbfa818654ed` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
