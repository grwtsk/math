# logC_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e7cd69ff8fd13e2a9a5e98320f6b8953bfefd064",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 328,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9e/9eab5ad0ff8a391d42184aba2572264202bffdcf6d3e2df5005942764ecdae72.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5f1bbca1-596d-2528-cfdd-01d7f1e070c5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:03a64d4b-00dc-cfaf-ce4f-11eb81a2a4b6",
  "kind": "lemma",
  "lexical_name": "logC_aux",
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
  "slug": "logc-aux--62219a9500ef90fddc284ef5",
  "source": {
    "blob": "e7cd69ff8fd13e2a9a5e98320f6b8953bfefd064",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 359,
    "line": 328,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Log/Variant9eab5ad0ff8a391d42184aba2572264202bffdcf6d3e2df5005942764ecdae72.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:62219a9500ef90fddc284ef5b9c10a8262ef739ca18178643a11d8da4c965080",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Log/Variant9eab5ad0ff8a391d42184aba2572264202bffdcf6d3e2df5005942764ecdae72.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:03a64d4b-00dc-cfaf-ce4f-11eb81a2a4b6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 328–359.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
private lemma logC_aux {m b : ℕ} (hb : 1 < b) (hbm : b ≤ m) : m / (b * b) < m / b := by
  have hb' : 0 < b := zero_lt_of_lt hb
  rw [div_lt_iff_lt_mul (Nat.mul_pos hb' hb'), ← Nat.mul_assoc, ← div_lt_iff_lt_mul hb']
  exact (Nat.lt_mul_iff_one_lt_right (Nat.div_pos hbm hb')).2 hb

-- This option is necessary because of lean4#2920
set_option linter.unusedVariables false in
/--
An alternate definition for `Nat.log` which computes more efficiently. For mathematical purposes,
use `Nat.log` instead, and see `Nat.log_eq_logC`.

Note a tail-recursive version of `Nat.log` is also possible:
```
def logTR (b n : ℕ) : ℕ :=
  let rec go : ℕ → ℕ → ℕ | n, acc => if h : b ≤ n ∧ 1 < b then go (n / b) (acc + 1) else acc
  decreasing_by
    have : n / b < n := Nat.div_lt_self (by omega) h.2
    decreasing_trivial
  go n 0
```
but performs worse for large numbers than `Nat.logC`:
```
#eval Nat.logTR 2 (2 ^ 1000000)
#eval Nat.logC 2 (2 ^ 1000000)
```

The definition `Nat.logC` is not tail-recursive, however, but the stack limit will only be reached
if the output size is around 2^10000, meaning the input will be around 2^(2^10000), which will
take far too long to compute in the first place.

Adapted from https://downloads.haskell.org/~ghc/9.0.1/docs/html/libraries/ghc-bignum-1.0/GHC-Num-BigNat.html#v:bigNatLogBase-35-
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Log/Variant9eab5ad0ff8a391d42184aba2572264202bffdcf6d3e2df5005942764ecdae72.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Log/Variant9eab5ad0ff8a391d42184aba2572264202bffdcf6d3e2df5005942764ecdae72.lean#L328).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e7cd69ff8fd13e2a9a5e98320f6b8953bfefd064` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
