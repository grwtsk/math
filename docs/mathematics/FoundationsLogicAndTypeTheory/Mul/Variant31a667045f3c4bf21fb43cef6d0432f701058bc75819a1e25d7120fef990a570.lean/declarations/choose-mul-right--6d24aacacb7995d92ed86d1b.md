# choose_mul_right

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
      "line": 38,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/31/31a667045f3c4bf21fb43cef6d0432f701058bc75819a1e25d7120fef990a570.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c448889f-544c-5c28-295e-45364a8e26e9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4126a7fa-64bc-20dc-0617-21aa944ea2d7",
  "kind": "theorem",
  "lexical_name": "choose_mul_right",
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
  "slug": "choose-mul-right--6d24aacacb7995d92ed86d1b",
  "source": {
    "blob": "b898db0e28275015a82e3e22c1bcac88319d3e64",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 47,
    "line": 38,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Mul/Variant31a667045f3c4bf21fb43cef6d0432f701058bc75819a1e25d7120fef990a570.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6d24aacacb7995d92ed86d1b89a80b29e6a2ba4808706d6584da5e10e53d8b70",
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

Occurrence: `result:4126a7fa-64bc-20dc-0617-21aa944ea2d7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 38–47.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem choose_mul_right {m n : ℕ} (hn : n ≠ 0) :
    (m * n).choose n = m * (m * n - 1).choose (n - 1) := by
  by_cases hm : m = 0
  · simp only [hm, zero_mul, choose_eq_zero_iff]
    exact Nat.pos_of_ne_zero hn
  · set p := m - 1; have hp : m = p + 1 := (succ_pred_eq_of_ne_zero hm).symm
    simp only [hp]
    rw [add_mul, one_mul, choose_mul_add hn]

end Nat
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/Mul/Variant31a667045f3c4bf21fb43cef6d0432f701058bc75819a1e25d7120fef990a570.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Mul/Variant31a667045f3c4bf21fb43cef6d0432f701058bc75819a1e25d7120fef990a570.lean#L38).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b898db0e28275015a82e3e22c1bcac88319d3e64` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
