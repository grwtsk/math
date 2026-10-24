# diskBoundaryInclusion

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fef846ebfe16f1968e14c2c409c351d05db2e780c80ae59300b87a1952833cb5",
  "kind": "def",
  "lexical_name": "diskBoundaryInclusion",
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
  "slug": "diskboundaryinclusion--66ef151e0ecc97b131ae1237",
  "source": {
    "blob": "b1cbed4c2cc8a3c1a87d9c8b0043f740153eb013",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 65,
    "line": 58,
    "path": "GRWTSK/Topology/GeneralTopology/Sphere/Variant3a9c7361e8f486c89e1dd36b75a0ddc9a9f7bb11961bc9a655caebd4ec843b0c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:66ef151e0ecc97b131ae123760b63953bf2811368e1a8cd591a0b8c438c94a03",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Sphere/Variant3a9c7361e8f486c89e1dd36b75a0ddc9a9f7bb11961bc9a655caebd4ec843b0c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fef846ebfe16f1968e14c2c409c351d05db2e780c80ae59300b87a1952833cb5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 58–65.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def diskBoundaryInclusion (n : ℕ) : ∂𝔻 n ⟶ 𝔻 n :=
  ofHom
    { toFun := fun ⟨p, hp⟩ ↦ ⟨p, le_of_eq hp⟩
      continuous_toFun := ⟨fun t ⟨s, ⟨r, hro, hrs⟩, hst⟩ ↦ by
        rw [isOpen_induced_iff, ← hst, ← hrs]
        tauto⟩ }

/-- The inclusion `𝔹 n ⟶ 𝔻 n` of the interior of the `n`-disk. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Sphere/Variant3a9c7361e8f486c89e1dd36b75a0ddc9a9f7bb11961bc9a655caebd4ec843b0c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Sphere/Variant3a9c7361e8f486c89e1dd36b75a0ddc9a9f7bb11961bc9a655caebd4ec843b0c.lean#L58).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b1cbed4c2cc8a3c1a87d9c8b0043f740153eb013` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
