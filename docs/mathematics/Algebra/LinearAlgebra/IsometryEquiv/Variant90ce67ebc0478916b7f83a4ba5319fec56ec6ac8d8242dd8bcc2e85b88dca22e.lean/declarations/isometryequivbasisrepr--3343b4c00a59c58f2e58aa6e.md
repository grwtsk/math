# isometryEquivBasisRepr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d8c39d51ab1f2ef0d811906a7c3f1ea27dcc3fa22c712b9ad1ffa187e0a62488",
  "kind": "def",
  "lexical_name": "isometryEquivBasisRepr",
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
  "slug": "isometryequivbasisrepr--3343b4c00a59c58f2e58aa6e",
  "source": {
    "blob": "535a529f12a4aea1c0d0da22f0fecd966e7cdd1e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 139,
    "line": 129,
    "path": "GRWTSK/Algebra/LinearAlgebra/IsometryEquiv/Variant90ce67ebc0478916b7f83a4ba5319fec56ec6ac8d8242dd8bcc2e85b88dca22e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3343b4c00a59c58f2e58aa6e44d9c4fdf06383f67e17859a3f894548260076c9",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/IsometryEquiv/Variant90ce67ebc0478916b7f83a4ba5319fec56ec6ac8d8242dd8bcc2e85b88dca22e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d8c39d51ab1f2ef0d811906a7c3f1ea27dcc3fa22c712b9ad1ffa187e0a62488`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 129–139.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def isometryEquivBasisRepr (Q : QuadraticMap R M N) (v : Basis ι R M) :
    IsometryEquiv Q (Q.basisRepr v) :=
  isometryEquivOfCompLinearEquiv Q v.equivFun.symm

end QuadraticMap

namespace QuadraticForm
variable [Field K] [Invertible (2 : K)] [AddCommGroup V] [Module K V]

/-- Given an orthogonal basis, a quadratic form is isometrically equivalent with a weighted sum of
squares. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/IsometryEquiv/Variant90ce67ebc0478916b7f83a4ba5319fec56ec6ac8d8242dd8bcc2e85b88dca22e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/IsometryEquiv/Variant90ce67ebc0478916b7f83a4ba5319fec56ec6ac8d8242dd8bcc2e85b88dca22e.lean#L129).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `535a529f12a4aea1c0d0da22f0fecd966e7cdd1e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
