# exp_mem_unitary_of_mem_skewAdjoint

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6ee37b8478fad935bf98072edba783fc30d1ed91",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 470,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8c/8c7eefe70cc76e76913031b7931e2bda4a757be24aea69a16414a2e0268603d2.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f95d5901-a697-d902-d80a-aa0440670c71",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fd6ad919-a5ee-de01-9a72-4c8192a4d4a5",
  "kind": "theorem",
  "lexical_name": "exp_mem_unitary_of_mem_skewAdjoint",
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
  "slug": "exp-mem-unitary-of-mem-skewadjoint--baf8119a07d297cd274f34eb",
  "source": {
    "blob": "6ee37b8478fad935bf98072edba783fc30d1ed91",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 480,
    "line": 470,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Exponential/Variant8c7eefe70cc76e76913031b7931e2bda4a757be24aea69a16414a2e0268603d2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:baf8119a07d297cd274f34ebb4e5c573b7090eed001fc177091fa9c94a09e3a0",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Exponential/Variant8c7eefe70cc76e76913031b7931e2bda4a757be24aea69a16414a2e0268603d2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fd6ad919-a5ee-de01-9a72-4c8192a4d4a5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 470–480.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exp_mem_unitary_of_mem_skewAdjoint [StarRing 𝔸] [ContinuousStar 𝔸] {x : 𝔸}
    (h : x ∈ skewAdjoint 𝔸) : exp 𝕂 x ∈ unitary 𝔸 := by
  rw [unitary.mem_iff, star_exp, skewAdjoint.mem_iff.mp h, ←
    exp_add_of_commute (Commute.refl x).neg_left, ← exp_add_of_commute (Commute.refl x).neg_right,
    neg_add_cancel, add_neg_cancel, exp_zero, and_self_iff]

end

open scoped Function in -- required for scoped `on` notation
/-- In a Banach-algebra `𝔸` over `𝕂 = ℝ` or `𝕂 = ℂ`, if a family of elements `f i` mutually
commute then `NormedSpace.exp 𝕂 (∑ i, f i) = ∏ i, NormedSpace.exp 𝕂 (f i)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Exponential/Variant8c7eefe70cc76e76913031b7931e2bda4a757be24aea69a16414a2e0268603d2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Exponential/Variant8c7eefe70cc76e76913031b7931e2bda4a757be24aea69a16414a2e0268603d2.lean#L470).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6ee37b8478fad935bf98072edba783fc30d1ed91` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
