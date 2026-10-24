# NormalSpace.instCompletelyRegularSpace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:57c247c7e0bc48a0ab60f37c8252bb08717589b2f6b689fee5356a1b175d7376",
  "kind": "instance",
  "lexical_name": "NormalSpace.instCompletelyRegularSpace",
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
  "slug": "normalspace-instcompletelyregularspace--727fcd70af15f9ccb4ed8482",
  "source": {
    "blob": "78757f98f10a2a14fa36649f4aa13d5a11650a99",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 110,
    "line": 95,
    "path": "GRWTSK/Topology/GeneralTopology/CompletelyRegular/Variantc3337986544216d746caa061cc2c5703d0605130b9aea5f4ec21e9e351ce3db9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:727fcd70af15f9ccb4ed8482729d5568adef9eb1d085a435ae765ead0d4860af",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/CompletelyRegular/Variantc3337986544216d746caa061cc2c5703d0605130b9aea5f4ec21e9e351ce3db9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:57c247c7e0bc48a0ab60f37c8252bb08717589b2f6b689fee5356a1b175d7376`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 95–110.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance NormalSpace.instCompletelyRegularSpace [NormalSpace X] [R0Space X] :
    CompletelyRegularSpace X := by
  rw [completelyRegularSpace_iff]
  intro x K hK hx
  have cx : IsClosed (closure {x}) := isClosed_closure
  have d : Disjoint (closure {x}) K := by
    rw [Set.disjoint_iff]
    intro a ⟨hax, haK⟩
    exact hx ((specializes_iff_mem_closure.mpr hax).symm.mem_closed hK haK)
  let ⟨⟨f, cf⟩, hfx, hfK, hficc⟩ := exists_continuous_zero_one_of_isClosed cx hK d
  let g : X → I := fun x => ⟨f x, hficc x⟩
  have cg : Continuous g := cf.subtype_mk hficc
  have hgx : g x = 0 := Subtype.ext (hfx (subset_closure (mem_singleton x)))
  have hgK : EqOn g 1 K := fun k hk => Subtype.ext (hfK hk)
  exact ⟨g, cg, hgx, hgK⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/CompletelyRegular/Variantc3337986544216d746caa061cc2c5703d0605130b9aea5f4ec21e9e351ce3db9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/CompletelyRegular/Variantc3337986544216d746caa061cc2c5703d0605130b9aea5f4ec21e9e351ce3db9.lean#L95).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `78757f98f10a2a14fa36649f4aa13d5a11650a99` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
