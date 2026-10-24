# bitwise_eq_binaryRec

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5e7706ab-c26d-3c9b-043c-6b05c4fc1599",
  "kind": "lemma",
  "lexical_name": "bitwise_eq_binaryRec",
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
  "slug": "bitwise-eq-binaryrec--01e96f016c9b0f222f451885",
  "source": {
    "blob": "b877792c66387f5c0e52b31d1cdeedb3c4357626",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 163,
    "line": 147,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variant1b69b2e6fd961b82176e07b32cce89dfce1c877c07977c74cd7f06ae8d9a7c3b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:01e96f016c9b0f222f451885a61df590265712e2b61c1dd1b78e410faa8ea6f3",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variant1b69b2e6fd961b82176e07b32cce89dfce1c877c07977c74cd7f06ae8d9a7c3b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5e7706ab-c26d-3c9b-043c-6b05c4fc1599`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 147–163.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma bitwise_eq_binaryRec (f : Bool → Bool → Bool) :
    bitwise f =
    binaryRec (fun n => cond (f false true) n 0) fun a m Ia =>
      binaryRec (cond (f true false) (bit a m) 0) fun b n _ => bit (f a b) (Ia n) := by
  funext x y
  induction x using binaryRec' generalizing y with
  | zero => simp only [bitwise_zero_left, binaryRec_zero, Bool.cond_eq_ite]
  | bit xb x hxb ih =>
    rw [← bit_ne_zero_iff] at hxb
    simp_rw [binaryRec_of_ne_zero _ _ hxb, bodd_bit, div2_bit, eq_rec_constant]
    induction y using binaryRec' with
    | zero => simp only [bitwise_zero_right, binaryRec_zero, Bool.cond_eq_ite]
    | bit yb y hyb =>
      rw [← bit_ne_zero_iff] at hyb
      simp_rw [binaryRec_of_ne_zero _ _ hyb, bitwise_of_ne_zero hxb hyb, bodd_bit, div2_bit,
        bit_div_two, eq_rec_constant, ih]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variant1b69b2e6fd961b82176e07b32cce89dfce1c877c07977c74cd7f06ae8d9a7c3b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variant1b69b2e6fd961b82176e07b32cce89dfce1c877c07977c74cd7f06ae8d9a7c3b.lean#L147).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b877792c66387f5c0e52b31d1cdeedb3c4357626` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
