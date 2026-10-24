# coe_ofEq_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b4419927-76e5-af4f-ae1e-c86d40c4e33b",
  "kind": "theorem",
  "lexical_name": "coe_ofEq_apply",
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
  "slug": "coe-ofeq-apply--2f622777e3c210c41967b3ba",
  "source": {
    "blob": "5d1b969fb764a803b17d00dd682c399c7555630e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 74,
    "line": 61,
    "path": "GRWTSK/Topology/GeneralTopology/AffineSubspace/Variant902f92817216ef4bbfd73eeb23b4154e35c28158cda7063e8faa38fd9452700d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2f622777e3c210c41967b3ba48a70cf87899823fa9d3874c7920a91c2767e506",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/AffineSubspace/Variant902f92817216ef4bbfd73eeb23b4154e35c28158cda7063e8faa38fd9452700d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b4419927-76e5-af4f-ae1e-c86d40c4e33b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 61–74.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coe_ofEq_apply {s t : AffineSubspace R P} [Nonempty s] [Nonempty t]
    (h : s = t) (x : s) : (ofEq h x : P) = x := AffineEquiv.coe_ofEq_apply s t h x

end AffineSubspace

namespace ContinuousAffineEquiv

variable {R V P W Q : Type*} [Ring R] [AddCommGroup V] [Module R V] [TopologicalSpace P]
  [AddTorsor V P] [AddCommGroup W] [Module R W] [TopologicalSpace Q] [AddTorsor W Q]

/-- A continuous affine equivalence restricts to a continuous affine equivalence between an affine
subspace and its image.

This is the continuous affine version of `AffineEquiv.affineSubspaceMap`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/AffineSubspace/Variant902f92817216ef4bbfd73eeb23b4154e35c28158cda7063e8faa38fd9452700d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/AffineSubspace/Variant902f92817216ef4bbfd73eeb23b4154e35c28158cda7063e8faa38fd9452700d.lean#L61).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5d1b969fb764a803b17d00dd682c399c7555630e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
