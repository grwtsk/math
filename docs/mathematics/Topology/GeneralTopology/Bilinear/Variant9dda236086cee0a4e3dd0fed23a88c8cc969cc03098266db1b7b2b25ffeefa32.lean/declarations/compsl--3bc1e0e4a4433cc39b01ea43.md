# compSL

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cecc3db793fd737f6013a63f3513f2c7230d9874b455b1be12ecd9b255c60203",
  "kind": "def",
  "lexical_name": "compSL",
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
  "slug": "compsl--3bc1e0e4a4433cc39b01ea43",
  "source": {
    "blob": "e29af5a9f1c2503b635ae247b0a71851e4db60eb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 287,
    "line": 281,
    "path": "GRWTSK/Topology/GeneralTopology/Bilinear/Variant9dda236086cee0a4e3dd0fed23a88c8cc969cc03098266db1b7b2b25ffeefa32.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3bc1e0e4a4433cc39b01ea43c27bfda7eb91a56953be320cecef500c3a9c94c8",
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

Occurrence: `declaration:cecc3db793fd737f6013a63f3513f2c7230d9874b455b1be12ecd9b255c60203`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 281–287.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def compSL : (F →SL[σ₂₃] G) →L[𝕜₃] (E →SL[σ₁₂] F) →SL[σ₂₃] E →SL[σ₁₃] G :=
  LinearMap.mkContinuous₂
    (LinearMap.mk₂'ₛₗ (RingHom.id 𝕜₃) σ₂₃ comp add_comp smul_comp comp_add fun c f g => by
      ext
      simp only [map_smulₛₗ, comp_apply, smul_apply])
    1 fun f g => by simpa only [one_mul] using! opNorm_comp_le f g

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Bilinear/Variant9dda236086cee0a4e3dd0fed23a88c8cc969cc03098266db1b7b2b25ffeefa32.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Bilinear/Variant9dda236086cee0a4e3dd0fed23a88c8cc969cc03098266db1b7b2b25ffeefa32.lean#L281).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e29af5a9f1c2503b635ae247b0a71851e4db60eb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
