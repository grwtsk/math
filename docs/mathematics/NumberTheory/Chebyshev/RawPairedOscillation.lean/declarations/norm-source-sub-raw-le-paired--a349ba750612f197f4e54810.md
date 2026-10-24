# norm_source_sub_raw_le_paired

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4c5868ab-bd76-78a4-059f-6f0632d42cde",
  "kind": "theorem",
  "lexical_name": "norm_source_sub_raw_le_paired",
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
  "slug": "norm-source-sub-raw-le-paired--a349ba750612f197f4e54810",
  "source": {
    "blob": "744cc7362b252c481c9716dd105112d0754db501",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 81,
    "line": 74,
    "path": "GRWTSK/NumberTheory/Chebyshev/RawPairedOscillation.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a349ba750612f197f4e54810400fc0cbd58f0b831f558876c32879e7e44331b8",
  "verification": {
    "reference": "docs/verification/NumberTheory/Chebyshev/RawPairedOscillation.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4c5868ab-bd76-78a4-059f-6f0632d42cde`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 74–81.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_source_sub_raw_le_paired (M : ℕ) (hM : 2 ≤ M) (h T : ℝ)
    (hh : 0 < h) (hsmall : h ≤ 1) (ha : 1 < (M:ℝ)-h) (hT : 2 ≤ T) :
    ‖(psiHalf (M:ℝ):ℂ)-rawClassicalHead M T‖ ≤
      rawAverageTailBudget M h T+pairedOscillation M h T := by
  exact (norm_sub_le_norm_sub_add_norm_sub _ (rawAverage M h T) _).trans
    (add_le_add (norm_source_sub_average_le M hM h T hh hsmall ha hT)
      (norm_average_sub_point_le_paired M h T hh ha))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Chebyshev/RawPairedOscillation.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Chebyshev/RawPairedOscillation.lean#L74).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `744cc7362b252c481c9716dd105112d0754db501` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
