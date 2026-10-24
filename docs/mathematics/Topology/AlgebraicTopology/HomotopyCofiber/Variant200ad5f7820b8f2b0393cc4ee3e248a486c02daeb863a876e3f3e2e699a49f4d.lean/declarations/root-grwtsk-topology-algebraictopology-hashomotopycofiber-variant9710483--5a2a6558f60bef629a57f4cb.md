# _root_.GRWTSK.Topology.AlgebraicTopology.HasHomotopyCofiber.Variant9710483ee19eb36fea72285cc50f7d5cb8e4184fe7cd1537660a906d5ae8b9e3.Homotopy.map_eq_of_inverts_homotopyEquivalences

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c4d491a5-ca3a-9563-78a1-771d96ff828e",
  "kind": "lemma",
  "lexical_name": "_root_.GRWTSK.Topology.AlgebraicTopology.HasHomotopyCofiber.Variant9710483ee19eb36fea72285cc50f7d5cb8e4184fe7cd1537660a906d5ae8b9e3.Homotopy.map_eq_of_inverts_homotopyEquivalences",
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
  "slug": "root-grwtsk-topology-algebraictopology-hashomotopycofiber-variant9710483--5a2a6558f60bef629a57f4cb",
  "source": {
    "blob": "0b3079aab9fc47cc0e38d97c8da9ec3261213f20",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 789,
    "line": 776,
    "path": "GRWTSK/Topology/AlgebraicTopology/HomotopyCofiber/Variant200ad5f7820b8f2b0393cc4ee3e248a486c02daeb863a876e3f3e2e699a49f4d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5a2a6558f60bef629a57f4cb40ed6601de17f952805d2419a9a2332222ad5c36",
  "verification": {
    "reference": "docs/verification/Topology/AlgebraicTopology/HomotopyCofiber/Variant200ad5f7820b8f2b0393cc4ee3e248a486c02daeb863a876e3f3e2e699a49f4d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c4d491a5-ca3a-9563-78a1-771d96ff828e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 776–789.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma _root_.GRWTSK.Topology.AlgebraicTopology.HasHomotopyCofiber.Variant9710483ee19eb36fea72285cc50f7d5cb8e4184fe7cd1537660a906d5ae8b9e3.Homotopy.map_eq_of_inverts_homotopyEquivalences
    {φ₀ φ₁ : F ⟶ G} (h : Homotopy φ₀ φ₁) (hc : ∀ j, ∃ i, c.Rel i j)
    [∀ i, HasBinaryBiproduct (F.X i) (F.X i)]
    [HasHomotopyCofiber (biprod.lift (𝟙 F) (-𝟙 F))]
    {D : Type*} [Category* D] (H : HomologicalComplex C c ⥤ D)
    (hH : (homotopyEquivalences C c).IsInvertedBy H) :
    H.map φ₀ = H.map φ₁ := by
  classical
  simp only [← cylinder.ι₀_desc _ _ h, ← cylinder.ι₁_desc _ _ h, H.map_comp,
    cylinder.map_ι₀_eq_map_ι₁ _ hc _ hH]

end

end HomologicalComplex
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/AlgebraicTopology/HomotopyCofiber/Variant200ad5f7820b8f2b0393cc4ee3e248a486c02daeb863a876e3f3e2e699a49f4d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/HomotopyCofiber/Variant200ad5f7820b8f2b0393cc4ee3e248a486c02daeb863a876e3f3e2e699a49f4d.lean#L776).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0b3079aab9fc47cc0e38d97c8da9ec3261213f20` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
