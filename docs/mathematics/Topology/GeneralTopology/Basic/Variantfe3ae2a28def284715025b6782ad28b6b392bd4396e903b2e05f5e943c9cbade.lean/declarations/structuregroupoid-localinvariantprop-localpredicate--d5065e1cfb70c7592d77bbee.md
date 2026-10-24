# StructureGroupoid.LocalInvariantProp.localPredicate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:eeaa0d3e2d7c69f7f09ecd60af88be8cedeccfc72297a0ddb7f1f7c3d437b445",
  "kind": "def",
  "lexical_name": "StructureGroupoid.LocalInvariantProp.localPredicate",
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
  "slug": "structuregroupoid-localinvariantprop-localpredicate--d5065e1cfb70c7592d77bbee",
  "source": {
    "blob": "0c8abd77d96dbf5bf1fe92fcc148b87570bcb4b5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 78,
    "line": 56,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variantfe3ae2a28def284715025b6782ad28b6b392bd4396e903b2e05f5e943c9cbade.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d5065e1cfb70c7592d77bbee4274897803ae1c6830c8c4587287a6c862deb6a8",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variantfe3ae2a28def284715025b6782ad28b6b392bd4396e903b2e05f5e943c9cbade.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:eeaa0d3e2d7c69f7f09ecd60af88be8cedeccfc72297a0ddb7f1f7c3d437b445`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 56–78.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def StructureGroupoid.LocalInvariantProp.localPredicate (hG : LocalInvariantProp G G' P) :
    TopCat.LocalPredicate fun _ : TopCat.of M => M' where
  pred {U : Opens (TopCat.of M)} := fun f : U → M' => ChartedSpace.LiftProp P f
  res := by
    intro U V i f h x
    have hUV : U ≤ V := CategoryTheory.leOfHom i
    change ChartedSpace.LiftPropAt P (f ∘ Opens.inclusion hUV) x
    rw [← hG.liftPropAt_iff_comp_inclusion hUV]
    apply h
  locality := by
    intro V f h x
    obtain ⟨U, hxU, i, hU : ChartedSpace.LiftProp P (f ∘ _)⟩ := h x
    let x' : U := ⟨x, hxU⟩
    have hUV : U ≤ V := CategoryTheory.leOfHom i
    have : ChartedSpace.LiftPropAt P f (Opens.inclusion hUV x') := by
      rw [hG.liftPropAt_iff_comp_inclusion hUV]
      exact hU x'
    convert! this

/-- Let `P` be a `LocalInvariantProp` for functions between spaces with the groupoids `G`, `G'`
and let `M`, `M'` be charted spaces modelled on the model spaces of those groupoids.  Then there is
a sheaf of types on `M` which, to each open set `U` in `M`, associates the type of bundled
functions from `U` to `M'` satisfying the lift of `P`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variantfe3ae2a28def284715025b6782ad28b6b392bd4396e903b2e05f5e943c9cbade.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variantfe3ae2a28def284715025b6782ad28b6b392bd4396e903b2e05f5e943c9cbade.lean#L56).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0c8abd77d96dbf5bf1fe92fcc148b87570bcb4b5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
