# flatColorTorusMapIdV1

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:562fbd386badc51e831ddee84693d0acdf12272c0c2f10297e9506fdd21545e7",
  "kind": "def",
  "lexical_name": "flatColorTorusMapIdV1",
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
  "slug": "flatcolortorusmapidv1--eb0218cce29bb1b2e7ef1cc7",
  "source": {
    "blob": "02febb46fbcd7b133ac9f1fd6bbf26d897f398e5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 46,
    "line": 39,
    "path": "GRWTSK/Analysis/XYZColorTorus/Variantd480f8ea37eb7eb7b054cd937314868be75dd104fab66279a08161d45012dfa1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:eb0218cce29bb1b2e7ef1cc7e787a92d5758bf38313e0ef094168c7baf0a10b1",
  "verification": {
    "reference": "docs/verification/Analysis/XYZColorTorus/Variantd480f8ea37eb7eb7b054cd937314868be75dd104fab66279a08161d45012dfa1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:562fbd386badc51e831ddee84693d0acdf12272c0c2f10297e9506fdd21545e7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 39–46.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[expose] def flatColorTorusMapIdV1 : String :=
  "surface.xyz.flat-color-torus.v1"

/-! ## Explicit standard embedding -/

/-- Presentation radii carrying the nondegeneracy assumptions required by the
instrument.  They are not part of the XYZ wire format. -/
@[surface_novel]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/XYZColorTorus/Variantd480f8ea37eb7eb7b054cd937314868be75dd104fab66279a08161d45012dfa1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/XYZColorTorus/Variantd480f8ea37eb7eb7b054cd937314868be75dd104fab66279a08161d45012dfa1.lean#L39).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `02febb46fbcd7b133ac9f1fd6bbf26d897f398e5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
