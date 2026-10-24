# LSeries.abscissaOfAbsConv_convolution_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a454cc14bde9c1628b7e2da3477e381effc491ed",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 166,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6b/6be955cce8fa7dd3b495de76370803315b7f2395b76f40f777a8f1597f73436d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9829f065-c908-d111-e9a8-ce99790d71e0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:59620195-5ef9-350f-d5d3-330101e4f95d",
  "kind": "lemma",
  "lexical_name": "LSeries.abscissaOfAbsConv_convolution_le",
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
  "slug": "lseries-abscissaofabsconv-convolution-le--4e7101efdac96fe0924e6f1d",
  "source": {
    "blob": "a454cc14bde9c1628b7e2da3477e381effc491ed",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 177,
    "line": 166,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Convolution/Variant6be955cce8fa7dd3b495de76370803315b7f2395b76f40f777a8f1597f73436d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4e7101efdac96fe0924e6f1dbdaa68c34c2f9bce746bceb5919c9b63ecb2e3a4",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Convolution/Variant6be955cce8fa7dd3b495de76370803315b7f2395b76f40f777a8f1597f73436d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:59620195-5ef9-350f-d5d3-330101e4f95d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 166–177.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma LSeries.abscissaOfAbsConv_convolution_le (f g : ℕ → ℂ) :
    abscissaOfAbsConv (f ⍟ g) ≤ max (abscissaOfAbsConv f) (abscissaOfAbsConv g) :=
  abscissaOfAbsConv_binop_le LSeriesSummable.convolution f g

namespace ArithmeticFunction

/-!
### Versions for arithmetic functions
-/

/-- The L-series of the (convolution) product of two `ℂ`-valued arithmetic functions `f` and `g`
equals the product of their L-series, assuming both L-series converge. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Convolution/Variant6be955cce8fa7dd3b495de76370803315b7f2395b76f40f777a8f1597f73436d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Convolution/Variant6be955cce8fa7dd3b495de76370803315b7f2395b76f40f777a8f1597f73436d.lean#L166).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a454cc14bde9c1628b7e2da3477e381effc491ed` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
