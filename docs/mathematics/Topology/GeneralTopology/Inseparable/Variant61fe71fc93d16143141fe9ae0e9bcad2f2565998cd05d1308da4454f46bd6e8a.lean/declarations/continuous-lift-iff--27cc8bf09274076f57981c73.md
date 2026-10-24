# continuous_lift_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:acce9b81-d794-0f25-458a-3568a91c237c",
  "kind": "theorem",
  "lexical_name": "continuous_lift_iff",
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
  "slug": "continuous-lift-iff--27cc8bf09274076f57981c73",
  "source": {
    "blob": "26bd259d43774e488a009047ce0676d3aaf2a911",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 761,
    "line": 753,
    "path": "GRWTSK/Topology/GeneralTopology/Inseparable/Variant61fe71fc93d16143141fe9ae0e9bcad2f2565998cd05d1308da4454f46bd6e8a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:27cc8bf09274076f57981c73cd994db39732541282493da23be8cb7603460729",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Inseparable/Variant61fe71fc93d16143141fe9ae0e9bcad2f2565998cd05d1308da4454f46bd6e8a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:acce9b81-d794-0f25-458a-3568a91c237c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 753–761.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem continuous_lift_iff {hf : ∀ x y, (x ~ᵢ y) → f x = f y} :
    Continuous (lift f hf) ↔ Continuous f := by
  simp only [← continuousOn_univ, continuousOn_lift, preimage_univ]

alias ⟨_, continuous_lift⟩ := continuous_lift_iff
attribute [fun_prop] continuous_lift

/-- Lift a map `f : X → Y → α` such that `Inseparable a b → Inseparable c d → f a c = f b d` to a
map `SeparationQuotient X → SeparationQuotient Y → α`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Inseparable/Variant61fe71fc93d16143141fe9ae0e9bcad2f2565998cd05d1308da4454f46bd6e8a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Inseparable/Variant61fe71fc93d16143141fe9ae0e9bcad2f2565998cd05d1308da4454f46bd6e8a.lean#L753).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `26bd259d43774e488a009047ce0676d3aaf2a911` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
