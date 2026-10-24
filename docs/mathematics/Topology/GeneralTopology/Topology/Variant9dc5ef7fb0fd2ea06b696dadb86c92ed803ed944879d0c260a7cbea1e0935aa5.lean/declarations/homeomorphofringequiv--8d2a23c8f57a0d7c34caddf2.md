# homeomorphOfRingEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:453998873d337729294ae9c07ea710de08eb34c63ee3837b37a450f28fac48cc",
  "kind": "def",
  "lexical_name": "homeomorphOfRingEquiv",
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
  "slug": "homeomorphofringequiv--8d2a23c8f57a0d7c34caddf2",
  "source": {
    "blob": "785e3ed3c72359e96d30ee598be8c3e59e4145f3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 454,
    "line": 449,
    "path": "GRWTSK/Topology/GeneralTopology/Topology/Variant9dc5ef7fb0fd2ea06b696dadb86c92ed803ed944879d0c260a7cbea1e0935aa5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8d2a23c8f57a0d7c34caddf29c5cf273e2e5d820598fa6c36d9616346f4f562a",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Topology/Variant9dc5ef7fb0fd2ea06b696dadb86c92ed803ed944879d0c260a7cbea1e0935aa5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:453998873d337729294ae9c07ea710de08eb34c63ee3837b37a450f28fac48cc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 449–454.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def homeomorphOfRingEquiv (e : R ≃+* S) : PrimeSpectrum R ≃ₜ PrimeSpectrum S where
  toFun := comap (e.symm : S →+* R)
  invFun := comap (e : R →+* S)
  left_inv _ := (comap_comp_apply ..).symm.trans (by simp)
  right_inv _ := (comap_comp_apply ..).symm.trans (by simp)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Topology/Variant9dc5ef7fb0fd2ea06b696dadb86c92ed803ed944879d0c260a7cbea1e0935aa5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Topology/Variant9dc5ef7fb0fd2ea06b696dadb86c92ed803ed944879d0c260a7cbea1e0935aa5.lean#L449).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `785e3ed3c72359e96d30ee598be8c3e59e4145f3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
