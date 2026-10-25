# choose_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b9a76270917cdc41ac89c955046861da523608a8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 146,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b2/b20f7bc5346c257945e65cd7c61aaeb048c03260ca95fbc7e9878bc1ec85d48b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:52aa0d86-ba48-6881-f507-6b60d4f07400",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d270132b-deab-0302-c1e4-898e4d82bbb4",
  "kind": "theorem",
  "lexical_name": "choose_mul",
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
  "slug": "choose-mul--05b62e494cffd4d24e240887",
  "source": {
    "blob": "b9a76270917cdc41ac89c955046861da523608a8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 164,
    "line": 146,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Basic/Variantb20f7bc5346c257945e65cd7c61aaeb048c03260ca95fbc7e9878bc1ec85d48b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:05b62e494cffd4d24e2408872391c7b6ff345b73178c47b104587303b954972f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Basic/Variantb20f7bc5346c257945e65cd7c61aaeb048c03260ca95fbc7e9878bc1ec85d48b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d270132b-deab-0302-c1e4-898e4d82bbb4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 146–164.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem choose_mul {n k s : ℕ} (hkn : k ≤ n) (hsk : s ≤ k) :
    n.choose k * k.choose s = n.choose s * (n - s).choose (k - s) :=
  have h : (n - k)! * (k - s)! * s ! ≠ 0 := by apply_rules [factorial_ne_zero, mul_ne_zero]
  mul_right_cancel₀ h <|
  calc
    n.choose k * k.choose s * ((n - k)! * (k - s)! * s !) =
        n.choose k * (k.choose s * s ! * (k - s)!) * (n - k)! :=
      by rw [mul_assoc, mul_assoc, mul_assoc, mul_assoc _ s !, mul_assoc, mul_comm (n - k)!,
        mul_comm s !]
    _ = n ! :=
      by rw [choose_mul_factorial_mul_factorial hsk, choose_mul_factorial_mul_factorial hkn]
    _ = n.choose s * s ! * ((n - s).choose (k - s) * (k - s)! * (n - s - (k - s))!) :=
      by rw [choose_mul_factorial_mul_factorial (tsub_le_tsub_right hkn _),
        choose_mul_factorial_mul_factorial (hsk.trans hkn)]
    _ = n.choose s * (n - s).choose (k - s) * ((n - k)! * (k - s)! * s !) :=
      by rw [tsub_tsub_tsub_cancel_right hsk, mul_assoc, mul_left_comm s !, mul_assoc,
        mul_comm (k - s)!, mul_comm s !, mul_right_comm, ← mul_assoc]
#align nat.choose_mul Nat.choose_mul

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/Basic/Variantb20f7bc5346c257945e65cd7c61aaeb048c03260ca95fbc7e9878bc1ec85d48b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Basic/Variantb20f7bc5346c257945e65cd7c61aaeb048c03260ca95fbc7e9878bc1ec85d48b.lean#L146).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b9a76270917cdc41ac89c955046861da523608a8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
