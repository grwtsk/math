# condIndepFun_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "90d3d56ef844deb253f7d8547b8b27e1828ca4de",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 337,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/00/007c633d1037b0606d111ab156391cb7781503eee815338ecbf7e14e33348647.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5d7abee1-0ebb-5dcf-3ca1-d5d69badcc48",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a5e89b38-bab6-867a-e123-c350f857492d",
  "kind": "lemma",
  "lexical_name": "condIndepFun_iff",
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
  "slug": "condindepfun-iff--60603fdd6b92c754282ccfb9",
  "source": {
    "blob": "90d3d56ef844deb253f7d8547b8b27e1828ca4de",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 352,
    "line": 337,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Conditional/Variant007c633d1037b0606d111ab156391cb7781503eee815338ecbf7e14e33348647.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:60603fdd6b92c754282ccfb914ae89d73a40d77e6b7ef41dd69b65c8ac799af0",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Conditional/Variant007c633d1037b0606d111ab156391cb7781503eee815338ecbf7e14e33348647.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a5e89b38-bab6-867a-e123-c350f857492d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 337–352.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma condIndepFun_iff {β γ : Type*} [mβ : MeasurableSpace β] [mγ : MeasurableSpace γ]
    (f : Ω → β) (g : Ω → γ) (hf : Measurable f) (hg : Measurable g)
    (μ : Measure Ω) [IsFiniteMeasure μ] :
    CondIndepFun m' hm' f g μ ↔ ∀ t1 t2, MeasurableSet[MeasurableSpace.comap f mβ] t1
      → MeasurableSet[MeasurableSpace.comap g mγ] t2
        → (μ⟦t1 ∩ t2 | m'⟧) =ᵐ[μ] (μ⟦t1 | m'⟧) * (μ⟦t2 | m'⟧) := by
  rw [condIndepFun_iff_condIndep, condIndep_iff _ _ _ _ hf.comap_le hg.comap_le]

end DefinitionLemmas

section CondIndepSets

variable {m' : MeasurableSpace Ω} {mΩ : MeasurableSpace Ω} [StandardBorelSpace Ω]
  {hm' : m' ≤ mΩ} {μ : Measure Ω} [IsFiniteMeasure μ]

@[symm]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Conditional/Variant007c633d1037b0606d111ab156391cb7781503eee815338ecbf7e14e33348647.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Conditional/Variant007c633d1037b0606d111ab156391cb7781503eee815338ecbf7e14e33348647.lean#L337).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `90d3d56ef844deb253f7d8547b8b27e1828ca4de` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
