# lt_divAtPrec_add_inc_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "84ec9c3a8894b1bbb0da0f0777e3dcc011f74659",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 110,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a1/a1bdf5994f50b000d3893b555187040c2b5e44d4a140d498ce04a1bd0ce55937.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a24fe01e-da35-a8df-3567-80ee778eaab5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f7bfae78-1912-7f48-bf20-01a7c9e95e86",
  "kind": "theorem",
  "lexical_name": "lt_divAtPrec_add_inc_mul",
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
  "slug": "lt-divatprec-add-inc-mul--7345058cb80233763c8c8135",
  "source": {
    "blob": "84ec9c3a8894b1bbb0da0f0777e3dcc011f74659",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 129,
    "line": 110,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inv/Varianta1bdf5994f50b000d3893b555187040c2b5e44d4a140d498ce04a1bd0ce55937.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7345058cb80233763c8c813569fca5e19ed9c88a698bca2dd7ce47df47902412",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inv/Varianta1bdf5994f50b000d3893b555187040c2b5e44d4a140d498ce04a1bd0ce55937.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f7bfae78-1912-7f48-bf20-01a7c9e95e86`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 110–129.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lt_divAtPrec_add_inc_mul {a b : Dyadic} (hb : 0 < b) (prec : Int) :
    a < (divAtPrec a b prec + ofIntWithPrec 1 prec) * b := by
  have hbr : (0 : Rat) < b.toRat := by rwa [← toRat_lt_toRat_iff, toRat_zero] at hb
  rw [← toRat_lt_toRat_iff, toRat_mul]
  unfold divAtPrec
  cases b with
  | zero => exfalso; contradiction
  | ofOdd n k hn =>
    simp only
    calc a.toRat
        = a.toRat / (ofOdd n k hn).toRat * (ofOdd n k hn).toRat :=
          (Rat.div_mul_cancel (Rat.ne_of_gt hbr)).symm
      _ < ((a.toRat / (ofOdd n k hn).toRat).toDyadic prec + ofIntWithPrec 1 prec).toRat
            * (ofOdd n k hn).toRat :=
          Rat.mul_lt_mul_of_pos_right Rat.lt_toRat_toDyadic_add hbr

/--
For positive `b`, `divAtPrec a b prec` is the unique dyadic with precision at most `prec`
satisfying both `_ * b ≤ a` and `a < (_ + ofIntWithPrec 1 prec) * b`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inv/Varianta1bdf5994f50b000d3893b555187040c2b5e44d4a140d498ce04a1bd0ce55937.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inv/Varianta1bdf5994f50b000d3893b555187040c2b5e44d4a140d498ce04a1bd0ce55937.lean#L110).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `84ec9c3a8894b1bbb0da0f0777e3dcc011f74659` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
