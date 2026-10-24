# isLimit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:82d77bc5f71c26ab3d1713074ada3c3ca8ebbc05f443ceccfd48e64fc4b97329",
  "kind": "def",
  "lexical_name": "isLimit",
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
  "slug": "islimit--baf78a550cb981b06b64a61e",
  "source": {
    "blob": "61a535610f8a9d1a66226602721ddd2a1eda3a23",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 329,
    "line": 312,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Varianta9879e37056683cee9fed6f45b4c60f321c8bc5b266c356371bf5f6bfb3974e9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:baf78a550cb981b06b64a61e957b49ddcdef1275674eff111fb379673f7400d0",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Varianta9879e37056683cee9fed6f45b4c60f321c8bc5b266c356371bf5f6bfb3974e9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:82d77bc5f71c26ab3d1713074ada3c3ca8ebbc05f443ceccfd48e64fc4b97329`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 312–329.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def isLimit {J : Type*} [Category* J] {F : J ⥤ TopModuleCat R}
    {c : Cone (F ⋙ forget₂ _ (ModuleCat R))} (hc : IsLimit c) :
    IsLimit (ofCone c) where
  lift s := ofHom (Y := (ofCone c).pt) ⟨(hc.lift ((forget₂ _ _).mapCone s)).hom, by
    rw [continuous_iff_coinduced_le]
    refine le_iInf fun i ↦ ?_
    rw [coinduced_le_iff_le_induced, induced_compose, ← continuous_iff_le_induced]
    change Continuous (X := s.pt) (Y := F.obj i)
      (hc.lift ((forget₂ _ (ModuleCat R)).mapCone s) ≫ c.π.app i).hom
    rw [hc.fac]
    exact (s.π.app i).hom.2⟩
  fac s i := by ext x; exact congr($(hc.fac ((forget₂ _ _).mapCone s) i).hom x)
  uniq s m H := by
    ext x
    refine congr($(hc.uniq ((forget₂ _ _).mapCone s) ((forget₂ _ _).map m) fun j ↦ ?_).hom x)
    ext y
    exact congr($(H j).hom y)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Varianta9879e37056683cee9fed6f45b4c60f321c8bc5b266c356371bf5f6bfb3974e9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Varianta9879e37056683cee9fed6f45b4c60f321c8bc5b266c356371bf5f6bfb3974e9.lean#L312).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `61a535610f8a9d1a66226602721ddd2a1eda3a23` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
