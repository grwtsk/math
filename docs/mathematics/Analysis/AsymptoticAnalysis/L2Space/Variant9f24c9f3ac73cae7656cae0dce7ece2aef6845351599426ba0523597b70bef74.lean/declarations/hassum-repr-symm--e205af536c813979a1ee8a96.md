# hasSum_repr_symm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "84288bb7e72158e443efb83186c4fe455335f863",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 422,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9f/9f24c9f3ac73cae7656cae0dce7ece2aef6845351599426ba0523597b70bef74.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d06ed451-0a6e-03c3-9993-7885dceb9b07",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4244e7ef-175c-c9a8-2965-6cac56f593f7",
  "kind": "theorem",
  "lexical_name": "hasSum_repr_symm",
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
  "slug": "hassum-repr-symm--e205af536c813979a1ee8a96",
  "source": {
    "blob": "84288bb7e72158e443efb83186c4fe455335f863",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 439,
    "line": 422,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/L2Space/Variant9f24c9f3ac73cae7656cae0dce7ece2aef6845351599426ba0523597b70bef74.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e205af536c813979a1ee8a9621eab2b641aef6a2df66faf589048c29b23263e3",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/L2Space/Variant9f24c9f3ac73cae7656cae0dce7ece2aef6845351599426ba0523597b70bef74.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4244e7ef-175c-c9a8-2965-6cac56f593f7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 422–439.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem hasSum_repr_symm (b : HilbertBasis ι 𝕜 E) (f : ℓ²(ι, 𝕜)) :
    HasSum (fun i => f i • b i) (b.repr.symm f) := by
  classical
  suffices H : (fun i : ι => f i • b i) = fun b_1 : ι => b.repr.symm.toContinuousLinearEquiv <|
      (fun i : ι => lp.single 2 i (f i) (E := (fun _ : ι => 𝕜))) b_1 by
    rw [H]
    have : HasSum (fun i : ι => lp.single 2 i (f i)) f := lp.hasSum_single ENNReal.ofNat_ne_top f
    exact (↑b.repr.symm.toContinuousLinearEquiv : ℓ²(ι, 𝕜) →L[𝕜] E).hasSum this
  ext i
  apply b.repr.injective
  letI : NormedSpace 𝕜 (lp (fun _i : ι => 𝕜) 2) := by infer_instance
  have : lp.single (E := (fun _ : ι => 𝕜)) 2 i (f i * 1) = f i • lp.single 2 i 1 :=
    lp.single_smul (E := (fun _ : ι => 𝕜)) 2 i (f i) (1 : 𝕜)
  rw [mul_one] at this
  rw [LinearIsometryEquiv.map_smul, b.repr_self, ← this,
    LinearIsometryEquiv.coe_toContinuousLinearEquiv]
  exact (b.repr.apply_symm_apply (lp.single 2 i (f i))).symm

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/L2Space/Variant9f24c9f3ac73cae7656cae0dce7ece2aef6845351599426ba0523597b70bef74.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/L2Space/Variant9f24c9f3ac73cae7656cae0dce7ece2aef6845351599426ba0523597b70bef74.lean#L422).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `84288bb7e72158e443efb83186c4fe455335f863` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
