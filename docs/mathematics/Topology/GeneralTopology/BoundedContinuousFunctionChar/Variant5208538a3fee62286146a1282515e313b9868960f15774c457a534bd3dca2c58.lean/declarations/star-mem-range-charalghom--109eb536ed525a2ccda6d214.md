# star_mem_range_charAlgHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e21353c7-0411-bd24-893b-a82f4748b3e7",
  "kind": "lemma",
  "lexical_name": "star_mem_range_charAlgHom",
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
  "slug": "star-mem-range-charalghom--109eb536ed525a2ccda6d214",
  "source": {
    "blob": "d85345bbb62fed427057631b34169b75331b9d7d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 148,
    "line": 136,
    "path": "GRWTSK/Topology/GeneralTopology/BoundedContinuousFunctionChar/Variant5208538a3fee62286146a1282515e313b9868960f15774c457a534bd3dca2c58.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:109eb536ed525a2ccda6d214725521fd6a01ecc3b82fdf8b2e1e46552d0e9095",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/BoundedContinuousFunctionChar/Variant5208538a3fee62286146a1282515e313b9868960f15774c457a534bd3dca2c58.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e21353c7-0411-bd24-893b-a82f4748b3e7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 136–148.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma star_mem_range_charAlgHom (he : Continuous e) (hL : Continuous fun p : V × W ↦ L p.1 p.2)
    {x : V →ᵇ ℂ} (hx : x ∈ (charAlgHom he hL).range) :
    star x ∈ (charAlgHom he hL).range := by
  simp only [AlgHom.mem_range] at hx ⊢
  obtain ⟨y, rfl⟩ := hx
  let z := y.map (starRingEnd _).toAddMonoidHom
  let f : W ↪ W := ⟨fun x ↦ -x, (fun _ _ ↦ neg_inj.mp)⟩
  refine ⟨.ofCoeff <| z.coeff.embDomain f, ?_⟩
  ext
  simp [charAlgHom_apply, Finsupp.sum_embDomain, z, Finsupp.sum_mapRange_index, f]

/-- The star-subalgebra of polynomials. -/
noncomputable
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/BoundedContinuousFunctionChar/Variant5208538a3fee62286146a1282515e313b9868960f15774c457a534bd3dca2c58.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/BoundedContinuousFunctionChar/Variant5208538a3fee62286146a1282515e313b9868960f15774c457a534bd3dca2c58.lean#L136).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d85345bbb62fed427057631b34169b75331b9d7d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
