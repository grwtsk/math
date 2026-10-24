# ZetaLowerBound3_aux2

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:57ef6dab-2302-5ffe-b507-71e280b67f4a",
  "kind": "theorem",
  "lexical_name": "ZetaLowerBound3_aux2",
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
  "slug": "zetalowerbound3-aux2--f8c04af56cfb50505c5d0780",
  "source": {
    "blob": "abc3064379e29e75a5447a19e19b00c9cedea29e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2520,
    "line": 2515,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaBounds/Variant4a9d4039598f653c7f2b142ec17aad5927c9f6ebdd73cfaa395284b174db329d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f8c04af56cfb50505c5d07800a5224bb059f18dcf5d2931afb6708b8cbbc9629",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaBounds/Variant4a9d4039598f653c7f2b142ec17aad5927c9f6ebdd73cfaa395284b174db329d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:57ef6dab-2302-5ffe-b507-71e280b67f4a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2515–2520.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ZetaLowerBound3_aux2 {C : ℝ}
  {σ t : ℝ}
  (ζ_2t_bound : ‖ζ (σ + (2 * t) * I)‖ ≤ C * Real.log |2 * t|) :
  ‖ζ (σ + 2 * t * I)‖ ^ ((1 : ℝ) / 4) ≤ (C * Real.log |2 * t|) ^ ((1 : ℝ) / 4) := by
  bound

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaBounds/Variant4a9d4039598f653c7f2b142ec17aad5927c9f6ebdd73cfaa395284b174db329d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaBounds/Variant4a9d4039598f653c7f2b142ec17aad5927c9f6ebdd73cfaa395284b174db329d.lean#L2515).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `abc3064379e29e75a5447a19e19b00c9cedea29e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
