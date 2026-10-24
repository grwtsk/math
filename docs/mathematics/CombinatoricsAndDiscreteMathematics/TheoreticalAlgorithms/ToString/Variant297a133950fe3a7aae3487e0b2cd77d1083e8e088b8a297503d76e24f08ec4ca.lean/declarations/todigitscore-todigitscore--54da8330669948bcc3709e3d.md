# toDigitsCore_toDigitsCore

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c8264d0a2a4924cec9d595d44831ad4db006999b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 159,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/29/297a133950fe3a7aae3487e0b2cd77d1083e8e088b8a297503d76e24f08ec4ca.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e22be816-0044-6483-2c7f-13dea38814c1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:749ba37b-55d9-52e8-effc-cc51617b1674",
  "kind": "theorem",
  "lexical_name": "toDigitsCore_toDigitsCore",
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
  "slug": "todigitscore-todigitscore--54da8330669948bcc3709e3d",
  "source": {
    "blob": "c8264d0a2a4924cec9d595d44831ad4db006999b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 176,
    "line": 159,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToString/Variant297a133950fe3a7aae3487e0b2cd77d1083e8e088b8a297503d76e24f08ec4ca.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:54da8330669948bcc3709e3d5d4eb0874dd585a5372d9ec6167b7c4c92dd658a",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToString/Variant297a133950fe3a7aae3487e0b2cd77d1083e8e088b8a297503d76e24f08ec4ca.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:749ba37b-55d9-52e8-effc-cc51617b1674`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 159–176.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem toDigitsCore_toDigitsCore
    (hb : 1 < b) (hn : 0 < n) (hd : d < b) (hf : b * n + d < fuel) (hnf : n < nf) (hdf : d < df) :
    toDigitsCore b nf n (toDigitsCore b df d cs) = toDigitsCore b fuel (b * n + d) cs := by
  cases fuel with
  | zero => contradiction
  | succ fuel =>
    rw [toDigitsCore]
    split
    case isTrue h =>
      have : b ≤ b * n + d := Nat.le_trans (Nat.le_mul_of_pos_right _ hn) (le_add_right _ _)
      cases Nat.div_eq_zero_iff.mp h <;> omega
    case isFalse =>
      have h : (b * n + d) / b = n := by
        rw [mul_add_div (by omega), Nat.div_eq_zero_iff.mpr (.inr hd), Nat.add_zero]
      have := (Nat.lt_mul_iff_one_lt_left hn).mpr hb
      simp only [toDigitsCore_of_lt_base hd hdf, mul_add_mod_self_left, mod_eq_of_lt hd, h]
      apply toDigitsCore_eq_of_lt_fuel hb hnf (by omega)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToString/Variant297a133950fe3a7aae3487e0b2cd77d1083e8e088b8a297503d76e24f08ec4ca.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToString/Variant297a133950fe3a7aae3487e0b2cd77d1083e8e088b8a297503d76e24f08ec4ca.lean#L159).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c8264d0a2a4924cec9d595d44831ad4db006999b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
