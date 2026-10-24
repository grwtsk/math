# gcd_fib_add_self

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "50020ebe49c8b2974a683c454465694414732da5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 248,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f3/f34c7a2efded95c9a0f33b35884c095dd636fae3e0d7cef9448dbaa91ec68840.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8621f6f4-2a19-99f1-1d07-07b10ac1cb87",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:abdc292f-6988-a65f-3df1-5998681ae445",
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
  "slug": "gcd-fib-add-self--70dfbfc41b79936fd2c39f9f",
  "source": {
    "blob": "50020ebe49c8b2974a683c454465694414732da5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 263,
    "line": 248,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Fib/Variantf34c7a2efded95c9a0f33b35884c095dd636fae3e0d7cef9448dbaa91ec68840.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:70dfbfc41b79936fd2c39f9f68fcc8c031df96442f497078e5165c4c1f0a81ad",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/Fib/Variantf34c7a2efded95c9a0f33b35884c095dd636fae3e0d7cef9448dbaa91ec68840.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:abdc292f-6988-a65f-3df1-5998681ae445`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 248–263.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem gcd_fib_add_self (m n : ℕ) : gcd (fib m) (fib (n + m)) = gcd (fib m) (fib n) := by
  cases' Nat.eq_zero_or_pos n with h h
  · rw [h]
    simp
  replace h := Nat.succ_pred_eq_of_pos h; rw [← h, succ_eq_add_one]
  calc
    gcd (fib m) (fib (n.pred + 1 + m)) =
        gcd (fib m) (fib n.pred * fib m + fib (n.pred + 1) * fib (m + 1)) := by
        rw [← fib_add n.pred _]
        ring_nf
    _ = gcd (fib m) (fib (n.pred + 1) * fib (m + 1)) := by
        rw [add_comm, gcd_add_mul_right_right (fib m) _ (fib n.pred)]
    _ = gcd (fib m) (fib (n.pred + 1)) :=
      coprime.gcd_mul_right_cancel_right (fib (n.pred + 1)) (coprime.symm (fib_coprime_fib_succ m))
#align nat.gcd_fib_add_self Nat.gcd_fib_add_self

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/Fib/Variantf34c7a2efded95c9a0f33b35884c095dd636fae3e0d7cef9448dbaa91ec68840.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/Fib/Variantf34c7a2efded95c9a0f33b35884c095dd636fae3e0d7cef9448dbaa91ec68840.lean#L248).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `50020ebe49c8b2974a683c454465694414732da5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
