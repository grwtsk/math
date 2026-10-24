# exists_prod_subset

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d2772876-ddb0-4e50-26a6-ac46358eee60",
  "kind": "theorem",
  "lexical_name": "exists_prod_subset",
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
  "slug": "exists-prod-subset--437b061351db45a2600554f3",
  "source": {
    "blob": "31efbdf82d985a9c8139a9d8fb7a1227ecaad81a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 61,
    "line": 48,
    "path": "GRWTSK/Topology/GeneralTopology/ClopenBox/Variantdd630baf6636f3271327611a1679099d9f09023e4567d7a21787b483e4ca9db8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:437b061351db45a2600554f3c21c5cff52b633968c19388c4957a6d0ffae72aa",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ClopenBox/Variantdd630baf6636f3271327611a1679099d9f09023e4567d7a21787b483e4ca9db8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d2772876-ddb0-4e50-26a6-ac46358eee60`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 48–61.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_prod_subset (W : Clopens (X × Y)) {a : X × Y} (h : a ∈ W) :
    ∃ U : Clopens X, a.1 ∈ U ∧ ∃ V : Clopens Y, a.2 ∈ V ∧ U ×ˢ V ≤ W := by
  have hp : Continuous (fun y : Y ↦ (a.1, y)) := .prodMk_right _
  let V : Set Y := {y | (a.1, y) ∈ W}
  have hV : IsCompact V := (W.2.1.preimage hp).isCompact
  let U : Set X := {x | MapsTo (Prod.mk x) V W}
  have hUV : U ×ˢ V ⊆ W := fun ⟨_, _⟩ hw ↦ hw.1 hw.2
  exact ⟨⟨U, (ContinuousMap.isClopen_setOf_mapsTo hV W.2).preimage
    (ContinuousMap.id (X × Y)).curry.2⟩, by simp [U, V, MapsTo], ⟨V, W.2.preimage hp⟩, h, hUV⟩

variable [CompactSpace X]

/-- Every clopen set in a product of two compact spaces
is a union of finitely many clopen boxes. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ClopenBox/Variantdd630baf6636f3271327611a1679099d9f09023e4567d7a21787b483e4ca9db8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ClopenBox/Variantdd630baf6636f3271327611a1679099d9f09023e4567d7a21787b483e4ca9db8.lean#L48).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `31efbdf82d985a9c8139a9d8fb7a1227ecaad81a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
