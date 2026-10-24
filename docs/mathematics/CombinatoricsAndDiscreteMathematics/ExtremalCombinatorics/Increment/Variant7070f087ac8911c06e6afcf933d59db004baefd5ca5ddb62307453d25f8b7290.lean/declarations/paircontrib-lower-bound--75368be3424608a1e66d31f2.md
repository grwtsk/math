# pairContrib_lower_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:abf75d66-d3f3-2286-ec76-5778c60193b5",
  "kind": "theorem",
  "lexical_name": "pairContrib_lower_bound",
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
  "slug": "paircontrib-lower-bound--75368be3424608a1e66d31f2",
  "source": {
    "blob": "c2265ceab33d1a519aa764a7f457b590c3852dcd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 153,
    "line": 141,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/Increment/Variant7070f087ac8911c06e6afcf933d59db004baefd5ca5ddb62307453d25f8b7290.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:75368be3424608a1e66d31f2df8618a0bebdd5358a310f2c15e6cef3814aade1",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/Increment/Variant7070f087ac8911c06e6afcf933d59db004baefd5ca5ddb62307453d25f8b7290.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:abf75d66-d3f3-2286-ec76-5778c60193b5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 141–153.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pairContrib_lower_bound [Nonempty α] (x : { i // i ∈ P.parts.offDiag }) (hε₁ : ε ≤ 1)
    (hPα : P.parts.card * 16 ^ P.parts.card ≤ card α) (hPε : ↑100 ≤ ↑4 ^ P.parts.card * ε ^ 5) :
    ((G.edgeDensity x.1.1 x.1.2 : ℝ) ^ 2 - ε ^ 5 / ↑25 +
      if G.IsUniform ε x.1.1 x.1.2 then (0 : ℝ) else ε ^ 4 / 3) ≤
    pairContrib G ε hP x / ↑16 ^ P.parts.card := by
  rw [pairContrib]
  push_cast
  split_ifs with h
  · rw [add_zero]
    exact edgeDensity_chunk_uniform hPα hPε _ _
  · exact edgeDensity_chunk_not_uniform hPα hPε hε₁ (mem_offDiag.1 x.2).2.2 h
#align szemeredi_regularity.pair_contrib_lower_bound SzemerediRegularity.pairContrib_lower_bound

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/Increment/Variant7070f087ac8911c06e6afcf933d59db004baefd5ca5ddb62307453d25f8b7290.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/Increment/Variant7070f087ac8911c06e6afcf933d59db004baefd5ca5ddb62307453d25f8b7290.lean#L141).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c2265ceab33d1a519aa764a7f457b590c3852dcd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
