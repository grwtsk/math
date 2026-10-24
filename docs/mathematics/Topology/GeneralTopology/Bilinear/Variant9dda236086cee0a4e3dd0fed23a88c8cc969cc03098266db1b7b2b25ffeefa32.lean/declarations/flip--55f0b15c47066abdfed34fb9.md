# flipₗᵢ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e378825a151feb4087373c9efe5ee1974bccf6612b03fe8832042b9315fd781a",
  "kind": "def",
  "lexical_name": "flipₗᵢ",
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
  "slug": "flip--55f0b15c47066abdfed34fb9",
  "source": {
    "blob": "e29af5a9f1c2503b635ae247b0a71851e4db60eb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 238,
    "line": 227,
    "path": "GRWTSK/Topology/GeneralTopology/Bilinear/Variant9dda236086cee0a4e3dd0fed23a88c8cc969cc03098266db1b7b2b25ffeefa32.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:55f0b15c47066abdfed34fb94edfa2067afa3ca42d5bf6a3fd5f926dfbfee11a",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Bilinear/Variant9dda236086cee0a4e3dd0fed23a88c8cc969cc03098266db1b7b2b25ffeefa32.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e378825a151feb4087373c9efe5ee1974bccf6612b03fe8832042b9315fd781a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 227–238.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def flipₗᵢ : (E →L[𝕜] Fₗ →L[𝕜] Gₗ) ≃ₗᵢ[𝕜] Fₗ →L[𝕜] E →L[𝕜] Gₗ where
  toFun := flip
  invFun := flip
  map_add' := flip_add
  map_smul' := flip_smul
  left_inv := flip_flip
  right_inv := flip_flip
  norm_map' := opNorm_flip

variable {𝕜 E Fₗ Gₗ}

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Bilinear/Variant9dda236086cee0a4e3dd0fed23a88c8cc969cc03098266db1b7b2b25ffeefa32.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Bilinear/Variant9dda236086cee0a4e3dd0fed23a88c8cc969cc03098266db1b7b2b25ffeefa32.lean#L227).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e29af5a9f1c2503b635ae247b0a71851e4db60eb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
