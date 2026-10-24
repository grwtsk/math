# _root_.GRWTSK.Analysis.RootRegularNormedAlgebra.Variant5ab0b276660075c202f24d0ca03465402c94c3d36d1c92968b73d76ba6b3fb88.NonUnitalAlgHom.Lmul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:78af6bdedb24ecac915c830b3dbf4bf18654fbca6bfcde046385d74aabe7cbdb",
  "kind": "def",
  "lexical_name": "_root_.GRWTSK.Analysis.RootRegularNormedAlgebra.Variant5ab0b276660075c202f24d0ca03465402c94c3d36d1c92968b73d76ba6b3fb88.NonUnitalAlgHom.Lmul",
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
  "slug": "root-grwtsk-analysis-rootregularnormedalgebra-variant5ab0b276660075c202f--1a44d453a5ccf725b0f5c44c",
  "source": {
    "blob": "e0431c3d66cb19d21428bdd6b0e3d656f78acfde",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 75,
    "line": 69,
    "path": "GRWTSK/Analysis/Mul/Variantf243473a98d27f40084a86bcc6c8e42395678594ee6207d450e999c9f122d8ed.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1a44d453a5ccf725b0f5c44ca2fecc1a93ef0689cd79e0582d53db33e0fde2c5",
  "verification": {
    "reference": "docs/verification/Analysis/Mul/Variantf243473a98d27f40084a86bcc6c8e42395678594ee6207d450e999c9f122d8ed.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:78af6bdedb24ecac915c830b3dbf4bf18654fbca6bfcde046385d74aabe7cbdb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 69–75.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def _root_.GRWTSK.Analysis.RootRegularNormedAlgebra.Variant5ab0b276660075c202f24d0ca03465402c94c3d36d1c92968b73d76ba6b3fb88.NonUnitalAlgHom.Lmul : R →ₙₐ[𝕜] R →L[𝕜] R :=
  { mul 𝕜 R with
    map_mul' := fun _ _ ↦ ext fun _ ↦ mul_assoc _ _ _
    map_zero' := ext fun _ ↦ zero_mul _ }

variable {𝕜 R} in
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/Mul/Variantf243473a98d27f40084a86bcc6c8e42395678594ee6207d450e999c9f122d8ed.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Mul/Variantf243473a98d27f40084a86bcc6c8e42395678594ee6207d450e999c9f122d8ed.lean#L69).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e0431c3d66cb19d21428bdd6b0e3d656f78acfde` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
