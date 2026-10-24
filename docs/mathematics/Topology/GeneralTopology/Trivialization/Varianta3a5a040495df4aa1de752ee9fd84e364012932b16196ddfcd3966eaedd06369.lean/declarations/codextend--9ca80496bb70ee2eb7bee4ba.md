# codExtend'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bc262af9b7d20da69c202684a6aa9454f79c84bf4808ed7f61b095f0cece702d",
  "kind": "def",
  "lexical_name": "codExtend'",
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
  "slug": "codextend--9ca80496bb70ee2eb7bee4ba",
  "source": {
    "blob": "0484e326bb5c99a04dc21917931f087825cd8634",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 370,
    "line": 350,
    "path": "GRWTSK/Topology/GeneralTopology/Trivialization/Varianta3a5a040495df4aa1de752ee9fd84e364012932b16196ddfcd3966eaedd06369.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9ca80496bb70ee2eb7bee4ba82c8e5fb83c66329c9339dd366c4d9ca72585c65",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Trivialization/Varianta3a5a040495df4aa1de752ee9fd84e364012932b16196ddfcd3966eaedd06369.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bc262af9b7d20da69c202684a6aa9454f79c84bf4808ed7f61b095f0cece702d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 350–370.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def codExtend' {s : Set B} (hs : IsOpen s) {proj : Z → s}
    (e : Pretrivialization F proj) [Nonempty (B → F → Z)] :
    Pretrivialization F (Subtype.val ∘ proj) where
  toFun z := ⟨(e z).1, (e z).2⟩
  invFun x := by classical exact if h : x.1 ∈ s then e.invFun (⟨x.1, h⟩, x.2)
    else Classical.arbitrary (B → F → Z) x.1 x.2
  source := e.source
  target := (Prod.map Subtype.val id) '' e.target
  map_source' z hz := by simpa using e.map_source hz
  map_target' _ := by rintro ⟨x, hx, rfl⟩; simpa using e.map_target hx
  left_inv' z hz := by simpa using e.left_inv hz
  right_inv' _ := by rintro ⟨x, hx, rfl⟩; ext <;> simp [e.apply_symm_apply hx]
  open_target := hs.isOpenMap_subtype_val.prodMap .id _ e.open_target
  baseSet := Subtype.val '' e.baseSet
  open_baseSet := hs.isOpenMap_subtype_val _ e.open_baseSet
  source_eq := by ext; simp [e.source_eq]
  target_eq := by rw [e.target_eq, prodMap_image_prod, image_id]
  proj_toFun _ h := by simp [e.coe_fst h]

/-- Extend the base of a pretrivialization from a nonempty set to the whole space. -/
@[simps! toFun source target baseSet]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Trivialization/Varianta3a5a040495df4aa1de752ee9fd84e364012932b16196ddfcd3966eaedd06369.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Trivialization/Varianta3a5a040495df4aa1de752ee9fd84e364012932b16196ddfcd3966eaedd06369.lean#L350).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0484e326bb5c99a04dc21917931f087825cd8634` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
