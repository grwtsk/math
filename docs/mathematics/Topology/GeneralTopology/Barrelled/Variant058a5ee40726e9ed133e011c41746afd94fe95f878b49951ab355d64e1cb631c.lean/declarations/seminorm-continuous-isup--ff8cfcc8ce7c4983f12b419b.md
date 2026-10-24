# Seminorm.continuous_iSup

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "cc47dfa79bd3f756ec35ecdc57eb0eccdc2aa4a0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 93,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/05/058a5ee40726e9ed133e011c41746afd94fe95f878b49951ab355d64e1cb631c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:56d50248-2d20-61e9-f03c-fe5c8c60687a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7c163916-4e22-725e-f655-b4b926a73fec",
  "kind": "theorem",
  "lexical_name": "Seminorm.continuous_iSup",
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
  "slug": "seminorm-continuous-isup--ff8cfcc8ce7c4983f12b419b",
  "source": {
    "blob": "cc47dfa79bd3f756ec35ecdc57eb0eccdc2aa4a0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 113,
    "line": 93,
    "path": "GRWTSK/Topology/GeneralTopology/Barrelled/Variant058a5ee40726e9ed133e011c41746afd94fe95f878b49951ab355d64e1cb631c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ff8cfcc8ce7c4983f12b419b065ebc8fe5501da5e510fd8feeacbb3e17db26a5",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Barrelled/Variant058a5ee40726e9ed133e011c41746afd94fe95f878b49951ab355d64e1cb631c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7c163916-4e22-725e-f655-b4b926a73fec`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 93–113.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Seminorm.continuous_iSup {ι 𝕜 E : Type*} [NormedField 𝕜]  [AddCommGroup E] [Module 𝕜 E]
    [TopologicalSpace E] [BarrelledSpace 𝕜 E] (p : ι → Seminorm 𝕜 E)
    (hp : ∀ i, Continuous (p i)) (bdd : BddAbove (range p)) :
    Continuous (⨆ i, p i) := by
  rw [← Seminorm.coe_iSup_eq bdd]
  refine Seminorm.continuous_of_lowerSemicontinuous _ ?_
  rw [Seminorm.coe_iSup_eq bdd]
  rw [Seminorm.bddAbove_range_iff] at bdd
  convert lowerSemicontinuous_ciSup (f := fun i x ↦ p i x) bdd (fun i ↦ (hp i).lowerSemicontinuous)
  exact iSup_apply

end defs

section TVS_anyField

variable {α ι κ 𝕜₁ 𝕜₂ E F : Type*} [Nonempty κ] [NontriviallyNormedField 𝕜₁]
    [NontriviallyNormedField 𝕜₂] {σ₁₂ : 𝕜₁ →+* 𝕜₂} [RingHomIsometric σ₁₂]
    [AddCommGroup E] [AddCommGroup F] [Module 𝕜₁ E] [Module 𝕜₂ F]

/-- Any TVS over a `NontriviallyNormedField` that is also a Baire space is barrelled. In
particular, this applies to Banach spaces and Fréchet spaces. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Barrelled/Variant058a5ee40726e9ed133e011c41746afd94fe95f878b49951ab355d64e1cb631c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Barrelled/Variant058a5ee40726e9ed133e011c41746afd94fe95f878b49951ab355d64e1cb631c.lean#L93).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cc47dfa79bd3f756ec35ecdc57eb0eccdc2aa4a0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
