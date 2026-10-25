# gcd_fib_add_self

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4c6571e6-f809-cfa0-b71d-6ee781e8d2ba",
  "kind": "theorem",
  "lexical_name": "gcd_fib_add_self",
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
  "slug": "gcd-fib-add-self--aa11033341efc86783ff38d5",
  "source": {
    "blob": "1574b4daccb202f4f4636b3d382d9d3da2199b91",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 231,
    "line": 218,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Basic/Variantbad651914992b2ff23703739f9244c77080d5aa05b4b875acbcca0c2676ef046.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:aa11033341efc86783ff38d522fe03c6cc5c6d00f5723d24695e0afeec8e4a36",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Basic/Variantbad651914992b2ff23703739f9244c77080d5aa05b4b875acbcca0c2676ef046.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4c6571e6-f809-cfa0-b71d-6ee781e8d2ba`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 218–231.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem gcd_fib_add_self (m n : ℕ) : gcd (fib m) (fib (n + m)) = gcd (fib m) (fib n) := by
  rcases Nat.eq_zero_or_pos n with rfl | h
  · simp
  replace h := Nat.succ_pred_eq_of_pos h; rw [← h, succ_eq_add_one]
  calc
    gcd (fib m) (fib (n.pred + 1 + m)) =
        gcd (fib m) (fib n.pred * fib m + fib (n.pred + 1) * fib (m + 1)) := by
        rw [← fib_add n.pred _]
        ring_nf
    _ = gcd (fib m) (fib (n.pred + 1) * fib (m + 1)) := by
        rw [add_comm, gcd_add_mul_right_right (fib m) _ (fib n.pred)]
    _ = gcd (fib m) (fib (n.pred + 1)) :=
      Coprime.gcd_mul_right_cancel_right (fib (n.pred + 1)) (Coprime.symm (fib_coprime_fib_succ m))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/Basic/Variantbad651914992b2ff23703739f9244c77080d5aa05b4b875acbcca0c2676ef046.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Basic/Variantbad651914992b2ff23703739f9244c77080d5aa05b4b875acbcca0c2676ef046.lean#L218).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1574b4daccb202f4f4636b3d382d9d3da2199b91` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
