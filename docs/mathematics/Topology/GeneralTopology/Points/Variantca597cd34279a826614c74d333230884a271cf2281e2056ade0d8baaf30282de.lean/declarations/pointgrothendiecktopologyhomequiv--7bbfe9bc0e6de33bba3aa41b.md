# pointGrothendieckTopologyHomEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0b715d8a584a386bba4b12cbb1dd394d6587fdecd650a456318765a80dcf5055",
  "kind": "def",
  "lexical_name": "pointGrothendieckTopologyHomEquiv",
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
  "slug": "pointgrothendiecktopologyhomequiv--7bbfe9bc0e6de33bba3aa41b",
  "source": {
    "blob": "2f37dbd351f15a189889efba4a6a72872c5d1bd6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 94,
    "line": 86,
    "path": "GRWTSK/Topology/GeneralTopology/Points/Variantca597cd34279a826614c74d333230884a271cf2281e2056ade0d8baaf30282de.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7bbfe9bc0e6de33bba3aa41bb6db7f9063942224373af1142101e6066de5e411",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Points/Variantca597cd34279a826614c74d333230884a271cf2281e2056ade0d8baaf30282de.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0b715d8a584a386bba4b12cbb1dd394d6587fdecd650a456318765a80dcf5055`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 86–94.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def pointGrothendieckTopologyHomEquiv {x y : X} :
    (pointGrothendieckTopology x ⟶ pointGrothendieckTopology y) ≃ x ⤳ y where
  toFun f := specializes_iff_forall_open.2 (fun U h₁ h₂ ↦ (f.hom.app ⟨U, h₁⟩ ⟨⟨h₂⟩⟩).down.down)
  invFun s := { hom.app U := ↾fun hU ↦
    ⟨⟨specializes_iff_forall_open.1 s _ U.2 hU.down.down⟩⟩ }
  left_inv _ := by subsingleton
  right_inv _ := rfl

end Opens
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Points/Variantca597cd34279a826614c74d333230884a271cf2281e2056ade0d8baaf30282de.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Points/Variantca597cd34279a826614c74d333230884a271cf2281e2056ade0d8baaf30282de.lean#L86).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2f37dbd351f15a189889efba4a6a72872c5d1bd6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
