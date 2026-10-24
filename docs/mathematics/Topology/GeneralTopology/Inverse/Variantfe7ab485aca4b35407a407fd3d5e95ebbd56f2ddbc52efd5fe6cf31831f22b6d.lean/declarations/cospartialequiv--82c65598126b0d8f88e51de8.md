# cosPartialEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ea78ee07dca524b95a0ee5c5f0045f0df21b006b9f0af91d59eec09ced8818bc",
  "kind": "def",
  "lexical_name": "cosPartialEquiv",
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
  "slug": "cospartialequiv--82c65598126b0d8f88e51de8",
  "source": {
    "blob": "32a0880f3315047038b503bbc3a27fd5a6c8e009",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 468,
    "line": 459,
    "path": "GRWTSK/Topology/GeneralTopology/Inverse/Variantfe7ab485aca4b35407a407fd3d5e95ebbd56f2ddbc52efd5fe6cf31831f22b6d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:82c65598126b0d8f88e51de87406fa94eef958ada7ab4bdcf155704f680c9d96",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Inverse/Variantfe7ab485aca4b35407a407fd3d5e95ebbd56f2ddbc52efd5fe6cf31831f22b6d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ea78ee07dca524b95a0ee5c5f0045f0df21b006b9f0af91d59eec09ced8818bc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 459–468.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def cosPartialEquiv : PartialEquiv ℝ ℝ where
  toFun θ := cos θ
  invFun x := arccos x
  source := Icc 0 π
  target := Icc (-1) 1
  map_source' x hx := by simpa [← abs_le] using abs_cos_le_one x
  map_target' θ hθ := ⟨arccos_nonneg θ, arccos_le_pi θ⟩
  left_inv' θ hθ := arccos_cos (by aesop) (by aesop)
  right_inv' x hx := cos_arccos (by aesop) (by aesop)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Inverse/Variantfe7ab485aca4b35407a407fd3d5e95ebbd56f2ddbc52efd5fe6cf31831f22b6d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Inverse/Variantfe7ab485aca4b35407a407fd3d5e95ebbd56f2ddbc52efd5fe6cf31831f22b6d.lean#L459).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `32a0880f3315047038b503bbc3a27fd5a6c8e009` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
