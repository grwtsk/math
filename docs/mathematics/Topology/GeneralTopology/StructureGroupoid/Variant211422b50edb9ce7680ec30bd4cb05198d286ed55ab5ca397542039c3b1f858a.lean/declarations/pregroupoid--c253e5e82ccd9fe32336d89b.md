# Pregroupoid

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:52e7d8b22e7c77288651eb417997176ee5c2be6b51edcf154999a2291e776280",
  "kind": "structure",
  "lexical_name": "Pregroupoid",
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
  "slug": "pregroupoid--c253e5e82ccd9fe32336d89b",
  "source": {
    "blob": "b585e5d057f3ae5cd756a2438c2011a9488bab64",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 291,
    "line": 274,
    "path": "GRWTSK/Topology/GeneralTopology/StructureGroupoid/Variant211422b50edb9ce7680ec30bd4cb05198d286ed55ab5ca397542039c3b1f858a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c253e5e82ccd9fe32336d89b4d810bc2946118f8e3f701c863e1df7015ddff76",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/StructureGroupoid/Variant211422b50edb9ce7680ec30bd4cb05198d286ed55ab5ca397542039c3b1f858a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:52e7d8b22e7c77288651eb417997176ee5c2be6b51edcf154999a2291e776280`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 274–291.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure Pregroupoid (H : Type*) [TopologicalSpace H] where
  /-- Property describing membership in this groupoid: the pregroupoid "contains"
  all functions `H → H` having the pregroupoid property on some `s : Set H` -/
  property : (H → H) → Set H → Prop
  /-- The pregroupoid property is stable under composition -/
  comp : ∀ {f g u v}, property f u → property g v →
    IsOpen u → IsOpen v → IsOpen (u ∩ f ⁻¹' v) → property (g ∘ f) (u ∩ f ⁻¹' v)
  /-- Pregroupoids contain the identity map (on `univ`) -/
  id_mem : property id univ
  /-- The pregroupoid property is "local", in the sense that `f` has the pregroupoid property on `u`
  iff its restriction to each open subset of `u` has it -/
  locality :
    ∀ {f u}, IsOpen u → (∀ x ∈ u, ∃ v, IsOpen v ∧ x ∈ v ∧ property f (u ∩ v)) → property f u
  /-- If `f = g` on `u` and `property f u`, then `property g u` -/
  congr : ∀ {f g : H → H} {u}, IsOpen u → (∀ x ∈ u, g x = f x) → property f u → property g u

/-- Construct a groupoid of partial homeos for which the map and its inverse have some property,
from a pregroupoid asserting that this property is stable under composition. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/StructureGroupoid/Variant211422b50edb9ce7680ec30bd4cb05198d286ed55ab5ca397542039c3b1f858a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/StructureGroupoid/Variant211422b50edb9ce7680ec30bd4cb05198d286ed55ab5ca397542039c3b1f858a.lean#L274).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b585e5d057f3ae5cd756a2438c2011a9488bab64` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
