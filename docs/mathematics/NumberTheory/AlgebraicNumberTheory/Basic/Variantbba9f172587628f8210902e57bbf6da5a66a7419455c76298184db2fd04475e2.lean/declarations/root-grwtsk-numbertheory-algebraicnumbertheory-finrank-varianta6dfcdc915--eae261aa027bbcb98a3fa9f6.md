# _root_.GRWTSK.NumberTheory.AlgebraicNumberTheory.Finrank.Varianta6dfcdc91575222e6daef4b1b08ed0a9f8fa78e66b87ab804375d2e9fd6116b8.IsCyclotomicExtension.ringOfIntegers

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d761163c07b6c193be00fa4e0f685a5f0d2a56e80f820cab8bbcaac7b8dd98bc",
  "kind": "instance",
  "lexical_name": "_root_.GRWTSK.NumberTheory.AlgebraicNumberTheory.Finrank.Varianta6dfcdc91575222e6daef4b1b08ed0a9f8fa78e66b87ab804375d2e9fd6116b8.IsCyclotomicExtension.ringOfIntegers",
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
  "slug": "root-grwtsk-numbertheory-algebraicnumbertheory-finrank-varianta6dfcdc915--eae261aa027bbcb98a3fa9f6",
  "source": {
    "blob": "a8be3adc809a6dd3ed3c063e1dddf2e3ace97cc4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 858,
    "line": 852,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/Basic/Variantbba9f172587628f8210902e57bbf6da5a66a7419455c76298184db2fd04475e2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:eae261aa027bbcb98a3fa9f662bd67bc1f6cb85c363c7e11c40ea609cb0e17dc",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/Basic/Variantbba9f172587628f8210902e57bbf6da5a66a7419455c76298184db2fd04475e2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d761163c07b6c193be00fa4e0f685a5f0d2a56e80f820cab8bbcaac7b8dd98bc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 852–858.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance _root_.GRWTSK.NumberTheory.AlgebraicNumberTheory.Finrank.Varianta6dfcdc91575222e6daef4b1b08ed0a9f8fa78e66b87ab804375d2e9fd6116b8.IsCyclotomicExtension.ringOfIntegers [IsCyclotomicExtension {n} ℚ K] :
    IsCyclotomicExtension {n} ℤ (𝓞 K) :=
  let _ := (zeta_spec n ℚ K).adjoin_isCyclotomicExtension ℤ
  IsCyclotomicExtension.equiv _ ℤ _ (zeta_spec n ℚ K).adjoinEquivRingOfIntegers

/-- The integral `PowerBasis` of `𝓞 K` given by a primitive root of unity, where `K` is an `n`-th
cyclotomic extension of `ℚ`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AlgebraicNumberTheory/Basic/Variantbba9f172587628f8210902e57bbf6da5a66a7419455c76298184db2fd04475e2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/Basic/Variantbba9f172587628f8210902e57bbf6da5a66a7419455c76298184db2fd04475e2.lean#L852).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a8be3adc809a6dd3ed3c063e1dddf2e3ace97cc4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
