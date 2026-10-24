# orthogonal_MP_MM

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:54655a7a-b642-c8a3-cacd-5daad8e9f898",
  "kind": "theorem",
  "lexical_name": "orthogonal_MP_MM",
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
  "slug": "orthogonal-mp-mm--7221e3f023d7cfe6d21cf2a7",
  "source": {
    "blob": "89ce69d65e84dfb007ad240fe345dcf3a36f4365",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 235,
    "line": 230,
    "path": "GRWTSK/Algebra/LinearAlgebra/2172f8ae648a85841694c767f404a114dd090c24594b45bff28c44f1faaa2eaaPositiveFourSect/Variant154973c718611fda9f2c1b6db5b96fd21b3d85a88947cc214d8cee57bf091ee7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7221e3f023d7cfe6d21cf2a78a8304dc940359fadd9cde9f2429fc0bf47d3200",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/2172f8ae648a85841694c767f404a114dd090c24594b45bff28c44f1faaa2eaaPositiveFourSect/Variant154973c718611fda9f2c1b6db5b96fd21b3d85a88947cc214d8cee57bf091ee7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:54655a7a-b642-c8a3-cacd-5daad8e9f898`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 230–235.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem orthogonal_MP_MM (x y : V) :
    G.form (C.sectorMP x) (C.sectorMM y) = 0 :=
  G.orthogonal_of_eigen_plus_minus C.second_selfAdjoint
    (C.second_on_MP x) (C.second_on_MM y)

/-- The four positive sector energies exactly decompose ambient energy. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/2172f8ae648a85841694c767f404a114dd090c24594b45bff28c44f1faaa2eaaPositiveFourSect/Variant154973c718611fda9f2c1b6db5b96fd21b3d85a88947cc214d8cee57bf091ee7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/2172f8ae648a85841694c767f404a114dd090c24594b45bff28c44f1faaa2eaaPositiveFourSect/Variant154973c718611fda9f2c1b6db5b96fd21b3d85a88947cc214d8cee57bf091ee7.lean#L230).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `89ce69d65e84dfb007ad240fe345dcf3a36f4365` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
