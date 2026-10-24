# mem_darts_iff_infix_support

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b1c6429e-c08e-04fb-cfaf-87aeffa83c05",
  "kind": "theorem",
  "lexical_name": "mem_darts_iff_infix_support",
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
  "slug": "mem-darts-iff-infix-support--a02c73114c63598240309113",
  "source": {
    "blob": "dd01ef05596b135e068047cafb2d320a3ebe5e88",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 315,
    "line": 306,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variant044ebf7653d1a6ec7fa4ea1f664ee648ef0ad028f332f64531de085e55f03ddb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a02c73114c635982403091139ecc5967ffd52297077d7d4e6b52553b4a0b4695",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variant044ebf7653d1a6ec7fa4ea1f664ee648ef0ad028f332f64531de085e55f03ddb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b1c6429e-c08e-04fb-cfaf-87aeffa83c05`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 306–315.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_darts_iff_infix_support {u' v'} {p : G.Walk u v} (h : G.Adj u' v') :
    ⟨⟨u', v'⟩, h⟩ ∈ p.darts ↔ [u', v'] <:+: p.support := by
  refine .trans ⟨fun h ↦ ?_, fun ⟨i, hi, h⟩ ↦ ?_⟩ List.infix_iff_getElem?.symm
  · have ⟨i, hi, h⟩ := List.getElem_of_mem h
    exact ⟨i, by grind, fun j hj ↦ by grind [fst_darts_getElem, snd_darts_getElem]⟩
  · have := h 0
    have := h 1
    convert! p.darts.getElem_mem (n := i) (by grind)
      <;> grind [fst_darts_getElem, snd_darts_getElem]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variant044ebf7653d1a6ec7fa4ea1f664ee648ef0ad028f332f64531de085e55f03ddb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variant044ebf7653d1a6ec7fa4ea1f664ee648ef0ad028f332f64531de085e55f03ddb.lean#L306).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dd01ef05596b135e068047cafb2d320a3ebe5e88` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
