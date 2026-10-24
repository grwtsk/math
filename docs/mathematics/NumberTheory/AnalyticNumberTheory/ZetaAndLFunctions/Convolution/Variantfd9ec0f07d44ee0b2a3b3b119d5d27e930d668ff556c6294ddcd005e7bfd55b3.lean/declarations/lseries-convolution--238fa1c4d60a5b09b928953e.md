# LSeries_convolution

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a1459a27-95be-9490-be81-2684ea98fe7e",
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
  "slug": "lseries-convolution--238fa1c4d60a5b09b928953e",
  "source": {
    "blob": "238acbc272b7a5ea1247280622a8f36271612a9f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 166,
    "line": 159,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Convolution/Variantfd9ec0f07d44ee0b2a3b3b119d5d27e930d668ff556c6294ddcd005e7bfd55b3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:238fa1c4d60a5b09b928953e0ed8bd80f01471337439e2d445850fdd1e486240",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Convolution/Variantfd9ec0f07d44ee0b2a3b3b119d5d27e930d668ff556c6294ddcd005e7bfd55b3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a1459a27-95be-9490-be81-2684ea98fe7e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 159–166.

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

[Verification target and public status](../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Convolution/Variantfd9ec0f07d44ee0b2a3b3b119d5d27e930d668ff556c6294ddcd005e7bfd55b3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Convolution/Variantfd9ec0f07d44ee0b2a3b3b119d5d27e930d668ff556c6294ddcd005e7bfd55b3.lean#L159).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `238acbc272b7a5ea1247280622a8f36271612a9f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
