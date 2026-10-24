# ContMDiffOn.inv₀

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e34d4777dce86ea544cd1de69697cec596b1c6d1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 283,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5e/5ec8c15c996ba45f65be439d1f6ee93ebd42811001fe94689ca1c2a8a0b3efc4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:74f5e029-789f-027b-f8d1-30c3541d777b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1cc90b40-3acf-ac06-1871-5f465a3076ef",
  "kind": "theorem",
  "lexical_name": "ContMDiffOn.inv₀",
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
  "slug": "contmdiffon-inv--d4479b3e4973d2b2b53b8b38",
  "source": {
    "blob": "e34d4777dce86ea544cd1de69697cec596b1c6d1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 305,
    "line": 283,
    "path": "GRWTSK/Geometry/DifferentialGeometry/LieGroup/Variant5ec8c15c996ba45f65be439d1f6ee93ebd42811001fe94689ca1c2a8a0b3efc4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d4479b3e4973d2b2b53b8b38c46787a10b06f3f3d1d5be237acb1c9a4abc6fab",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/LieGroup/Variant5ec8c15c996ba45f65be439d1f6ee93ebd42811001fe94689ca1c2a8a0b3efc4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1cc90b40-3acf-ac06-1871-5f465a3076ef`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 283–305.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ContMDiffOn.inv₀ (hf : CMDiff[s] n f) (h0 : ∀ x ∈ s, f x ≠ 0) :
    CMDiff[s] n (fun x ↦ (f x)⁻¹) :=
  fun x hx ↦ ContMDiffWithinAt.inv₀ (hf x hx) (h0 x hx)

end ContMDiffInv₀

/-! ### Point-wise division of `C^n` functions

If `[ContMDiffMul I n N]` and `[ContMDiffInv₀ I n N]`, point-wise division of `C^n`
functions `f : M → N` is `C^n` whenever the denominator is non-zero.
(This includes `N` being a completely normed field.)
-/
section Div

variable {𝕜 : Type*} [NontriviallyNormedField 𝕜] {n : ℕ∞ω}
  {H : Type*} [TopologicalSpace H] {E : Type*}
  [NormedAddCommGroup E] [NormedSpace 𝕜 E] {I : ModelWithCorners 𝕜 E H} {G : Type*}
  [TopologicalSpace G] [ChartedSpace H G] [GroupWithZero G] [ContMDiffInv₀ I n G]
  [ContMDiffMul I n G]
  {E' : Type*} [NormedAddCommGroup E'] [NormedSpace 𝕜 E'] {H' : Type*} [TopologicalSpace H']
  {I' : ModelWithCorners 𝕜 E' H'} {M : Type*} [TopologicalSpace M] [ChartedSpace H' M]
  {f g : M → G} {s : Set M} {a : M}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/LieGroup/Variant5ec8c15c996ba45f65be439d1f6ee93ebd42811001fe94689ca1c2a8a0b3efc4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/LieGroup/Variant5ec8c15c996ba45f65be439d1f6ee93ebd42811001fe94689ca1c2a8a0b3efc4.lean#L283).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e34d4777dce86ea544cd1de69697cec596b1c6d1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
