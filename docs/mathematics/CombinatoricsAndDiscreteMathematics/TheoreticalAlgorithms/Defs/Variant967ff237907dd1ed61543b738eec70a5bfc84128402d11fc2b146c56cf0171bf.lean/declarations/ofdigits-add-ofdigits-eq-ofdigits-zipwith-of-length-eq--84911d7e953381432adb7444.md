# ofDigits_add_ofDigits_eq_ofDigits_zipWith_of_length_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5fe33b34-0ced-b355-1924-a684f6e64af0",
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
  "slug": "ofdigits-add-ofdigits-eq-ofdigits-zipwith-of-length-eq--84911d7e953381432adb7444",
  "source": {
    "blob": "ce326d6ce1cc1756f0dc5b72795e922c48bbbfa9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 355,
    "line": 341,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant967ff237907dd1ed61543b738eec70a5bfc84128402d11fc2b146c56cf0171bf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:84911d7e953381432adb74449b19a29be2927cd9f2dec079aac8ba3d6aecb818",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant967ff237907dd1ed61543b738eec70a5bfc84128402d11fc2b146c56cf0171bf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5fe33b34-0ced-b355-1924-a684f6e64af0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 341–355.

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

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant967ff237907dd1ed61543b738eec70a5bfc84128402d11fc2b146c56cf0171bf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant967ff237907dd1ed61543b738eec70a5bfc84128402d11fc2b146c56cf0171bf.lean#L341).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ce326d6ce1cc1756f0dc5b72795e922c48bbbfa9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
