# trivial_H1_does_not_preserve_bijectivity

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "15e69c19cc6fc5ac33d59fcbfa154ba4a659158b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 497,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f8/f80166be745fca59df8ab98ac278c30804e4793eac98a3af1314e6cacf252d70.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6c4935b9-031b-b84b-0ff0-ee113605c839",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c6821c9a-9846-6aee-60ce-65c044d23e5d",
  "kind": "theorem",
  "lexical_name": "trivial_H1_does_not_preserve_bijectivity",
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
  "slug": "trivial-h1-does-not-preserve-bijectivity--8f73c9b7da8ea4a1edcb242b",
  "source": {
    "blob": "15e69c19cc6fc5ac33d59fcbfa154ba4a659158b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 514,
    "line": 497,
    "path": "GRWTSK/Algebra/PermutationNetwork/Variantf80166be745fca59df8ab98ac278c30804e4793eac98a3af1314e6cacf252d70.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8f73c9b7da8ea4a1edcb242b7f10f4558c22dd814cb5376ae11f36cd1125517b",
  "verification": {
    "reference": "docs/verification/Algebra/PermutationNetwork/Variantf80166be745fca59df8ab98ac278c30804e4793eac98a3af1314e6cacf252d70.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c6821c9a-9846-6aee-60ce-65c044d23e5d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 497–514.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem trivial_H1_does_not_preserve_bijectivity {n : Nat} (hn : 0 < n) :
    (endMapComplex n).H1Trivial ∧
    (endMapComplex n).Closed₁ (id : EndMap n) ∧
    (endMapComplex n).Exact₁ (id : EndMap n) ∧
    Function.Bijective (id : EndMap n) ∧
    ¬ Function.Injective
        (addCorrection
          (id : EndMap n)
          (id : EndMap n)) := by
  exact ⟨identityZeroComplex_h1Trivial _ _,
    identityCorrection_closed n,
    identityCorrection_exact n,
    Function.bijective_id,
    identity_add_identity_not_injective hn⟩

/-! ## Square-zero endomorphisms -/

/-- A zero-preserving square-zero map on a nontrivial type cannot be injective. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/PermutationNetwork/Variantf80166be745fca59df8ab98ac278c30804e4793eac98a3af1314e6cacf252d70.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/PermutationNetwork/Variantf80166be745fca59df8ab98ac278c30804e4793eac98a3af1314e6cacf252d70.lean#L497).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `15e69c19cc6fc5ac33d59fcbfa154ba4a659158b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
