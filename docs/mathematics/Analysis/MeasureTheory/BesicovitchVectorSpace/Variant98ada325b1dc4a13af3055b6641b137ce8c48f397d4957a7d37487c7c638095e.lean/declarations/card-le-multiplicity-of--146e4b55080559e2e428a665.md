# card_le_multiplicity_of_δ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4023ae41-bffe-5635-89da-a2bf55443bff",
  "kind": "theorem",
  "lexical_name": "card_le_multiplicity_of_δ",
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
  "slug": "card-le-multiplicity-of--146e4b55080559e2e428a665",
  "source": {
    "blob": "6a0f147cc081eff8b87d2df967d8e6b76be8b601",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 274,
    "line": 271,
    "path": "GRWTSK/Analysis/MeasureTheory/BesicovitchVectorSpace/Variant98ada325b1dc4a13af3055b6641b137ce8c48f397d4957a7d37487c7c638095e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:146e4b55080559e2e428a665a66fb1cde45d92be161b7da0fdb303ffd1542be2",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/BesicovitchVectorSpace/Variant98ada325b1dc4a13af3055b6641b137ce8c48f397d4957a7d37487c7c638095e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4023ae41-bffe-5635-89da-a2bf55443bff`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 271–274.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem card_le_multiplicity_of_δ {s : Finset E} (hs : ∀ c ∈ s, ‖c‖ ≤ 2)
    (h's : ∀ c ∈ s, ∀ d ∈ s, c ≠ d → 1 - goodδ E ≤ ‖c - d‖) : s.card ≤ multiplicity E :=
  (Classical.choose_spec (exists_goodδ E)).2.2 s hs h's

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/BesicovitchVectorSpace/Variant98ada325b1dc4a13af3055b6641b137ce8c48f397d4957a7d37487c7c638095e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/BesicovitchVectorSpace/Variant98ada325b1dc4a13af3055b6641b137ce8c48f397d4957a7d37487c7c638095e.lean#L271).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6a0f147cc081eff8b87d2df967d8e6b76be8b601` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
