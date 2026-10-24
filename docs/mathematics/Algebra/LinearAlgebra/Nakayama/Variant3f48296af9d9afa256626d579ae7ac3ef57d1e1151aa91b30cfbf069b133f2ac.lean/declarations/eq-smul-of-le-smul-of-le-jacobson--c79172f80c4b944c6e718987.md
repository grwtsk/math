# eq_smul_of_le_smul_of_le_jacobson

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f30664d0fc44475c0a0199caa78bd121d2608ca9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 52,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3f/3f48296af9d9afa256626d579ae7ac3ef57d1e1151aa91b30cfbf069b133f2ac.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:72ed53b0-c6df-936b-4d14-c314ffb7c4cb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b3b688e4-d4d4-e75d-c3e1-13632b8ab635",
  "kind": "theorem",
  "lexical_name": "eq_smul_of_le_smul_of_le_jacobson",
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
  "slug": "eq-smul-of-le-smul-of-le-jacobson--c79172f80c4b944c6e718987",
  "source": {
    "blob": "f30664d0fc44475c0a0199caa78bd121d2608ca9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 67,
    "line": 52,
    "path": "GRWTSK/Algebra/LinearAlgebra/Nakayama/Variant3f48296af9d9afa256626d579ae7ac3ef57d1e1151aa91b30cfbf069b133f2ac.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c79172f80c4b944c6e7189873776496a014247dd57ff539d42146cc91837aa21",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Nakayama/Variant3f48296af9d9afa256626d579ae7ac3ef57d1e1151aa91b30cfbf069b133f2ac.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b3b688e4-d4d4-e75d-c3e1-13632b8ab635`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 52–67.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eq_smul_of_le_smul_of_le_jacobson {I J : Ideal R} {N : Submodule R M} (hN : N.FG)
    (hIN : N ≤ I • N) (hIjac : I ≤ jacobson J) : N = J • N := by
  refine' le_antisymm _ (Submodule.smul_le.2 fun _ _ _ => Submodule.smul_mem _ _)
  intro n hn
  cases' Submodule.exists_sub_one_mem_and_smul_eq_zero_of_fg_of_le_smul I N hN hIN with r hr
  cases' exists_mul_sub_mem_of_sub_one_mem_jacobson r (hIjac hr.1) with s hs
  have : n = -(s * r - 1) • n := by
    rw [neg_sub, sub_smul, mul_smul, hr.2 n hn, one_smul, smul_zero, sub_zero]
  rw [this]
  exact Submodule.smul_mem_smul (Submodule.neg_mem _ hs) hn
#align submodule.eq_smul_of_le_smul_of_le_jacobson Submodule.eq_smul_of_le_smul_of_le_jacobson

/-- *Nakayama's Lemma** - Statement (2) in
[Stacks 00DV](https://stacks.math.columbia.edu/tag/00DV).
See also `eq_smul_of_le_smul_of_le_jacobson` for a generalisation
to the `jacobson` of any ideal -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Nakayama/Variant3f48296af9d9afa256626d579ae7ac3ef57d1e1151aa91b30cfbf069b133f2ac.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Nakayama/Variant3f48296af9d9afa256626d579ae7ac3ef57d1e1151aa91b30cfbf069b133f2ac.lean#L52).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f30664d0fc44475c0a0199caa78bd121d2608ca9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
