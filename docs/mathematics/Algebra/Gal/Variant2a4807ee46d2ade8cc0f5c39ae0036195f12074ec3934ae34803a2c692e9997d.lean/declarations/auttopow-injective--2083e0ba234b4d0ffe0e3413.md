# autToPow_injective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ef2d433971d719feeb35931bfdcf576ae9bc9659",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 53,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2a/2a4807ee46d2ade8cc0f5c39ae0036195f12074ec3934ae34803a2c692e9997d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d36cb837-7142-0841-c70e-12699dedf3a2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7ad49e64-3c10-6f33-0c59-46fad5e6c71b",
  "kind": "theorem",
  "lexical_name": "autToPow_injective",
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
  "slug": "auttopow-injective--2083e0ba234b4d0ffe0e3413",
  "source": {
    "blob": "ef2d433971d719feeb35931bfdcf576ae9bc9659",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 81,
    "line": 53,
    "path": "GRWTSK/Algebra/Gal/Variant2a4807ee46d2ade8cc0f5c39ae0036195f12074ec3934ae34803a2c692e9997d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2083e0ba234b4d0ffe0e341339ac61f9d435afe377f26443cc4a91a739e4b0ca",
  "verification": {
    "reference": "docs/verification/Algebra/Gal/Variant2a4807ee46d2ade8cc0f5c39ae0036195f12074ec3934ae34803a2c692e9997d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7ad49e64-3c10-6f33-0c59-46fad5e6c71b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 53–81.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem autToPow_injective : Function.Injective <| hμ.autToPow K := by
  intro f g hfg
  apply_fun Units.val at hfg
  simp only [IsPrimitiveRoot.coe_autToPow_apply] at hfg
  generalize_proofs hn₀ hf' hg' at hfg
  have hf := hf'.choose_spec
  have hg := hg'.choose_spec
  generalize_proofs hζ at hf hg
  suffices f (hμ.toRootsOfUnity : Lˣ) = g (hμ.toRootsOfUnity : Lˣ) by
    apply AlgEquiv.coe_algHom_injective
    apply (hμ.powerBasis K).algHom_ext
    exact this
  rw [ZMod.eq_iff_modEq_nat] at hfg
  refine (hf.trans ?_).trans hg.symm
  rw [← rootsOfUnity.coe_pow _ hf'.choose, ← rootsOfUnity.coe_pow _ hg'.choose]
  congr 2
  rw [pow_eq_pow_iff_modEq]
  convert hfg
  conv => enter [2]; rw [hμ.eq_orderOf, ← hμ.val_toRootsOfUnity_coe]
  rw [orderOf_units, Subgroup.orderOf_coe]

end IsPrimitiveRoot

namespace IsCyclotomicExtension

variable [CommRing L] [IsDomain L] (hμ : IsPrimitiveRoot μ n) [Algebra K L]
  [IsCyclotomicExtension {n} K L]

/-- Cyclotomic extensions are abelian. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Gal/Variant2a4807ee46d2ade8cc0f5c39ae0036195f12074ec3934ae34803a2c692e9997d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Gal/Variant2a4807ee46d2ade8cc0f5c39ae0036195f12074ec3934ae34803a2c692e9997d.lean#L53).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ef2d433971d719feeb35931bfdcf576ae9bc9659` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
