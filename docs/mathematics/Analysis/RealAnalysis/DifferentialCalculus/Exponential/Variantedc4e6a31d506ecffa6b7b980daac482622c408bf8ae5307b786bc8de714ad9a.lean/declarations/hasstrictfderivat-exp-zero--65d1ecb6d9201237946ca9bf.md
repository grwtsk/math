# hasStrictFDerivAt_exp_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d99ba4b039de8cfef368a38d101ad19209a58ae0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 162,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ed/edc4e6a31d506ecffa6b7b980daac482622c408bf8ae5307b786bc8de714ad9a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:fffa9871-c17c-bef4-244c-91a7f11284e6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1aaac9da-e40a-7862-8566-529ac9347338",
  "kind": "theorem",
  "lexical_name": "hasStrictFDerivAt_exp_zero",
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
  "slug": "hasstrictfderivat-exp-zero--65d1ecb6d9201237946ca9bf",
  "source": {
    "blob": "d99ba4b039de8cfef368a38d101ad19209a58ae0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 167,
    "line": 162,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Exponential/Variantedc4e6a31d506ecffa6b7b980daac482622c408bf8ae5307b786bc8de714ad9a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:65d1ecb6d9201237946ca9bf090ced77c1cd3daecbb07309a5b5a4ba80f9bc67",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Exponential/Variantedc4e6a31d506ecffa6b7b980daac482622c408bf8ae5307b786bc8de714ad9a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1aaac9da-e40a-7862-8566-529ac9347338`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 162–167.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hasStrictFDerivAt_exp_zero : HasStrictFDerivAt (exp 𝕂) (1 : 𝔸 →L[𝕂] 𝔸) 0 :=
  hasStrictFDerivAt_exp_zero_of_radius_pos (expSeries_radius_pos 𝕂 𝔸)
#align has_strict_fderiv_at_exp_zero hasStrictFDerivAt_exp_zero

/-- The exponential in a Banach algebra `𝔸` over `𝕂 = ℝ` or `𝕂 = ℂ` has Fréchet derivative
`1 : 𝔸 →L[𝕂] 𝔸` at zero. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Exponential/Variantedc4e6a31d506ecffa6b7b980daac482622c408bf8ae5307b786bc8de714ad9a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Exponential/Variantedc4e6a31d506ecffa6b7b980daac482622c408bf8ae5307b786bc8de714ad9a.lean#L162).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d99ba4b039de8cfef368a38d101ad19209a58ae0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
