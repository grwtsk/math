# presentation.π

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4814e9717536fbf4a71dbd486ae4b938e145477231863442bb8002eb1ce5395c",
  "kind": "def",
  "lexical_name": "presentation.π",
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
  "slug": "presentation--60a065e4d748e62ea4f772a2",
  "source": {
    "blob": "937052b5884a8de8af8f2a82abe8546eb5db2b91",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 276,
    "line": 272,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variantffca0ff66522aff5aa6626527aae4d7fdc5a5c028e964ed80eaa013c14d9c40e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:60a065e4d748e62ea4f772a2f3570888e2870da5ad18ea49aa9ba88f902b8bf9",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variantffca0ff66522aff5aa6626527aae4d7fdc5a5c028e964ed80eaa013c14d9c40e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4814e9717536fbf4a71dbd486ae4b938e145477231863442bb8002eb1ce5395c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 272–276.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def presentation.π (X : Profinite) : Stonean.toProfinite.obj X.presentation ⟶ X :=
  (profiniteToCompHaus.obj X).projectivePresentation.f

/-- The morphism from `presentation X` to `X` is an epimorphism. -/
noncomputable
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variantffca0ff66522aff5aa6626527aae4d7fdc5a5c028e964ed80eaa013c14d9c40e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variantffca0ff66522aff5aa6626527aae4d7fdc5a5c028e964ed80eaa013c14d9c40e.lean#L272).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `937052b5884a8de8af8f2a82abe8546eb5db2b91` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
