# isLimitConeOfForget

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4c52f32ad18622d2a2b73ed41ec22c106768cc839180fe2bb6020dbf635fbf1e",
  "kind": "def",
  "lexical_name": "isLimitConeOfForget",
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
  "slug": "islimitconeofforget--e26baadbd571d2d837df780b",
  "source": {
    "blob": "3b8de13138d474a3e68e118dcede877e6a911258",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 127,
    "line": 108,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant249ad4f5e887a9029ceaabe9f7940f5367c41b9f680758d7e27dec92d3db3286.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e26baadbd571d2d837df780b8eaebf0686f44f3b24bcfef5887b54c2a7c1d2e7",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant249ad4f5e887a9029ceaabe9f7940f5367c41b9f680758d7e27dec92d3db3286.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4c52f32ad18622d2a2b73ed41ec22c106768cc839180fe2bb6020dbf635fbf1e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 108–127.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def isLimitConeOfForget (c : Cone (F ⋙ forget)) (hc : IsLimit c) :
    IsLimit (coneOfConeForget c) := by
  refine IsLimit.ofFaithful forget (ht := hc)
    (fun s ↦ ofHom (ContinuousMap.mk (hc.lift ((forget).mapCone s)) ?_)) (fun _ ↦ rfl)
  rw [continuous_iff_coinduced_le]
  dsimp [topologicalSpaceConePtOfConeForget]
  rw [le_iInf_iff]
  intro j
  rw [coinduced_le_iff_le_induced, induced_compose]
  convert continuous_iff_le_induced.1 (s.π.app j).hom.continuous
  exact hc.fac ((forget).mapCone s) j

end

section IsLimit

variable {F : J ⥤ TopCat.{u}} (c : Cone F) (hc : IsLimit c)

include hc

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant249ad4f5e887a9029ceaabe9f7940f5367c41b9f680758d7e27dec92d3db3286.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant249ad4f5e887a9029ceaabe9f7940f5367c41b9f680758d7e27dec92d3db3286.lean#L108).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3b8de13138d474a3e68e118dcede877e6a911258` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
