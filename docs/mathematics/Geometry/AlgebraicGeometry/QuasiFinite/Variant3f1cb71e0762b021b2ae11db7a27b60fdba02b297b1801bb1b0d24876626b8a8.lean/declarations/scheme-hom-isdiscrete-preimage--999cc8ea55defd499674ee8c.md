# Scheme.Hom.isDiscrete_preimage

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b0adf8a5-23a6-17b9-6e8b-ec3312c2f949",
  "kind": "lemma",
  "lexical_name": "Scheme.Hom.isDiscrete_preimage",
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
  "slug": "scheme-hom-isdiscrete-preimage--999cc8ea55defd499674ee8c",
  "source": {
    "blob": "47be796e20c03ee563fa601d2a4a87163338f74c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 179,
    "line": 176,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/QuasiFinite/Variant3f1cb71e0762b021b2ae11db7a27b60fdba02b297b1801bb1b0d24876626b8a8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:999cc8ea55defd499674ee8c246d03a27faf7325ab1be3f86b1210a9b64f8c5d",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/QuasiFinite/Variant3f1cb71e0762b021b2ae11db7a27b60fdba02b297b1801bb1b0d24876626b8a8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b0adf8a5-23a6-17b9-6e8b-ec3312c2f949`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 176–179.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Scheme.Hom.isDiscrete_preimage [LocallyQuasiFinite f] {s : Set Y} (hs : IsDiscrete s) :
    IsDiscrete (f ⁻¹' s) :=
  hs.preimage' f.continuous.continuousOn f.isDiscrete_preimage_singleton

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/QuasiFinite/Variant3f1cb71e0762b021b2ae11db7a27b60fdba02b297b1801bb1b0d24876626b8a8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/QuasiFinite/Variant3f1cb71e0762b021b2ae11db7a27b60fdba02b297b1801bb1b0d24876626b8a8.lean#L176).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `47be796e20c03ee563fa601d2a4a87163338f74c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
