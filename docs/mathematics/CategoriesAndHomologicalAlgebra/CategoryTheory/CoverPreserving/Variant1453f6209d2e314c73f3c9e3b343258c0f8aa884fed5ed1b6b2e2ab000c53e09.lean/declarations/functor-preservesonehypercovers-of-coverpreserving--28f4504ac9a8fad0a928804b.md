# Functor.PreservesOneHypercovers.of_coverPreserving

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:79f7080a-9418-4624-b99f-94d2b5cbf010",
  "kind": "lemma",
  "lexical_name": "Functor.PreservesOneHypercovers.of_coverPreserving",
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
  "slug": "functor-preservesonehypercovers-of-coverpreserving--28f4504ac9a8fad0a928804b",
  "source": {
    "blob": "c40537dce3241a2472bb5c3f3820451eec48d65e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 223,
    "line": 208,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverPreserving/Variant1453f6209d2e314c73f3c9e3b343258c0f8aa884fed5ed1b6b2e2ab000c53e09.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:28f4504ac9a8fad0a928804b054cf560b72ca64c99afd379d65802eea9b2b3a9",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverPreserving/Variant1453f6209d2e314c73f3c9e3b343258c0f8aa884fed5ed1b6b2e2ab000c53e09.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:79f7080a-9418-4624-b99f-94d2b5cbf010`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 208–223.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Functor.PreservesOneHypercovers.of_coverPreserving [HasPullbacks C]
    [PreservesLimitsOfShape WalkingCospan F] (H : CoverPreserving J K F) :
    Functor.PreservesOneHypercovers.{w} F J K := by
  refine fun {U} E ↦ ⟨?_, fun i₁ i₂ W p₁ p₂ h ↦ ?_⟩
  · simp [PreZeroHypercover.sieve₀_map, H.cover_preserve E.mem₀]
  · let P : C := pullback (E.f i₁) (E.f i₂)
    have : HasPullback ((E.toPreOneHypercover.map F).f i₁) ((E.toPreOneHypercover.map F).f i₂) :=
      hasPullback_of_preservesPullback F (E.f i₁) (E.f i₂)
    have := H.cover_preserve (E.mem₁ i₁ i₂ (pullback.fst (E.f i₁) (E.f i₂)) _ pullback.condition)
    rw [PreOneHypercover.functorPushforward_sieve₁_of_preservesPullbacks _ _ _
      pullback.condition] at this
    refine K.superset_covering ?_
      (K.pullback_stable (IsPullback.lift (.map _ (.of_hasPullback _ _)) p₁ p₂ h) this)
    simp [PreOneHypercover.pullback_sieve₁]

end CategoryTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverPreserving/Variant1453f6209d2e314c73f3c9e3b343258c0f8aa884fed5ed1b6b2e2ab000c53e09.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverPreserving/Variant1453f6209d2e314c73f3c9e3b343258c0f8aa884fed5ed1b6b2e2ab000c53e09.lean#L208).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c40537dce3241a2472bb5c3f3820451eec48d65e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
