# classify_model_mismatch_iff_listed

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d365b3a1-838a-af59-3c33-ea8f720d4ffd",
  "kind": "theorem",
  "lexical_name": "classify_model_mismatch_iff_listed",
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
  "slug": "classify-model-mismatch-iff-listed--ed07078aaffd74b3ea6f7449",
  "source": {
    "blob": "6a871da55bab141b1f6ab8617872291cffd60b04",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 407,
    "line": 382,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Observation/FiniteClassification.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ed07078aaffd74b3ea6f7449b3975b75adbee96cc8ad1c0ab4726e65b5b538b8",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Observation/FiniteClassification.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d365b3a1-838a-af59-3c33-ea8f720d4ffd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 382–407.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem classify_model_mismatch_iff_listed :
    classify admissible observe claim seen inventory = .model_mismatch ↔
      ¬ NonemptyFiber (ListedAdmissible admissible inventory) observe seen := by
  constructor
  · intro result nonempty
    have fields :=
      (Flags.classify_model_mismatch_iff (scan admissible observe claim seen inventory)).mp result
    have allFalse := (scan_positive_false_iff admissible observe claim seen inventory).mp fields.1
    have allTrue := (scan_negative_false_iff admissible observe claim seen inventory).mp fields.2
    obtain ⟨trace, compatible⟩ := nonempty
    have ambient : Compatible admissible observe seen trace :=
      ⟨compatible.1.2, compatible.2⟩
    exact allFalse trace compatible.1.1 ambient (allTrue trace compatible.1.1 ambient)
  · intro absent
    have forbidden : ∀ trace, trace ∈ inventory →
        Compatible admissible observe seen trace → False := by
      intro trace member compatible
      exact absent ⟨trace, ⟨member, compatible.1⟩, compatible.2⟩
    apply (Flags.classify_model_mismatch_iff (scan admissible observe claim seen inventory)).mpr
    constructor
    · exact (scan_positive_false_iff admissible observe claim seen inventory).mpr
        (fun trace member compatible => False.elim (forbidden trace member compatible))
    · exact (scan_negative_false_iff admissible observe claim seen inventory).mpr
        (fun trace member compatible => False.elim (forbidden trace member compatible))

/-- Two listed compatible witnesses suffice, without a coverage hypothesis. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Observation/FiniteClassification.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Observation/FiniteClassification.lean#L382).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6a871da55bab141b1f6ab8617872291cffd60b04` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
