# NeBot.zero_mul_nonneg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "449673628534b0e914cd919cd9dfd65b15756cc9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 835,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0e/0e72abfa12dd455df94464b9a841c4b160cd4d59525f8edccd23f6841c54ba7a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ad6a4e8e-a552-eda8-d32c-49b0e3bb1b29",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9a20edf3-39d7-e430-baa1-46ae45c4bd50",
  "kind": "theorem",
  "lexical_name": "NeBot.zero_mul_nonneg",
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
  "slug": "nebot-zero-mul-nonneg--bcad8ead3eb6093bbccfeb81",
  "source": {
    "blob": "449673628534b0e914cd919cd9dfd65b15756cc9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 851,
    "line": 835,
    "path": "GRWTSK/Topology/GeneralTopology/Pointwise/Variant0e72abfa12dd455df94464b9a841c4b160cd4d59525f8edccd23f6841c54ba7a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bcad8ead3eb6093bbccfeb81f6127ee5738541efc5805abbdce3068e19b7bd44",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Pointwise/Variant0e72abfa12dd455df94464b9a841c4b160cd4d59525f8edccd23f6841c54ba7a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9a20edf3-39d7-e430-baa1-46ae45c4bd50`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 835–851.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem NeBot.zero_mul_nonneg (hg : g.NeBot) : 0 ≤ 0 * g :=
  le_mul_iff.2 fun _ h₁ _ h₂ =>
    let ⟨_, hb⟩ := hg.nonempty_of_mem h₂
    ⟨_, _, h₁, hb, zero_mul _⟩
#align filter.ne_bot.zero_mul_nonneg Filter.NeBot.zero_mul_nonneg

end MulZeroClass

section Group

variable [Group α] [DivisionMonoid β] [MonoidHomClass F α β] (m : F) {f g f₁ g₁ : Filter α}
  {f₂ g₂ : Filter β}

/-! Note that `Filter α` is not a group because `f / f ≠ 1` in general -/

-- porting note: increase priority to appease `simpNF` so left-hand side doesn't simplify
@[to_additive (attr := simp 1100)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Pointwise/Variant0e72abfa12dd455df94464b9a841c4b160cd4d59525f8edccd23f6841c54ba7a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Pointwise/Variant0e72abfa12dd455df94464b9a841c4b160cd4d59525f8edccd23f6841c54ba7a.lean#L835).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `449673628534b0e914cd919cd9dfd65b15756cc9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
