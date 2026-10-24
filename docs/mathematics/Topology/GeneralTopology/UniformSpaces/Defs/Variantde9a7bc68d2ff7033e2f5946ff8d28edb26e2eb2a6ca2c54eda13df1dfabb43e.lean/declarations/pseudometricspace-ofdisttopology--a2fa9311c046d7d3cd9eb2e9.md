# PseudoMetricSpace.ofDistTopology

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0c998f60feba36cdf47b4c3f70385456e39404c4838caa5ad2c846f5a448126f",
  "kind": "def",
  "lexical_name": "PseudoMetricSpace.ofDistTopology",
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
  "slug": "pseudometricspace-ofdisttopology--a2fa9311c046d7d3cd9eb2e9",
  "source": {
    "blob": "a1302b6c82c9cd028793f6cad50230b5fbe3a5b7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 210,
    "line": 192,
    "path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/Defs/Variantde9a7bc68d2ff7033e2f5946ff8d28edb26e2eb2a6ca2c54eda13df1dfabb43e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a2fa9311c046d7d3cd9eb2e97f68f54358c6fd767a2a40378aa3e666eeedf74b",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UniformSpaces/Defs/Variantde9a7bc68d2ff7033e2f5946ff8d28edb26e2eb2a6ca2c54eda13df1dfabb43e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0c998f60feba36cdf47b4c3f70385456e39404c4838caa5ad2c846f5a448126f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 192–210.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def PseudoMetricSpace.ofDistTopology {α : Type u} [TopologicalSpace α] (dist : α → α → ℝ)
    (dist_self : ∀ x : α, dist x x = 0) (dist_comm : ∀ x y : α, dist x y = dist y x)
    (dist_triangle : ∀ x y z : α, dist x z ≤ dist x y + dist y z)
    (H : ∀ s : Set α, IsOpen s ↔ ∀ x ∈ s, ∃ ε > 0, ∀ y, dist x y < ε → y ∈ s) :
    PseudoMetricSpace α :=
  { dist := dist
    dist_self := dist_self
    dist_comm := dist_comm
    dist_triangle := dist_triangle
    toUniformSpace :=
      (UniformSpace.ofDist dist dist_self dist_comm dist_triangle).replaceTopology <|
        TopologicalSpace.ext_iff.2 fun s ↦ (H s).trans <| forall₂_congr fun x _ ↦
          ((UniformSpace.hasBasis_ofFun (exists_gt (0 : ℝ)) dist dist_self dist_comm dist_triangle
            UniformSpace.ofDist_aux).comap (Prod.mk x)).mem_iff.symm
    uniformity_dist := rfl
    toBornology := Bornology.ofDist dist dist_comm dist_triangle
    cobounded_sets := rfl }

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Topology/GeneralTopology/UniformSpaces/Defs/Variantde9a7bc68d2ff7033e2f5946ff8d28edb26e2eb2a6ca2c54eda13df1dfabb43e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UniformSpaces/Defs/Variantde9a7bc68d2ff7033e2f5946ff8d28edb26e2eb2a6ca2c54eda13df1dfabb43e.lean#L192).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a1302b6c82c9cd028793f6cad50230b5fbe3a5b7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
