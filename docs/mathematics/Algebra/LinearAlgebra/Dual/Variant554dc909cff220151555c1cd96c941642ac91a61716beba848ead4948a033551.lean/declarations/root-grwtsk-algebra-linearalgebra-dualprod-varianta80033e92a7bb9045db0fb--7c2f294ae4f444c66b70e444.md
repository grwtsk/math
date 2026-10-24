# _root_.GRWTSK.Algebra.LinearAlgebra.DualProd.Varianta80033e92a7bb9045db0fb6cf4de3c15a6f845501ad3b5f0a98cb83594a73f64.LinearMap.dualProd.toQuadraticForm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a5be2e29-3f28-9392-42ab-d0c5d777af44",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.Algebra.LinearAlgebra.DualProd.Varianta80033e92a7bb9045db0fb6cf4de3c15a6f845501ad3b5f0a98cb83594a73f64.LinearMap.dualProd.toQuadraticForm",
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
  "slug": "root-grwtsk-algebra-linearalgebra-dualprod-varianta80033e92a7bb9045db0fb--7c2f294ae4f444c66b70e444",
  "source": {
    "blob": "fb9ab0ca8ee90cbc118ba2715d60fa34669597c0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 111,
    "line": 104,
    "path": "GRWTSK/Algebra/LinearAlgebra/Dual/Variant554dc909cff220151555c1cd96c941642ac91a61716beba848ead4948a033551.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7c2f294ae4f444c66b70e4449389a8d8f994ac05168df55b846dd3d3036db4e7",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Dual/Variant554dc909cff220151555c1cd96c941642ac91a61716beba848ead4948a033551.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a5be2e29-3f28-9392-42ab-d0c5d777af44`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 104–111.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.Algebra.LinearAlgebra.DualProd.Varianta80033e92a7bb9045db0fb6cf4de3c15a6f845501ad3b5f0a98cb83594a73f64.LinearMap.dualProd.toQuadraticForm :
    (LinearMap.dualProd R M).toQuadraticMap = 2 • dualProd R M :=
  ext fun _a => (two_nsmul _).symm

variable {R M N}

/-- Any module isomorphism induces a quadratic isomorphism between the corresponding `dual_prod.` -/
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Dual/Variant554dc909cff220151555c1cd96c941642ac91a61716beba848ead4948a033551.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Dual/Variant554dc909cff220151555c1cd96c941642ac91a61716beba848ead4948a033551.lean#L104).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fb9ab0ca8ee90cbc118ba2715d60fa34669597c0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
