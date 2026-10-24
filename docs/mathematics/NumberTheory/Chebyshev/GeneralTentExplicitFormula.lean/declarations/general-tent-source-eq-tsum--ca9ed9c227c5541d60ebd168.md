# general_tent_source_eq_tsum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8c6081ac-f95d-e000-0fc6-26f2e4b68913",
  "kind": "theorem",
  "lexical_name": "general_tent_source_eq_tsum",
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
  "slug": "general-tent-source-eq-tsum--ca9ed9c227c5541d60ebd168",
  "source": {
    "blob": "1029daef4e33c6e277ab5dfd86840ac977cefb56",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 92,
    "line": 82,
    "path": "GRWTSK/NumberTheory/Chebyshev/GeneralTentExplicitFormula.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ca9ed9c227c5541d60ebd168d99926dc969d49620e4f4f251114ebe6e51c5a2d",
  "verification": {
    "reference": "docs/verification/NumberTheory/Chebyshev/GeneralTentExplicitFormula.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8c6081ac-f95d-e000-0fc6-26f2e4b68913`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 82–92.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem general_tent_source_eq_tsum (x h : ℝ) (hh : 0 < h) (ha : 1 < x - h) :
    tentMangoldt x h = (h : ℂ) -
      (∑' z : ZeroPoint, (multiplicity z : ℂ) * tentKernel x h z.1) +
        (rationalTentCorrection x h : ℂ) := by
  have hs := (canonical_absolute_summable x h hh ha).2
  have hz := summable_selected_heads_tendsto
    (fun z : ZeroPoint => (multiplicity z : ℂ) * tentKernel x h z.1) hs
  have hl := ((tendsto_const_nhds (x := (h : ℂ))).sub hz).add_const
    (rationalTentCorrection x h : ℂ)
  exact tendsto_nhds_unique (general_residues_tendsto_source x h hh ha) hl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Chebyshev/GeneralTentExplicitFormula.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Chebyshev/GeneralTentExplicitFormula.lean#L82).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1029daef4e33c6e277ab5dfd86840ac977cefb56` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
