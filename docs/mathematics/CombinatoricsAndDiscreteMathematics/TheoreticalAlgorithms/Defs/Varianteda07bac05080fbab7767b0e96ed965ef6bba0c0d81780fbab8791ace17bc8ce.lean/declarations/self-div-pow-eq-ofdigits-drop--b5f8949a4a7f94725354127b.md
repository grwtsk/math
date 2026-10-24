# self_div_pow_eq_ofDigits_drop

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1b23d25af60d7728540bbc6b1a569d4961c04634",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 456,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ed/eda07bac05080fbab7767b0e96ed965ef6bba0c0d81780fbab8791ace17bc8ce.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:38199f36-5143-75d8-8009-496589b4688a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1edf4ac4-e1a9-8d41-d54d-483e0be89a0f",
  "kind": "lemma",
  "lexical_name": "self_div_pow_eq_ofDigits_drop",
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
  "slug": "self-div-pow-eq-ofdigits-drop--b5f8949a4a7f94725354127b",
  "source": {
    "blob": "1b23d25af60d7728540bbc6b1a569d4961c04634",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 464,
    "line": 456,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Varianteda07bac05080fbab7767b0e96ed965ef6bba0c0d81780fbab8791ace17bc8ce.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b5f8949a4a7f94725354127b7e93e055842bce407f7c2275464c85530cb5d105",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Varianteda07bac05080fbab7767b0e96ed965ef6bba0c0d81780fbab8791ace17bc8ce.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1edf4ac4-e1a9-8d41-d54d-483e0be89a0f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 456–464.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma self_div_pow_eq_ofDigits_drop {p : ℕ} (i n : ℕ) (h : 2 ≤ p) :
    n / p ^ i = ofDigits p ((p.digits n).drop i) := by
  convert!
    ofDigits_div_pow_eq_ofDigits_drop i (zero_lt_of_lt h) (p.digits n)
      (fun l hl ↦ digits_lt_base h hl)
  exact (ofDigits_digits p n).symm

/-- Interpreting as a base `p` number and modulo `p^i` is the same as taking the first `i` digits.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Varianteda07bac05080fbab7767b0e96ed965ef6bba0c0d81780fbab8791ace17bc8ce.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Varianteda07bac05080fbab7767b0e96ed965ef6bba0c0d81780fbab8791ace17bc8ce.lean#L456).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1b23d25af60d7728540bbc6b1a569d4961c04634` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
