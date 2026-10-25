# checkedComplexMulFixedV1

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0b04a4538e5be633cc1094b04d6272d772ff34f12af953f3acc1309cf91413be",
  "kind": "def",
  "lexical_name": "checkedComplexMulFixedV1",
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
  "slug": "checkedcomplexmulfixedv1--2bbeadb086111b7309af2df8",
  "source": {
    "blob": "84062d389a1d448e9c943eb656bfc79af72b4723",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 308,
    "line": 297,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/XYZElliptic/Variant1d5cd6d28b0dd2d7ab19c8ce8c403845ae93e966c3495c98dfc5768e72d54b56.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2bbeadb086111b7309af2df8636d8a958ff15b07974c9050e85ad59ee675abeb",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/XYZElliptic/Variant1d5cd6d28b0dd2d7ab19c8ce8c403845ae93e966c3495c98dfc5768e72d54b56.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0b04a4538e5be633cc1094b04d6272d772ff34f12af953f3acc1309cf91413be`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 297–308.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[expose] def checkedComplexMulFixedV1
    (left right : ComplexFixedV1) (scaleRaw : Int) :
    Option ComplexFixedV1 := do
  let numerator ← checkedGaussianMul
    ⟨left.reRaw, left.imRaw⟩ ⟨right.reRaw, right.imRaw⟩
  let reRaw ← roundDivNearestEvenI64 numerator.re scaleRaw
  let imRaw ← roundDivNearestEvenI64 numerator.im scaleRaw
  pure ⟨reRaw, imRaw, scaleRaw⟩

/-- Checked fixed-point evaluation of `z^-2`.  For raw `z = (r+i*s)/scale`,
the raw numerators are `scale^3 * (r^2-s^2, -2*r*s)` and the common
denominator is `(r^2+s^2)^2`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/XYZElliptic/Variant1d5cd6d28b0dd2d7ab19c8ce8c403845ae93e966c3495c98dfc5768e72d54b56.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/XYZElliptic/Variant1d5cd6d28b0dd2d7ab19c8ce8c403845ae93e966c3495c98dfc5768e72d54b56.lean#L297).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `84062d389a1d448e9c943eb656bfc79af72b4723` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
