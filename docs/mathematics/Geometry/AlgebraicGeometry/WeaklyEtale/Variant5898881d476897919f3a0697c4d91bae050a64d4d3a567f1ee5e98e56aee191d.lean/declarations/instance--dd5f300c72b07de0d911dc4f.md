# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:08e4bd61ced5507768335bce4f178a02103b48eab49b33ee341ab543453a8294",
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
  "slug": "instance--dd5f300c72b07de0d911dc4f",
  "source": {
    "blob": "77ebbf2535f8840e5d2f83681ac7cd7f322fd553",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 116,
    "line": 111,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/WeaklyEtale/Variant5898881d476897919f3a0697c4d91bae050a64d4d3a567f1ee5e98e56aee191d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:dd5f300c72b07de0d911dc4fcccb26cf8ecf930812ee7de037375e0bcce3766c",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/WeaklyEtale/Variant5898881d476897919f3a0697c4d91bae050a64d4d3a567f1ee5e98e56aee191d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:08e4bd61ced5507768335bce4f178a02103b48eab49b33ee341ab543453a8294`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 111–116.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance (f : X ⟶ Y) (U : X.Opens) (V : Y.Opens) (e) [WeaklyEtale f] :
    WeaklyEtale (f.resLE V U e) := by
  delta Scheme.Hom.resLE; infer_instance

/-- This proof is by `inferInstance` and the argument goes through
`IsImmersion (diagonal f) → Mono (diagonal f) → IsIso (diagonal (diagonal f))`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/WeaklyEtale/Variant5898881d476897919f3a0697c4d91bae050a64d4d3a567f1ee5e98e56aee191d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/WeaklyEtale/Variant5898881d476897919f3a0697c4d91bae050a64d4d3a567f1ee5e98e56aee191d.lean#L111).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `77ebbf2535f8840e5d2f83681ac7cd7f322fd553` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
