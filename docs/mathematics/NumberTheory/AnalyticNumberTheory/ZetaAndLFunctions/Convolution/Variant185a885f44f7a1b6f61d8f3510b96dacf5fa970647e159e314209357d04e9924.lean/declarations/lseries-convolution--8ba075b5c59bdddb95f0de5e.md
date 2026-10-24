# LSeries_convolution

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e71026a8-026e-583b-8fa8-3ef521767a95",
  "kind": "lemma",
  "lexical_name": "LSeries_convolution",
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
  "slug": "lseries-convolution--8ba075b5c59bdddb95f0de5e",
  "source": {
    "blob": "8367912755b1238b806789766a7ece118791d92c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 171,
    "line": 164,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Convolution/Variant185a885f44f7a1b6f61d8f3510b96dacf5fa970647e159e314209357d04e9924.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8ba075b5c59bdddb95f0de5e9911a25e1ae4f6841df87a0b161711ca77b865bc",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Convolution/Variant185a885f44f7a1b6f61d8f3510b96dacf5fa970647e159e314209357d04e9924.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e71026a8-026e-583b-8fa8-3ef521767a95`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 164–171.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma LSeries_convolution {f g : ℕ → ℂ} {s : ℂ}
    (hf : abscissaOfAbsConv f < s.re) (hg : abscissaOfAbsConv g < s.re) :
    LSeries (f ⍟ g) s = LSeries f s * LSeries g s :=
  LSeries_convolution' (LSeriesSummable_of_abscissaOfAbsConv_lt_re hf)
    (LSeriesSummable_of_abscissaOfAbsConv_lt_re hg)

/-- The L-series of the convolution product `f ⍟ g` of two sequences `f` and `g`
is summable when both L-series are summable. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Convolution/Variant185a885f44f7a1b6f61d8f3510b96dacf5fa970647e159e314209357d04e9924.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Convolution/Variant185a885f44f7a1b6f61d8f3510b96dacf5fa970647e159e314209357d04e9924.lean#L164).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8367912755b1238b806789766a7ece118791d92c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
