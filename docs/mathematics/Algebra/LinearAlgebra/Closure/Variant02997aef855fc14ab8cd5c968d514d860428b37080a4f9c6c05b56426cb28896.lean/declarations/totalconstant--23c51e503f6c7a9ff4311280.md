# totalConstant

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1bfe6a348a1cc5e6e2a758a0cb58f607883d2d3e270eaa91c51f8cc2fe83e075",
  "kind": "def",
  "lexical_name": "totalConstant",
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
  "slug": "totalconstant--23c51e503f6c7a9ff4311280",
  "source": {
    "blob": "cf9b9c73f18687d5ad977dc3c6571b86f4547c2d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 79,
    "line": 70,
    "path": "GRWTSK/Algebra/LinearAlgebra/Closure/Variant02997aef855fc14ab8cd5c968d514d860428b37080a4f9c6c05b56426cb28896.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:23c51e503f6c7a9ff4311280771629897a52ba6b793e786578fa5b8f7f542b29",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Closure/Variant02997aef855fc14ab8cd5c968d514d860428b37080a4f9c6c05b56426cb28896.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1bfe6a348a1cc5e6e2a758a0cb58f607883d2d3e270eaa91c51f8cc2fe83e075`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 70–79.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def totalConstant
    {Scale : Type uScale}
    {TestFunction : Type uTest}
    (certificate :
      SquareRootAssemblyCertificate Scale TestFunction) : ℝ :=
  certificate.mainBiasConstant +
    certificate.traceConstant +
    certificate.regularizationConstant +
    certificate.bitfieldConstant

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Closure/Variant02997aef855fc14ab8cd5c968d514d860428b37080a4f9c6c05b56426cb28896.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Closure/Variant02997aef855fc14ab8cd5c968d514d860428b37080a4f9c6c05b56426cb28896.lean#L70).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cf9b9c73f18687d5ad977dc3c6571b86f4547c2d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
