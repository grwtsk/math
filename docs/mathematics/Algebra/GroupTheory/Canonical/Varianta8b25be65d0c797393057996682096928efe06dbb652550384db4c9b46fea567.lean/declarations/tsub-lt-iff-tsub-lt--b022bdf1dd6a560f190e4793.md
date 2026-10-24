# tsub_lt_iff_tsub_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d3be2d98-9f0f-318f-a946-f3af43f855d7",
  "kind": "theorem",
  "lexical_name": "tsub_lt_iff_tsub_lt",
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
  "slug": "tsub-lt-iff-tsub-lt--b022bdf1dd6a560f190e4793",
  "source": {
    "blob": "c3adcef18088bc9179bd47c28c51dee8772f4322",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 141,
    "line": 137,
    "path": "GRWTSK/Algebra/GroupTheory/Canonical/Varianta8b25be65d0c797393057996682096928efe06dbb652550384db4c9b46fea567.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b022bdf1dd6a560f190e479381469bcf6955a9789a9fcbc6ae34c55b8060347c",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Canonical/Varianta8b25be65d0c797393057996682096928efe06dbb652550384db4c9b46fea567.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d3be2d98-9f0f-318f-a946-f3af43f855d7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 137–141.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem tsub_lt_iff_tsub_lt (hb : AddLECancellable b) (hc : AddLECancellable c)
    (h₁ : b ≤ a) (h₂ : c ≤ a) : a - b < c ↔ a - c < b := by
  rw [hb.tsub_lt_iff_left h₁, hc.tsub_lt_iff_right h₂]
#align add_le_cancellable.tsub_lt_iff_tsub_lt AddLECancellable.tsub_lt_iff_tsub_lt

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Canonical/Varianta8b25be65d0c797393057996682096928efe06dbb652550384db4c9b46fea567.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Canonical/Varianta8b25be65d0c797393057996682096928efe06dbb652550384db4c9b46fea567.lean#L137).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c3adcef18088bc9179bd47c28c51dee8772f4322` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
