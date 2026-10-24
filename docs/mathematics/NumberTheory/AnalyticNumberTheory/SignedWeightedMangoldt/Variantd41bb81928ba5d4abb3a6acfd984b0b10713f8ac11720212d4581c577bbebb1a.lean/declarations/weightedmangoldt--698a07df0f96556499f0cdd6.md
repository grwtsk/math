# weightedMangoldt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:060a70b887737de6023fa157b3ac21b898e293cbabb9c19277a02d96a90027e0",
  "kind": "def",
  "lexical_name": "weightedMangoldt",
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
  "slug": "weightedmangoldt--698a07df0f96556499f0cdd6",
  "source": {
    "blob": "3568007bb600d27e57edf73f439920cc7325021a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 29,
    "line": 27,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/SignedWeightedMangoldt/Variantd41bb81928ba5d4abb3a6acfd984b0b10713f8ac11720212d4581c577bbebb1a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:698a07df0f96556499f0cdd688d0071f09f5601fa5905aec731bee8dd017d68b",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/SignedWeightedMangoldt/Variantd41bb81928ba5d4abb3a6acfd984b0b10713f8ac11720212d4581c577bbebb1a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:060a70b887737de6023fa157b3ac21b898e293cbabb9c19277a02d96a90027e0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 27–29.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def weightedMangoldt (N : ℕ) : ℝ :=
  ∑ n ∈ Ioc 0 N, vonMangoldt n / (n : ℝ)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/SignedWeightedMangoldt/Variantd41bb81928ba5d4abb3a6acfd984b0b10713f8ac11720212d4581c577bbebb1a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/SignedWeightedMangoldt/Variantd41bb81928ba5d4abb3a6acfd984b0b10713f8ac11720212d4581c577bbebb1a.lean#L27).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3568007bb600d27e57edf73f439920cc7325021a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
