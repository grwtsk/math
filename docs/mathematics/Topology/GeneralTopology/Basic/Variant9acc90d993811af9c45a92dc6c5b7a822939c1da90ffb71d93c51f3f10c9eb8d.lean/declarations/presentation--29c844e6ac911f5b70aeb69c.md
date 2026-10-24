# presentation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cecedbdf37972a737173d949db9a947224055c74b8c9e39b2e1293c15de488f7",
  "kind": "def",
  "lexical_name": "presentation",
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
  "slug": "presentation--29c844e6ac911f5b70aeb69c",
  "source": {
    "blob": "97a6ba5890c5fc4fd27fb0f2fa47676810daade9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 208,
    "line": 194,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant9acc90d993811af9c45a92dc6c5b7a822939c1da90ffb71d93c51f3f10c9eb8d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:29c844e6ac911f5b70aeb69cff7a6743908997ebaccb2486557a614261d81d26",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant9acc90d993811af9c45a92dc6c5b7a822939c1da90ffb71d93c51f3f10c9eb8d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:cecedbdf37972a737173d949db9a947224055c74b8c9e39b2e1293c15de488f7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 194–208.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def presentation (X : CompHaus) : Stonean where
  compHaus := (projectivePresentation X).p
  extrDisc := by
    refine' CompactT2.Projective.extremallyDisconnected
      (@fun Y Z _ _ _ _ _ _ f g hfcont hgcont hgsurj => _)
    let g₁ : (CompHaus.of Y) ⟶ (CompHaus.of Z) := ⟨g, hgcont⟩
    let f₁ : (projectivePresentation X).p ⟶ (CompHaus.of Z) := ⟨f, hfcont⟩
    have hg₁ : Epi g₁ := (epi_iff_surjective _).2 hgsurj
    refine' ⟨Projective.factorThru f₁ g₁, (Projective.factorThru f₁ g₁).2, funext (fun _ => _)⟩
    change (Projective.factorThru f₁ g₁ ≫ g₁) _ = f _
    rw [Projective.factorThru_comp]
    rfl

/-- The morphism from `presentation X` to `X`. -/
noncomputable
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant9acc90d993811af9c45a92dc6c5b7a822939c1da90ffb71d93c51f3f10c9eb8d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant9acc90d993811af9c45a92dc6c5b7a822939c1da90ffb71d93c51f3f10c9eb8d.lean#L194).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `97a6ba5890c5fc4fd27fb0f2fa47676810daade9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
