# instZSMul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:652b9bab4b16253ea1c76db0b3841727ad0f798f2f92c0448ee7a1684aba6868",
  "kind": "instance",
  "lexical_name": "instZSMul",
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
  "slug": "instzsmul--772cbe467655e01b54bbf02b",
  "source": {
    "blob": "1a57fdf60ba17d7563b1bc8cf8f2a86d822a70a6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 158,
    "line": 155,
    "path": "GRWTSK/Geometry/DifferentialGeometry/SmoothSection/Variant0831e2d6a7331b2143f4e6e384aaa33e09773b002658bb6188f9c60061c0496c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:772cbe467655e01b54bbf02bf66f37299bdf4de7893cb983822dd35e8280d971",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/SmoothSection/Variant0831e2d6a7331b2143f4e6e384aaa33e09773b002658bb6188f9c60061c0496c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:652b9bab4b16253ea1c76db0b3841727ad0f798f2f92c0448ee7a1684aba6868`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 155–158.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance instZSMul : SMul ℤ Cₛ^n⟮I; F, V⟯ :=
  ⟨zsmulRec⟩

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/SmoothSection/Variant0831e2d6a7331b2143f4e6e384aaa33e09773b002658bb6188f9c60061c0496c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/SmoothSection/Variant0831e2d6a7331b2143f4e6e384aaa33e09773b002658bb6188f9c60061c0496c.lean#L155).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1a57fdf60ba17d7563b1bc8cf8f2a86d822a70a6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
