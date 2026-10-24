# _root_.GRWTSK.Analysis.AsymptoticAnalysis.IsBigOWithIsBigO.Variant31c92bbc007ee307429e87d63688075d0683383966412455075accb6e29d6a93.Filter.EventuallyEq.isBigO

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d48c2d2c-41a5-a16d-e937-e3bc7ebb4e49",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.Analysis.AsymptoticAnalysis.IsBigOWithIsBigO.Variant31c92bbc007ee307429e87d63688075d0683383966412455075accb6e29d6a93.Filter.EventuallyEq.isBigO",
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
  "slug": "root-grwtsk-analysis-asymptoticanalysis-isbigowithisbigo-variant31c92bbc--7bf4b8fc2bafcf287fd2a1d7",
  "source": {
    "blob": "47d6494a4b84f75df46502bfccc85cfb17f79412",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 385,
    "line": 383,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Basic/Variant68728ea03804c0415e4e72c3902bf8c06da79a1fc4f684420cccab497d784cdf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7bf4b8fc2bafcf287fd2a1d73d8632fd33fe03684faf38c4e487d12c5951ea76",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Basic/Variant68728ea03804c0415e4e72c3902bf8c06da79a1fc4f684420cccab497d784cdf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d48c2d2c-41a5-a16d-e937-e3bc7ebb4e49`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 383–385.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.Analysis.AsymptoticAnalysis.IsBigOWithIsBigO.Variant31c92bbc007ee307429e87d63688075d0683383966412455075accb6e29d6a93.Filter.EventuallyEq.isBigO {f₁ f₂ : α → E} (hf : f₁ =ᶠ[l] f₂) : f₁ =O[l] f₂ :=
  hf.trans_isBigO (isBigO_refl _ _)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Basic/Variant68728ea03804c0415e4e72c3902bf8c06da79a1fc4f684420cccab497d784cdf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Basic/Variant68728ea03804c0415e4e72c3902bf8c06da79a1fc4f684420cccab497d784cdf.lean#L383).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `47d6494a4b84f75df46502bfccc85cfb17f79412` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
