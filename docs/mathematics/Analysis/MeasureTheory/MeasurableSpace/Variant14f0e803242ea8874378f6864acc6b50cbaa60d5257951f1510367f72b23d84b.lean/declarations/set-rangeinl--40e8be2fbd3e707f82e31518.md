# Set.rangeInl

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:df31d73744d3abb4ebf53a9aa6586d650fc991c77ef8e5fcd4fc98797496d23c",
  "kind": "def",
  "lexical_name": "Set.rangeInl",
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
  "slug": "set-rangeinl--40e8be2fbd3e707f82e31518",
  "source": {
    "blob": "e51105a40977d1286645bc459af9079358484129",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1441,
    "line": 1432,
    "path": "GRWTSK/Analysis/MeasureTheory/MeasurableSpace/Variant14f0e803242ea8874378f6864acc6b50cbaa60d5257951f1510367f72b23d84b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:40e8be2fbd3e707f82e31518ca3de022fd52da535490290913864aed3a9fb394",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/MeasurableSpace/Variant14f0e803242ea8874378f6864acc6b50cbaa60d5257951f1510367f72b23d84b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:df31d73744d3abb4ebf53a9aa6586d650fc991c77ef8e5fcd4fc98797496d23c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1432–1441.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Set.rangeInl : (range Sum.inl : Set (α ⊕ β)) ≃ᵐ α where
  toEquiv := Equiv.Set.rangeInl α β
  measurable_toFun s (hs : MeasurableSet s) := by
    refine' ⟨_, hs.inl_image, Set.ext _⟩
    rintro ⟨ab, a, rfl⟩
    simp [Set.range_inl]
  measurable_invFun := Measurable.subtype_mk measurable_inl
#align measurable_equiv.set.range_inl MeasurableEquiv.Set.rangeInl

/-- `β` is equivalent to its image in `α ⊕ β` as measurable spaces. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/MeasurableSpace/Variant14f0e803242ea8874378f6864acc6b50cbaa60d5257951f1510367f72b23d84b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/MeasurableSpace/Variant14f0e803242ea8874378f6864acc6b50cbaa60d5257951f1510367f72b23d84b.lean#L1432).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e51105a40977d1286645bc459af9079358484129` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
