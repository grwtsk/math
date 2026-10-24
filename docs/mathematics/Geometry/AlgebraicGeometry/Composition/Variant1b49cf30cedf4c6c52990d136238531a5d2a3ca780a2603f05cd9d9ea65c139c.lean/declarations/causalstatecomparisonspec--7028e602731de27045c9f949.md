# causalStateComparisonSpec

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:dc8f43e11fb3cfc8b5571a4e9dd33e2d4ff2393a01a2c781fb2eaef862cc80c4",
  "kind": "def",
  "lexical_name": "causalStateComparisonSpec",
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
  "slug": "causalstatecomparisonspec--7028e602731de27045c9f949",
  "source": {
    "blob": "08b365b2d93362f3eca7c4354b7deffa5aa52196",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 165,
    "line": 156,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Composition/Variant1b49cf30cedf4c6c52990d136238531a5d2a3ca780a2603f05cd9d9ea65c139c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7028e602731de27045c9f9497fbd941887ee8c910b647cbef2c0e5dc4cdaaf99",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Composition/Variant1b49cf30cedf4c6c52990d136238531a5d2a3ca780a2603f05cd9d9ea65c139c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:dc8f43e11fb3cfc8b5571a4e9dd33e2d4ff2393a01a2c781fb2eaef862cc80c4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 156–165.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def causalStateComparisonSpec
    (F : M.Hom N)
    (hInput : Function.Surjective F.mapInput) :
    Comparison.Spec M.CausalState N.CausalState :=
  ⟨F.causalStateMap hInput⟩

end Hom

namespace Factor

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Composition/Variant1b49cf30cedf4c6c52990d136238531a5d2a3ca780a2603f05cd9d9ea65c139c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Composition/Variant1b49cf30cedf4c6c52990d136238531a5d2a3ca780a2603f05cd9d9ea65c139c.lean#L156).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `08b365b2d93362f3eca7c4354b7deffa5aa52196` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
