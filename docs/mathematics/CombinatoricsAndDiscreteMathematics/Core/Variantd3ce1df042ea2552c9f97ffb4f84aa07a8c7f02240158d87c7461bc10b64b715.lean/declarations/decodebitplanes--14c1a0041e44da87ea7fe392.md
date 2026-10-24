# decodeBitPlanes

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7dd28756400c47d012f2fe72b8b00fb09822c05262f62d3eb654755b1799f0fd",
  "kind": "def",
  "lexical_name": "decodeBitPlanes",
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
  "slug": "decodebitplanes--14c1a0041e44da87ea7fe392",
  "source": {
    "blob": "6b38a140936080f1a9a0d1974b0f46889202d796",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 452,
    "line": 441,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Core/Variantd3ce1df042ea2552c9f97ffb4f84aa07a8c7f02240158d87c7461bc10b64b715.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:14c1a0041e44da87ea7fe392f0e85136947eddbb6a1dc3ec88b0d096be56dcfb",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Core/Variantd3ce1df042ea2552c9f97ffb4f84aa07a8c7f02240158d87c7461bc10b64b715.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7dd28756400c47d012f2fe72b8b00fb09822c05262f62d3eb654755b1799f0fd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 441–452.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def decodeBitPlanes
    (q : QuantizedMatrix bits rows columns) :
    Matrix (Fin rows) (Fin columns) Nat :=
  fun row column =>
    ∑ plane : Fin bits,
      if q plane row column then 2 ^ plane.val else 0

/--
Encode an unsigned finite word as little-endian bit planes.  The source entry
is a `Fin (2 ^ bits)`, so range validity is part of the type rather than a
runtime side condition.  Plane `p` is exactly bit `p` of the source value.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Core/Variantd3ce1df042ea2552c9f97ffb4f84aa07a8c7f02240158d87c7461bc10b64b715.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Core/Variantd3ce1df042ea2552c9f97ffb4f84aa07a8c7f02240158d87c7461bc10b64b715.lean#L441).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6b38a140936080f1a9a0d1974b0f46889202d796` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
