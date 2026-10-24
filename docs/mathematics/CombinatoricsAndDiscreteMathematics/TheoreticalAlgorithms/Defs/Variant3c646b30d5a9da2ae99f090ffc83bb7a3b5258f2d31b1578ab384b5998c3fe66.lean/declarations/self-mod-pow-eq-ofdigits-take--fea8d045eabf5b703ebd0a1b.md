# self_mod_pow_eq_ofDigits_take

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "36e7ca1f01147bc6f08a66af9d17670bda23ad5a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 486,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3c/3c646b30d5a9da2ae99f090ffc83bb7a3b5258f2d31b1578ab384b5998c3fe66.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:65fca051-f1a6-25ee-1cf8-5f89c0950278",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:204814ff-f288-62d5-a093-49a00479c950",
  "kind": "lemma",
  "lexical_name": "self_mod_pow_eq_ofDigits_take",
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
  "slug": "self-mod-pow-eq-ofdigits-take--fea8d045eabf5b703ebd0a1b",
  "source": {
    "blob": "36e7ca1f01147bc6f08a66af9d17670bda23ad5a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 494,
    "line": 486,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant3c646b30d5a9da2ae99f090ffc83bb7a3b5258f2d31b1578ab384b5998c3fe66.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fea8d045eabf5b703ebd0a1b56869ff8f3ec3429d6dc6918b505ba2df3e8cb4b",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant3c646b30d5a9da2ae99f090ffc83bb7a3b5258f2d31b1578ab384b5998c3fe66.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:204814ff-f288-62d5-a093-49a00479c950`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 486–494.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma self_mod_pow_eq_ofDigits_take {p : ℕ} (i n : ℕ) (h : 2 ≤ p) :
    n % p ^ i = ofDigits p ((p.digits n).take i) := by
  convert!
    ofDigits_mod_pow_eq_ofDigits_take i (zero_lt_of_lt h) (p.digits n)
      (fun l hl ↦ digits_lt_base h hl)
  exact (ofDigits_digits p n).symm

/-! ### `Nat.toDigits` length -/

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant3c646b30d5a9da2ae99f090ffc83bb7a3b5258f2d31b1578ab384b5998c3fe66.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant3c646b30d5a9da2ae99f090ffc83bb7a3b5258f2d31b1578ab384b5998c3fe66.lean#L486).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `36e7ca1f01147bc6f08a66af9d17670bda23ad5a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
