# moserPoint_injective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8d23a8e1ce7562e1ea938447d3c5499abce9e462",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 30,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ab/ab496ee82aaf45cb9d4baac65a76c385f24a3991c81213bc878c901c8fe835f6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c1727d61-5a3b-745f-4c09-d79025397e7b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7be1dc49-5f88-cbd2-6fb2-5240b69df8f6",
  "kind": "lemma",
  "lexical_name": "moserPoint_injective",
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
  "slug": "moserpoint-injective--224011ecae2819c321d8c6fb",
  "source": {
    "blob": "8d23a8e1ce7562e1ea938447d3c5499abce9e462",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 44,
    "line": 30,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Ab496ee82aaf45cb9d4baac65a76c385f24a3991c81213bc878c901c8fe835f6MoserGeometry/Variantab496ee82aaf45cb9d4baac65a76c385f24a3991c81213bc878c901c8fe835f6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:224011ecae2819c321d8c6fba0a8c6c84e0591a597077fda819ce622dc04a5d4",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Ab496ee82aaf45cb9d4baac65a76c385f24a3991c81213bc878c901c8fe835f6MoserGeometry/Variantab496ee82aaf45cb9d4baac65a76c385f24a3991c81213bc878c901c8fe835f6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7be1dc49-5f88-cbd2-6fb2-5240b69df8f6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 30–44.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma moserPoint_injective : Function.Injective moserPoint := by
  intro i j h
  have hs : Complex.normSq (moserPoint i - moserPoint j) = 0 := by rw [h, sub_self]; simp
  have h3 := Real.sq_sqrt (show (0 : ℝ) ≤ 3 by norm_num)
  have h11 := Real.sq_sqrt (show (0 : ℝ) ≤ 11 by norm_num)
  obtain ⟨hlo, hhi⟩ := radicalProduct_bounds
  fin_cases i <;> fin_cases j <;> try rfl
  all_goals
    norm_num [moserPoint, moserA, moserB, moserT, moserU,
      Complex.normSq_apply, Complex.mul_re, Complex.mul_im,
      Complex.div_ofReal_re, Complex.div_ofReal_im, Complex.sub_re, Complex.sub_im,
      Complex.add_re, Complex.add_im] at hs <;>
      (try ring_nf at hs) <;> norm_num [h3, h11] at hs <;> nlinarith

end FormalResearch.HadwigerNelson
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Ab496ee82aaf45cb9d4baac65a76c385f24a3991c81213bc878c901c8fe835f6MoserGeometry/Variantab496ee82aaf45cb9d4baac65a76c385f24a3991c81213bc878c901c8fe835f6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Ab496ee82aaf45cb9d4baac65a76c385f24a3991c81213bc878c901c8fe835f6MoserGeometry/Variantab496ee82aaf45cb9d4baac65a76c385f24a3991c81213bc878c901c8fe835f6.lean#L30).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8d23a8e1ce7562e1ea938447d3c5499abce9e462` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
