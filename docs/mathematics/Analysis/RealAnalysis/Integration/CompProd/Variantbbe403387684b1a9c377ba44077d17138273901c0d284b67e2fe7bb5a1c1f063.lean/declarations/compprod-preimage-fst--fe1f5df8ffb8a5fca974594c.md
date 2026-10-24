# compProd_preimage_fst

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "22bb4f87cabc0c7194937fe1139324fc639ab6c9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 185,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/bb/bbe403387684b1a9c377ba44077d17138273901c0d284b67e2fe7bb5a1c1f063.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5ab0528b-f9e4-5825-750c-24c2cb767dcb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c847a8eb-3997-698c-d2f0-091ef2e608aa",
  "kind": "lemma",
  "lexical_name": "compProd_preimage_fst",
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
  "slug": "compprod-preimage-fst--fe1f5df8ffb8a5fca974594c",
  "source": {
    "blob": "22bb4f87cabc0c7194937fe1139324fc639ab6c9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 195,
    "line": 185,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/CompProd/Variantbbe403387684b1a9c377ba44077d17138273901c0d284b67e2fe7bb5a1c1f063.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fe1f5df8ffb8a5fca974594c884fed39fd4831cf3eb9feafb67d7c8b8a55e614",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/CompProd/Variantbbe403387684b1a9c377ba44077d17138273901c0d284b67e2fe7bb5a1c1f063.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c847a8eb-3997-698c-d2f0-091ef2e608aa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 185–195.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma compProd_preimage_fst {s : Set β} (hs : MeasurableSet s) (κ : Kernel α β)
    (η : Kernel (α × β) γ) [IsSFiniteKernel κ] [IsMarkovKernel η] (x : α) :
    (κ ⊗ₖ η) x (Prod.fst ⁻¹' s) = κ x s := by
  simp_rw [compProd_apply (measurable_fst hs), ← Set.preimage_comp, Prod.fst_comp_mk, Set.preimage,
    Function.const_apply]
  have : ∀ b : β, η (x, b) {_c | b ∈ s} = s.indicator (fun _ ↦ 1) b := by
    intro b
    by_cases hb : b ∈ s <;> simp [hb]
  simp_rw [this]
  rw [lintegral_indicator_const hs, one_mul]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/CompProd/Variantbbe403387684b1a9c377ba44077d17138273901c0d284b67e2fe7bb5a1c1f063.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/CompProd/Variantbbe403387684b1a9c377ba44077d17138273901c0d284b67e2fe7bb5a1c1f063.lean#L185).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `22bb4f87cabc0c7194937fe1139324fc639ab6c9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
