# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8e19a824d1a31fae80254f505ea8d5a64d4513430f6c18972228297aaaf8787e",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--17d03f64d73fbfd9ec95aa89",
  "source": {
    "blob": "ed6d4a8066b68c57d9108f1b862dd6bff0a98774",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 100,
    "line": 93,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Properties/Variant09cd692a74c58a2de90705774d560337a764204e9db5ec7f16354a306714e7f4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:17d03f64d73fbfd9ec95aa893bd796bc83ba2690538b19d8f1e65a9db14abb9b",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Properties/Variant09cd692a74c58a2de90705774d560337a764204e9db5ec7f16354a306714e7f4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8e19a824d1a31fae80254f505ea8d5a64d4513430f6c18972228297aaaf8787e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 93–100.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance {R : CommRingCat} [H : _root_.IsReduced R] : IsReduced (Scheme.Spec.obj <| op R) := by
  apply (config := { allowSynthFailures := true }) isReducedOfStalkIsReduced
  intro x; dsimp
  have : _root_.IsReduced (CommRingCat.of <| Localization.AtPrime (PrimeSpectrum.asIdeal x)) := by
    dsimp; infer_instance
  exact isReduced_of_injective (StructureSheaf.stalkIso R x).hom
    (StructureSheaf.stalkIso R x).commRingCatIsoToRingEquiv.injective

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Properties/Variant09cd692a74c58a2de90705774d560337a764204e9db5ec7f16354a306714e7f4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Properties/Variant09cd692a74c58a2de90705774d560337a764204e9db5ec7f16354a306714e7f4.lean#L93).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ed6d4a8066b68c57d9108f1b862dd6bff0a98774` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
