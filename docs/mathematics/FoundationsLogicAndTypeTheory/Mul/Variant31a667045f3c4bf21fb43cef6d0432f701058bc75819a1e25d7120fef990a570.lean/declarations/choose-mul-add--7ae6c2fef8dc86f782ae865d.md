# choose_mul_add

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b898db0e28275015a82e3e22c1bcac88319d3e64",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 19,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/31/31a667045f3c4bf21fb43cef6d0432f701058bc75819a1e25d7120fef990a570.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:44f2f18c-fbfe-6a66-6680-4cb77a5691ea",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:411cb2cc-0b7f-352c-d679-02dea6867062",
  "kind": "theorem",
  "lexical_name": "choose_mul_add",
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
  "slug": "choose-mul-add--7ae6c2fef8dc86f782ae865d",
  "source": {
    "blob": "b898db0e28275015a82e3e22c1bcac88319d3e64",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 37,
    "line": 19,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Mul/Variant31a667045f3c4bf21fb43cef6d0432f701058bc75819a1e25d7120fef990a570.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7ae6c2fef8dc86f782ae865d0cd91a48ea989b012c5fb02ce783224ac6f085eb",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Mul/Variant31a667045f3c4bf21fb43cef6d0432f701058bc75819a1e25d7120fef990a570.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:411cb2cc-0b7f-352c-d679-02dea6867062`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 19–37.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem choose_mul_add {m n : ℕ} (hn : n ≠ 0) :
    (m * n + n).choose n = (m + 1) * (m * n + n - 1).choose (n - 1) := by
  rw [← Nat.mul_left_inj (mul_ne_zero (factorial_ne_zero (m * n)) (factorial_ne_zero n))]
  set p := n - 1
  have hp : n = p + 1 := (succ_pred_eq_of_ne_zero hn).symm
  simp only [hp, add_succ_sub_one]
  calc
    (m * (p + 1) + (p + 1)).choose (p + 1) * ((m * (p+1))! * (p+1)!)
      = (m * (p + 1) + (p + 1)).choose (p + 1) * (m * (p+1))! * (p+1)! := by ring
    _ = (m * (p+ 1) + (p + 1))! := by rw [add_choose_mul_factorial_mul_factorial]
    _ = ((m * (p+ 1) + p) + 1)! := by ring_nf
    _ = ((m * (p + 1) + p) + 1) * (m * (p + 1) + p)! := by rw [factorial_succ]
    _ = (m * (p + 1) + p)! * ((p + 1) * (m + 1)) := by ring
    _ = ((m * (p + 1) + p).choose p * (m * (p+1))! * (p)!) * ((p + 1) * (m + 1)) := by
      rw [add_choose_mul_factorial_mul_factorial]
    _ = (m * (p + 1) + p).choose p * (m * (p+1))! * (((p + 1) * (p)!) * (m + 1)) := by ring
    _ = (m * (p + 1) + p).choose p * (m * (p+1))! * ((p + 1)! * (m + 1)) := by rw [factorial_succ]
    _ = (m + 1) * (m * (p + 1) + p).choose p * ((m * (p + 1))! * (p + 1)!) := by ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/Mul/Variant31a667045f3c4bf21fb43cef6d0432f701058bc75819a1e25d7120fef990a570.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Mul/Variant31a667045f3c4bf21fb43cef6d0432f701058bc75819a1e25d7120fef990a570.lean#L19).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b898db0e28275015a82e3e22c1bcac88319d3e64` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
