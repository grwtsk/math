# isQuotientMap_of_surjectiveₛₗ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b52807b13a5e31d0b16b74c1fea3fa29137fdcc4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 385,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/49/4964b7ffee7ab7bcece606af6d6ef454f99156fe6c4635fc90b7cf2a2d27eb1b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6b25e97f-b7b9-63e1-f720-9655951090ca",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8d5515c7-fb1c-f1cd-11da-c35cbff1e6fc",
  "kind": "theorem",
  "lexical_name": "isQuotientMap_of_surjectiveₛₗ",
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
  "slug": "isquotientmap-of-surjective--3967e9472c31f6d118e06d44",
  "source": {
    "blob": "b52807b13a5e31d0b16b74c1fea3fa29137fdcc4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 458,
    "line": 385,
    "path": "GRWTSK/Topology/GeneralTopology/ModuleTopology/Variant4964b7ffee7ab7bcece606af6d6ef454f99156fe6c4635fc90b7cf2a2d27eb1b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3967e9472c31f6d118e06d4485fc7738e094dacd2518a1fb18240f5dac379b2e",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ModuleTopology/Variant4964b7ffee7ab7bcece606af6d6ef454f99156fe6c4635fc90b7cf2a2d27eb1b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8d5515c7-fb1c-f1cd-11da-c35cbff1e6fc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 385–458.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isQuotientMap_of_surjectiveₛₗ [τB : TopologicalSpace B'] [IsModuleTopology S B']
    {σ : R →+* S} (hσ : IsOpenQuotientMap σ) (φ : A →ₛₗ[σ] B') (hφ : Function.Surjective φ) :
    IsQuotientMap φ where
  surjective := hφ
  eq_coinduced := by
    -- We need to prove that the topology on B is coinduced from that on A.
    -- First tell the typeclass inference system that A and B are topological groups.
    have := IsModuleTopology.toContinuousAdd R A
    have := IsModuleTopology.toContinuousAdd S B'
    -- Because φ is linear, it's continuous for the module topologies (by a previous result).
    have : Continuous φ := continuous_of_linearMapₛₗ hσ.continuous φ
    -- So the coinduced topology is finer than the module topology on B.
    rw [continuous_iff_coinduced_le] at this
    -- So STP the module topology on B is ≤ the topology coinduced from A
    refine le_antisymm ?_ this
    rw [eq_moduleTopology S B']
    -- Now let's remove B's topology from the typeclass system
    clear! τB
    -- and replace it with the coinduced topology (which will be the same, but that's what we're
    -- trying to prove). This means we don't have to fight with the typeclass system.
    let : TopologicalSpace B' := .coinduced φ inferInstance
    -- With this new topology on `B`, φ is a quotient map by definition,
    -- and hence an open quotient map by a result in the library.
    have hφo : IsOpenQuotientMap φ := AddMonoidHom.isOpenQuotientMap_of_isQuotientMap ⟨⟨rfl⟩, hφ⟩
    -- We're trying to prove the module topology on B is ≤ the coinduced topology.
    -- But recall that the module topology is the Inf of the topologies on B making addition
    -- and scalar multiplication continuous, so it suffices to prove
    -- that the coinduced topology on B has these properties.
    refine sInf_le ⟨?_, ?_⟩
    · -- In this branch, we prove that `• : S × B → B` is continuous for the coinduced topology.
      apply ContinuousSMul.mk
      -- We know that `• : R × A → A` is continuous, by assumption.
      obtain ⟨hA⟩ : ContinuousSMul R A := inferInstance
      /- By linearity of φ, this diagram commutes:
        R × A --(•)--> A
          |            |
          |σ × φ      |φ
          |            |
         \/            \/
        S × B --(•)--> B
      -/
      have hφ2 : (fun p ↦ p.1 • p.2 : S × B' → B') ∘ (Prod.map σ φ) =
        φ ∘ (fun p ↦ p.1 • p.2 : R × A → A) := by ext; simp
      -- Furthermore, `σ` is an open quotient map as is `φ`,
      -- so the product `σ × φ` is an open quotient map, by a result in the library.
      have hoq : IsOpenQuotientMap (_ : R × A → S × B') := IsOpenQuotientMap.prodMap hσ hφo
      -- This is the left map in the diagram. So by a standard fact about open quotient maps,
      -- to prove that the bottom map is continuous, it suffices to prove
      -- that the diagonal map is continuous.
      rw [← hoq.continuous_comp_iff]
      -- but the diagonal is the composite of the continuous maps `φ` and `• : R × A → A`
      rw [hφ2]
      -- so we're done
      exact Continuous.comp hφo.continuous hA
    · /- In this branch we show that addition is continuous for the coinduced topology on `B`.
        The argument is basically the same, this time using commutativity of
        A × A --(+)--> A
          |            |
          |φ × φ       |φ
          |            |
         \/            \/
        B × B --(+)--> B
      -/
      apply ContinuousAdd.mk
      obtain ⟨hA⟩ := IsModuleTopology.toContinuousAdd R A
      have hφ2 : (fun p ↦ p.1 + p.2 : B' × B' → B') ∘ (Prod.map φ φ) =
        φ ∘ (fun p ↦ p.1 + p.2 : A × A → A) := by ext; simp
      rw [← (IsOpenQuotientMap.prodMap hφo hφo).continuous_comp_iff, hφ2]
      exact Continuous.comp hφo.continuous hA

open Topology in
/-- A linear surjection between modules with the module topology is a quotient map.
Equivalently, the pushforward of the module topology along a surjective linear map is
again the module topology. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ModuleTopology/Variant4964b7ffee7ab7bcece606af6d6ef454f99156fe6c4635fc90b7cf2a2d27eb1b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ModuleTopology/Variant4964b7ffee7ab7bcece606af6d6ef454f99156fe6c4635fc90b7cf2a2d27eb1b.lean#L385).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b52807b13a5e31d0b16b74c1fea3fa29137fdcc4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
