# wpLaurentArithmeticCheckV1

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:90b2fc4a48b9725c048cef9b01c7c2b75b437aa62836cdc0c5aa0c54d57ac42b",
  "kind": "def",
  "lexical_name": "wpLaurentArithmeticCheckV1",
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
  "slug": "wplaurentarithmeticcheckv1--351c8982168aade47128ade6",
  "source": {
    "blob": "40a829458286c68662a1646879e1cdd4c92b4f7f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 309,
    "line": 286,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/XYZElliptic/Variantf69c4e557958312a2e0432705316e2f9da18374e5032f188a6dfcbcaabbb11cd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:351c8982168aade47128ade6bd1eb456c7b186d6238e14b2120f413bc0f152de",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/XYZElliptic/Variantf69c4e557958312a2e0432705316e2f9da18374e5032f188a6dfcbcaabbb11cd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:90b2fc4a48b9725c048cef9b01c7c2b75b437aa62836cdc0c5aa0c54d57ac42b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 286–309.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[expose] def wpLaurentArithmeticCheckV1
    (z : ComplexFixedV1) (g2Raw g3Raw : Int) : Option Unit := do
  let inputRe ← checkedI128Value z.reRaw
  let inputIm ← checkedI128Value z.imRaw
  let g2 ← checkedI128Value g2Raw
  let g3 ← checkedI128Value g3Raw
  let input : GaussianIntermediate := ⟨inputRe, inputIm⟩
  let z2 ← checkedGaussianMul input input
  let z4 ← checkedGaussianMul z2 z2
  let z6 ← checkedGaussianMul z4 z2
  let g2Squared ← checkedI128Mul g2 g2
  let _ ← checkedI128Mul g2 z2.re
  let _ ← checkedI128Mul g2 z2.im
  let _ ← checkedI128Mul g3 z4.re
  let _ ← checkedI128Mul g3 z4.im
  let _ ← checkedI128Mul g2Squared z6.re
  let _ ← checkedI128Mul g2Squared z6.im
  let z2ReSquared ← checkedI128Mul z2.re z2.re
  let z2ImSquared ← checkedI128Mul z2.im z2.im
  let _ ← checkedI128Add z2ReSquared z2ImSquared
  pure ()

/-- Checked finite Laurent approximation.  `none` means unsupported scale,
zero input, or failure of the signed-width preflight. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/XYZElliptic/Variantf69c4e557958312a2e0432705316e2f9da18374e5032f188a6dfcbcaabbb11cd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/XYZElliptic/Variantf69c4e557958312a2e0432705316e2f9da18374e5032f188a6dfcbcaabbb11cd.lean#L286).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `40a829458286c68662a1646879e1cdd4c92b4f7f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
