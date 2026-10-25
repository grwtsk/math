# lt_tmod_of_pos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "16ebb630e4fed7809bcfdbf55fb7e74173327aa2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1409,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b6/b68602f75ed3eb6ce8527695e7af87bd2cf0628c40babf72c80295293a545a62.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:26d390f9-b30f-0534-0f3e-a2519d13c81f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4d10e4dd-1292-33aa-9b33-bda17069af8f",
  "kind": "theorem",
  "lexical_name": "lt_tmod_of_pos",
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
  "slug": "lt-tmod-of-pos--d2b1d89dc80ede2480c0e4df",
  "source": {
    "blob": "16ebb630e4fed7809bcfdbf55fb7e74173327aa2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1426,
    "line": 1409,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variantb68602f75ed3eb6ce8527695e7af87bd2cf0628c40babf72c80295293a545a62.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d2b1d89dc80ede2480c0e4df8720bb90227f9457843ff0bbf28d401e05f901da",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variantb68602f75ed3eb6ce8527695e7af87bd2cf0628c40babf72c80295293a545a62.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4d10e4dd-1292-33aa-9b33-bda17069af8f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1409–1426.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lt_tmod_of_pos (a : Int) {b : Int} (H : 0 < b) : -b < tmod a b :=
  match a, b, eq_succ_of_zero_lt H with
  | ofNat _, _, ⟨n, rfl⟩ => by rw [ofNat_eq_natCast, ← Int.natCast_succ, ← ofNat_tmod]; omega
  | -[a+1], _, ⟨n, rfl⟩ => by
    rw [negSucc_eq, neg_tmod, ← Int.natCast_add_one, ← Int.natCast_add_one, ← ofNat_tmod]
    have : (a + 1) % (n + 1) < n + 1 := Nat.mod_lt _ (Nat.zero_lt_succ n)
    omega

-- The following statements for `tmod` are false:
-- `add_mul_tmod_self_right {a b c : Int} : (a + b * c).tmod c = a.tmod c`
-- `add_mul_tmod_self_left (a b c : Int) : (a + b * c).tmod b = a.tmod b`
-- `tmod_add_tmod (m n k : Int) : (m.tmod n + k).tmod n = (m + k).tmod n`
-- `add_tmod_tmod (m n k : Int) : (m + n.tmod k).tmod k = (m + n).tmod k`
-- `add_tmod (a b n : Int) : (a + b).tmod n = (a.tmod n + b.tmod n).tmod n`
-- `add_tmod_eq_add_tmod_right {m n k : Int} (i : Int) : (m.tmod n = k.tmod n) → (m + i).tmod n = (k + i).tmod n`
-- `tmod_add_cancel_right {m n k : Int} (i) : (m + i).tmod n = (k + i).tmod n ↔ m.tmod n = k.tmod n`
-- `sub_tmod (a b n : Int) : (a - b).tmod n = (a.tmod n - b.tmod n).tmod n`

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variantb68602f75ed3eb6ce8527695e7af87bd2cf0628c40babf72c80295293a545a62.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variantb68602f75ed3eb6ce8527695e7af87bd2cf0628c40babf72c80295293a545a62.lean#L1409).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `16ebb630e4fed7809bcfdbf55fb7e74173327aa2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
