# separates_iff_carrier_factorization

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "38b01453ddf7ffab7f68e102b0bc5decf892fcee",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 92,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ac/ac38f79dbf30e1c3b62f19fb2fb012bf2b110443beb8983d7bf8f455eb4bed5f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:937c1c30-169d-0ac3-a924-31249b9b87a6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f55cbcd9-2dd5-a205-f675-213f5c2dc4df",
  "kind": "theorem",
  "lexical_name": "separates_iff_carrier_factorization",
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
  "slug": "separates-iff-carrier-factorization--06de95cfecbf779d516ba746",
  "source": {
    "blob": "38b01453ddf7ffab7f68e102b0bc5decf892fcee",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 116,
    "line": 92,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TargetSeparation/Variantac38f79dbf30e1c3b62f19fb2fb012bf2b110443beb8983d7bf8f455eb4bed5f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:06de95cfecbf779d516ba74664ae3f04a4eaf0989bf27c1bd0ffb76c4925b9a7",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TargetSeparation/Variantac38f79dbf30e1c3b62f19fb2fb012bf2b110443beb8983d7bf8f455eb4bed5f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f55cbcd9-2dd5-a205-f675-213f5c2dc4df`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 92–116.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem separates_iff_carrier_factorization [Nonempty Result]
    (obs : Test → Object → Value) (selected : Finset Test) (target : Object → Result) :
    SeparatesTarget obs selected target ↔
      ∃ decode : (↥selected → Value) → Result,
        ∀ x, decode (observationCarrier obs selected x) = target x := by
  classical
  constructor
  · intro separates
    have descends := (separates_iff_descends obs selected target).mp separates
    let decode (tuple : ↥selected → Value) : Result :=
      if preimage : ∃ x, observationCarrier obs selected x = tuple then
        target (Classical.choose preimage)
      else Classical.choice ‹Nonempty Result›
    refine ⟨decode, ?_⟩
    intro x
    have preimage : ∃ y, observationCarrier obs selected y =
        observationCarrier obs selected x := ⟨x, rfl⟩
    dsimp only [decode]
    rw [dif_pos preimage]
    exact descends (Classical.choose_spec preimage)
  · rintro ⟨decode, recovers⟩
    exact (separates_iff_descends obs selected target).mpr
      (descendsThrough_of_factorization decode recovers)

/-- Adding selected tests preserves separation of the same target. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/TargetSeparation/Variantac38f79dbf30e1c3b62f19fb2fb012bf2b110443beb8983d7bf8f455eb4bed5f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TargetSeparation/Variantac38f79dbf30e1c3b62f19fb2fb012bf2b110443beb8983d7bf8f455eb4bed5f.lean#L92).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `38b01453ddf7ffab7f68e102b0bc5decf892fcee` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
