# screwQuarticPenaltyCertificate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bd5db2fdbb4c779bfb95415c6374ab021816bceb8e784198b8ecd6394d9479c9",
  "kind": "def",
  "lexical_name": "screwQuarticPenaltyCertificate",
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
  "slug": "screwquarticpenaltycertificate--959f9583245b9bf6940b495a",
  "source": {
    "blob": "5d6da133cbbec808f93f8f5faff5cdfd994cc36c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 157,
    "line": 141,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/SignedOrientationConnections.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:959f9583245b9bf6940b495ac3ea4ac955f2ef5d6a372817e413391a5ad44c7a",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/SignedOrientationConnections.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bd5db2fdbb4c779bfb95415c6374ab021816bceb8e784198b8ecd6394d9479c9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 141–157.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def screwQuarticPenaltyCertificate :
    OrientationCertificate (ℝ × ℝ) where
  sign := -1
  sign_sq := by norm_num
  positiveSource := fun x => quarticPenalty x.1 x.2
  signedConsumer := fun x =>
    GRWTSK.Polynomial.ConjugateQuartic.witnessTrace x.1 x.2
  positive_nonneg := fun x => quarticPenalty_nonnegative x.1 x.2
  identity := by
    intro x
    change -GRWTSK.Polynomial.ConjugateQuartic.witnessTrace x.1 x.2 =
      quarticPenalty x.1 x.2
    rfl

/-- The current canonical prime-power probe inhabits the SAME abstract
negative-orientation type, but with its own arithmetic source factor. This
does not identify it with the Hodge or screw constructions. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/SignedOrientationConnections.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/SignedOrientationConnections.lean#L141).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5d6da133cbbec808f93f8f5faff5cdfd994cc36c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
