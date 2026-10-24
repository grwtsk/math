# freyContactRescaleEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:41fe19419424ce4dfb1b08b92b39a7c64f82f4b9e76ed91d5204aedae4ddb19a",
  "kind": "def",
  "lexical_name": "freyContactRescaleEquiv",
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
  "slug": "freycontactrescaleequiv--213661f09e25a68bc63b1de8",
  "source": {
    "blob": "2fcff964376ca959654c63336c96d5ad4a2d4b88",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 74,
    "line": 59,
    "path": "GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTorsionContact.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:213661f09e25a68bc63b1de8a53a21f2d7dcae41afdaefe84bbebe477571f82b",
  "verification": {
    "reference": "docs/verification/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTorsionContact.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:41fe19419424ce4dfb1b08b92b39a7c64f82f4b9e76ed91d5204aedae4ddb19a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 59–74.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def freyContactRescaleEquiv (l m : ℚ) (hlm : l * m = 1) :
    FreyQuadraticJetRing ≃ₐ[ℚ] FreyQuadraticJetRing where
  toFun := freyContactRescale l
  invFun := freyContactRescale m
  left_inv u := by
    have h := DFunLike.congr_fun (freyContactRescale_comp m l) u
    simpa only [RingHom.comp_apply, mul_comm m l, hlm, freyContactRescale_one,
      RingHom.id_apply] using h
  right_inv u := by
    have h := DFunLike.congr_fun (freyContactRescale_comp l m) u
    simpa only [RingHom.comp_apply, hlm, freyContactRescale_one, RingHom.id_apply] using h
  map_mul' := (freyContactRescale l).map_mul
  map_add' := (freyContactRescale l).map_add
  commutes' := freyContactRescale_scalar l

/-- At Ta, the target y parameter has first coefficient b/a. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTorsionContact.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTorsionContact.lean#L59).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2fcff964376ca959654c63336c96d5ad4a2d4b88` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
