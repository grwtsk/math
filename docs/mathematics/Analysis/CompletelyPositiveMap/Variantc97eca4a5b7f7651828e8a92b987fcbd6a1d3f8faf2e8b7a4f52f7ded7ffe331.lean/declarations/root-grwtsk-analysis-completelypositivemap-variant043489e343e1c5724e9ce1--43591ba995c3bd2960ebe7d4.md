# _root_.GRWTSK.Analysis.CompletelyPositiveMap.Variant043489e343e1c5724e9ce11ab3c929fa94898c55f65d78db73d2e3dfc048ccee.OrderHomClass.of_map_cstarMatrix_nonneg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6ab10ea7-0576-2fe0-b1aa-2f35c876eb71",
  "kind": "lemma",
  "lexical_name": "_root_.GRWTSK.Analysis.CompletelyPositiveMap.Variant043489e343e1c5724e9ce11ab3c929fa94898c55f65d78db73d2e3dfc048ccee.OrderHomClass.of_map_cstarMatrix_nonneg",
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
  "slug": "root-grwtsk-analysis-completelypositivemap-variant043489e343e1c5724e9ce1--43591ba995c3bd2960ebe7d4",
  "source": {
    "blob": "4876e1c310265e5d5193b5527e7bffc822da6036",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 110,
    "line": 100,
    "path": "GRWTSK/Analysis/CompletelyPositiveMap/Variantc97eca4a5b7f7651828e8a92b987fcbd6a1d3f8faf2e8b7a4f52f7ded7ffe331.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:43591ba995c3bd2960ebe7d442b3fedacded62242fdaa4b5ab11991a9da90684",
  "verification": {
    "reference": "docs/verification/Analysis/CompletelyPositiveMap/Variantc97eca4a5b7f7651828e8a92b987fcbd6a1d3f8faf2e8b7a4f52f7ded7ffe331.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6ab10ea7-0576-2fe0-b1aa-2f35c876eb71`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 100–110.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma _root_.GRWTSK.Analysis.CompletelyPositiveMap.Variant043489e343e1c5724e9ce11ab3c929fa94898c55f65d78db73d2e3dfc048ccee.OrderHomClass.of_map_cstarMatrix_nonneg
    (h : ∀ (φ : F) (k : ℕ) (M : CStarMatrix (Fin k) (Fin k) A₁), 0 ≤ M → 0 ≤ M.map φ) :
    OrderHomClass F A₁ A₂ := .ofLinear <| by
  intro φ a ha
  let Ma := toOneByOne (Fin 1) ℂ A₁ a
  have h₁ : 0 ≤ Ma := map_nonneg (toOneByOne (Fin 1) ℂ A₁) ha
  have h₂ : 0 ≤ Ma.map φ := h φ 1 Ma h₁
  have h₃ : φ a = (toOneByOne (Fin 1) ℂ A₂).symm (toOneByOne (Fin 1) ℂ A₂ (φ a)) := rfl
  rw [h₃]
  exact map_nonneg (toOneByOne (Fin 1) ℂ A₂).symm h₂

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/CompletelyPositiveMap/Variantc97eca4a5b7f7651828e8a92b987fcbd6a1d3f8faf2e8b7a4f52f7ded7ffe331.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/CompletelyPositiveMap/Variantc97eca4a5b7f7651828e8a92b987fcbd6a1d3f8faf2e8b7a4f52f7ded7ffe331.lean#L100).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4876e1c310265e5d5193b5527e7bffc822da6036` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
