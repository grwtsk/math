# torsionBySet_isInternal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0d526764c703457e7c7478c605a3b0fcda4099f2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 484,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/df/df8571f2168e5658d0204efa151609773ab8370aff5931ee87a7ee55940b327b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e2daea3b-9596-7b24-1648-d4a741ce2561",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b63978c1-1231-8439-741a-f466e3ff4858",
  "kind": "theorem",
  "lexical_name": "torsionBySet_isInternal",
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
  "slug": "torsionbyset-isinternal--0387ce0b2598f1edc5696da5",
  "source": {
    "blob": "0d526764c703457e7c7478c605a3b0fcda4099f2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 498,
    "line": 484,
    "path": "GRWTSK/Algebra/LinearAlgebra/Torsion/Variantdf8571f2168e5658d0204efa151609773ab8370aff5931ee87a7ee55940b327b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0387ce0b2598f1edc5696da59690c843a0cab68c7613c5c480aea36bbdc63c40",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Torsion/Variantdf8571f2168e5658d0204efa151609773ab8370aff5931ee87a7ee55940b327b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b63978c1-1231-8439-741a-f466e3ff4858`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 484–498.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem torsionBySet_isInternal {p : ι → Ideal R}
    (hp : (S : Set ι).Pairwise fun i j => p i ⊔ p j = ⊤)
    (hM : Module.IsTorsionBySet R M (⨅ i ∈ S, p i : Ideal R)) :
    DirectSum.IsInternal fun i : S => torsionBySet R M <| p i :=
  DirectSum.isInternal_submodule_of_independent_of_iSup_eq_top
    (CompleteLattice.independent_iff_supIndep.mpr <| supIndep_torsionBySet_ideal hp)
    (by
      apply (iSup_subtype'' ↑S fun i => torsionBySet R M <| p i).trans
      -- Porting note: times out if we change apply below to <|
      apply (iSup_torsionBySet_ideal_eq_torsionBySet_iInf hp).trans <|
        (Module.isTorsionBySet_iff_torsionBySet_eq_top _).mp hM)
#align submodule.torsion_by_set_is_internal Submodule.torsionBySet_isInternal

/-- If the `q i` are pairwise coprime, a `∏ i, q i`-torsion module is the internal direct sum of
its `q i`-torsion submodules.-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Torsion/Variantdf8571f2168e5658d0204efa151609773ab8370aff5931ee87a7ee55940b327b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Torsion/Variantdf8571f2168e5658d0204efa151609773ab8370aff5931ee87a7ee55940b327b.lean#L484).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0d526764c703457e7c7478c605a3b0fcda4099f2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
