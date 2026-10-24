# edgeDensity_chunk_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1883a3c8-06eb-6571-7828-4b5835b22ee7",
  "kind": "theorem",
  "lexical_name": "edgeDensity_chunk_aux",
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
  "slug": "edgedensity-chunk-aux--a901f2cad042be862225a9b6",
  "source": {
    "blob": "6790588d16c212f809dcd20bfa350c3ce7220c36",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 368,
    "line": 342,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Chunk/Variant4fa4ad01ea6b0a0270fc3b25c4d5f8b9f514fdd2105007bf6874b6a2823d253a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a901f2cad042be862225a9b688cde155419d3ed7af5c5d5793ccb9a232296eab",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Chunk/Variant4fa4ad01ea6b0a0270fc3b25c4d5f8b9f514fdd2105007bf6874b6a2823d253a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1883a3c8-06eb-6571-7828-4b5835b22ee7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 342–368.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem edgeDensity_chunk_aux [Nonempty α] (hP)
    (hPα : #P.parts * 16 ^ #P.parts ≤ card α) (hPε : ↑100 ≤ ↑4 ^ #P.parts * ε ^ 5)
    (hU : U ∈ P.parts) (hV : V ∈ P.parts) :
    (G.edgeDensity U V : ℝ) ^ 2 - ε ^ 5 / ↑25 ≤
    ((∑ ab ∈ (chunk hP G ε hU).parts.product (chunk hP G ε hV).parts,
      (G.edgeDensity ab.1 ab.2 : ℝ)) / ↑16 ^ #P.parts) ^ 2 := by
  obtain hGε | hGε := le_total (G.edgeDensity U V : ℝ) (ε ^ 5 / 50)
  · refine (sub_nonpos_of_le <| (sq_le ?_ ?_).trans <| hGε.trans ?_).trans (sq_nonneg _)
    · exact mod_cast G.edgeDensity_nonneg _ _
    · exact mod_cast G.edgeDensity_le_one _ _
    · exact div_le_div_of_nonneg_left (by sz_positivity) (by norm_num) (by norm_num)
  rw [← sub_nonneg] at hGε
  have : 0 ≤ ε := by sz_positivity
  calc
    _ = G.edgeDensity U V ^ 2 - 1 * ε ^ 5 / 25 + 0 ^ 10 / 2500 := by ring
    _ ≤ G.edgeDensity U V ^ 2 - G.edgeDensity U V * ε ^ 5 / 25 + ε ^ 10 / 2500 := by
      gcongr; exact mod_cast G.edgeDensity_le_one ..
    _ = (G.edgeDensity U V - ε ^ 5 / 50) ^ 2 := by ring
    _ ≤ _ := by
      gcongr
      have rflU := Set.Subset.refl (chunk hP G ε hU).parts.toSet
      have rflV := Set.Subset.refl (chunk hP G ε hV).parts.toSet
      refine (le_trans ?_ <| density_sub_eps_le_sum_density_div_card hPα hPε rflU rflV).trans ?_
      · rw [biUnion_parts, biUnion_parts]
      · rw [card_chunk (m_pos hPα).ne', card_chunk (m_pos hPα).ne', ← cast_mul, ← mul_pow, cast_pow]
        norm_cast

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Chunk/Variant4fa4ad01ea6b0a0270fc3b25c4d5f8b9f514fdd2105007bf6874b6a2823d253a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Chunk/Variant4fa4ad01ea6b0a0270fc3b25c4d5f8b9f514fdd2105007bf6874b6a2823d253a.lean#L342).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6790588d16c212f809dcd20bfa350c3ce7220c36` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
