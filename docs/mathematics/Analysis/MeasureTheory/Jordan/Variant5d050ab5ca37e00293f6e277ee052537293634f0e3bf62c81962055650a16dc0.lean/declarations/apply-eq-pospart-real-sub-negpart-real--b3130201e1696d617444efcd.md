# apply_eq_posPart_real_sub_negPart_real

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b0e18903-622f-18cb-2306-2bb4a7d2237f",
  "kind": "theorem",
  "lexical_name": "apply_eq_posPart_real_sub_negPart_real",
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
  "slug": "apply-eq-pospart-real-sub-negpart-real--b3130201e1696d617444efcd",
  "source": {
    "blob": "42e5696e56e08b68d0754ace40ce7dec5578941a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 485,
    "line": 481,
    "path": "GRWTSK/Analysis/MeasureTheory/Jordan/Variant5d050ab5ca37e00293f6e277ee052537293634f0e3bf62c81962055650a16dc0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b3130201e1696d617444efcd93b7dd8c51eca9f4678098be0391de509dfbaa25",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Jordan/Variant5d050ab5ca37e00293f6e277ee052537293634f0e3bf62c81962055650a16dc0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b0e18903-622f-18cb-2306-2bb4a7d2237f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 481–485.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem apply_eq_posPart_real_sub_negPart_real (s : SignedMeasure α) {i : Set α}
    (hi : MeasurableSet i) :
    s i = s.toJordanDecomposition.posPart.real i - s.toJordanDecomposition.negPart.real i := by
  grind [Measure.toSignedMeasure_sub_apply, toSignedMeasure, toSignedMeasure_toJordanDecomposition]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Jordan/Variant5d050ab5ca37e00293f6e277ee052537293634f0e3bf62c81962055650a16dc0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Jordan/Variant5d050ab5ca37e00293f6e277ee052537293634f0e3bf62c81962055650a16dc0.lean#L481).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `42e5696e56e08b68d0754ace40ce7dec5578941a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
