# compProd_apply_prod

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
      "line": 137,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/bb/bbe403387684b1a9c377ba44077d17138273901c0d284b67e2fe7bb5a1c1f063.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:265ce99e-f26a-37cd-a470-bf5612d1742d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5fba4b35-eff0-c7bf-d5b6-9b95b8b4470e",
  "kind": "lemma",
  "lexical_name": "compProd_apply_prod",
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
  "slug": "compprod-apply-prod--c1b7cfbc4ba5f9c9109ba80e",
  "source": {
    "blob": "22bb4f87cabc0c7194937fe1139324fc639ab6c9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 144,
    "line": 137,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/CompProd/Variantbbe403387684b1a9c377ba44077d17138273901c0d284b67e2fe7bb5a1c1f063.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c1b7cfbc4ba5f9c9109ba80ea1691dc380aec674a7c79bba88787ef7fe99b64a",
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

Occurrence: `result:5fba4b35-eff0-c7bf-d5b6-9b95b8b4470e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 137–144.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma compProd_apply_prod {κ : Kernel α β} {η : Kernel (α × β) γ}
    [IsSFiniteKernel κ] [IsSFiniteKernel η] {a : α}
    {s : Set β} {t : Set γ} (hs : MeasurableSet s) (ht : MeasurableSet t) :
    (κ ⊗ₖ η) a (s ×ˢ t) = ∫⁻ b in s, η (a, b) t ∂(κ a) := by
  rw [compProd_apply (hs.prod ht), ← lintegral_indicator hs]
  congr with a
  by_cases ha : a ∈ s <;> simp [ha]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/CompProd/Variantbbe403387684b1a9c377ba44077d17138273901c0d284b67e2fe7bb5a1c1f063.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/CompProd/Variantbbe403387684b1a9c377ba44077d17138273901c0d284b67e2fe7bb5a1c1f063.lean#L137).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `22bb4f87cabc0c7194937fe1139324fc639ab6c9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
