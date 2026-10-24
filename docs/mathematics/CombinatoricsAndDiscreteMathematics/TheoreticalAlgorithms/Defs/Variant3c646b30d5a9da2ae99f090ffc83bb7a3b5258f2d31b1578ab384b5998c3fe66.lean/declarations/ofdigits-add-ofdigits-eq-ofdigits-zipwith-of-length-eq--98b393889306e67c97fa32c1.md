# ofDigits_add_ofDigits_eq_ofDigits_zipWith_of_length_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "36e7ca1f01147bc6f08a66af9d17670bda23ad5a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 333,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3c/3c646b30d5a9da2ae99f090ffc83bb7a3b5258f2d31b1578ab384b5998c3fe66.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b6231a1b-9a67-4a7a-a2df-fb5e086d7007",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:52672f9b-2cd5-dfd6-9196-a82dafe69b92",
  "kind": "theorem",
  "lexical_name": "ofDigits_add_ofDigits_eq_ofDigits_zipWith_of_length_eq",
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
  "slug": "ofdigits-add-ofdigits-eq-ofdigits-zipwith-of-length-eq--98b393889306e67c97fa32c1",
  "source": {
    "blob": "36e7ca1f01147bc6f08a66af9d17670bda23ad5a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 347,
    "line": 333,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant3c646b30d5a9da2ae99f090ffc83bb7a3b5258f2d31b1578ab384b5998c3fe66.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:98b393889306e67c97fa32c1bc4cfc43488a865a1a87825f53bcf1f1462ba49c",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant3c646b30d5a9da2ae99f090ffc83bb7a3b5258f2d31b1578ab384b5998c3fe66.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:52672f9b-2cd5-dfd6-9196-a82dafe69b92`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 333–347.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ofDigits_add_ofDigits_eq_ofDigits_zipWith_of_length_eq {b : ℕ} {l1 l2 : List ℕ}
    (h : l1.length = l2.length) :
    ofDigits b l1 + ofDigits b l2 = ofDigits b (l1.zipWith (· + ·) l2) := by
  induction l1 generalizing l2 with
  | nil => simp_all [eq_comm, List.length_eq_zero_iff, ofDigits]
  | cons hd₁ tl₁ ih₁ =>
    induction l2 generalizing tl₁ with
    | nil => simp_all
    | cons hd₂ tl₂ ih₂ =>
      simp_all only [List.length_cons, ofDigits_cons, add_left_inj,
        eq_comm, List.zipWith_cons_cons]
      rw [← ih₁ h.symm, mul_add]
      ac_rfl

/-- The digits in the base b+2 expansion of n are all less than b+2 -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant3c646b30d5a9da2ae99f090ffc83bb7a3b5258f2d31b1578ab384b5998c3fe66.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant3c646b30d5a9da2ae99f090ffc83bb7a3b5258f2d31b1578ab384b5998c3fe66.lean#L333).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `36e7ca1f01147bc6f08a66af9d17670bda23ad5a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
