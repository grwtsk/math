# fromSpec_primeIdealOf

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6f17ae9ced7fa1b29dd8082e579a7ec248a5ed4f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 779,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e1/e1d1dc6eb97ef22043207da61709f1c92f5dc7d1a768a111441d6db5d74dae36.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c6844ac9-a6b2-f273-207f-3fe23c77b419",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:55bae0d0-133b-ec0f-ec91-d6be3ed45733",
  "kind": "theorem",
  "lexical_name": "fromSpec_primeIdealOf",
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
  "slug": "fromspec-primeidealof--53c8edefd2a09ef5f1568164",
  "source": {
    "blob": "6f17ae9ced7fa1b29dd8082e579a7ec248a5ed4f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 785,
    "line": 779,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/AffineScheme/Variante1d1dc6eb97ef22043207da61709f1c92f5dc7d1a768a111441d6db5d74dae36.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:53c8edefd2a09ef5f1568164f4df66663d59cd1ff9b58d6370e2ce4be1fe939f",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/AffineScheme/Variante1d1dc6eb97ef22043207da61709f1c92f5dc7d1a768a111441d6db5d74dae36.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:55bae0d0-133b-ec0f-ec91-d6be3ed45733`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 779–785.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fromSpec_primeIdealOf (x : U) :
    hU.fromSpec (hU.primeIdealOf x) = x.1 := by
  dsimp only [IsAffineOpen.fromSpec, Subtype.coe_mk, IsAffineOpen.primeIdealOf]
  rw [← Scheme.Hom.comp_apply, Iso.hom_inv_id_assoc]
  rfl

open IsLocalRing in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/AffineScheme/Variante1d1dc6eb97ef22043207da61709f1c92f5dc7d1a768a111441d6db5d74dae36.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/AffineScheme/Variante1d1dc6eb97ef22043207da61709f1c92f5dc7d1a768a111441d6db5d74dae36.lean#L779).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6f17ae9ced7fa1b29dd8082e579a7ec248a5ed4f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
