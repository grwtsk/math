# DivisorSplit.horizons_contract

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "209bed08fc2a3433333b0f842db039b743c437c9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 357,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/26/26bbf22e9252c6955d5711bef7e106d7b56c844af321e22747835bdde404df83.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a87c0d80-19ec-dabb-7e6c-3f339c27d612",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:32687d84-e6b2-a2a7-fac4-999f38114bc0",
  "kind": "theorem",
  "lexical_name": "DivisorSplit.horizons_contract",
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
  "slug": "divisorsplit-horizons-contract--75548d886e6b822980e4865a",
  "source": {
    "blob": "209bed08fc2a3433333b0f842db039b743c437c9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 364,
    "line": 357,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/FactorState/Variant26bbf22e9252c6955d5711bef7e106d7b56c844af321e22747835bdde404df83.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:75548d886e6b822980e4865a0c0c5526de97589b5989ffb311018b566db88e26",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/FactorState/Variant26bbf22e9252c6955d5711bef7e106d7b56c844af321e22747835bdde404df83.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:32687d84-e6b2-a2a7-fac4-999f38114bc0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 357–364.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem DivisorSplit.horizons_contract {R : ℕ} (c : DivisorSplit R) :
    Nat.sqrt c.divisor ≤ Nat.sqrt R ∧ Nat.sqrt c.quotient ≤ Nat.sqrt R := by
  refine ⟨Nat.sqrt_le_sqrt c.divisor_lt.le, Nat.sqrt_le_sqrt ?_⟩
  have hR : 0 < R := (Nat.zero_lt_one.trans c.divisor_gt_one).trans c.divisor_lt
  exact Nat.le_of_dvd hR ⟨c.divisor, by simpa [Nat.mul_comm] using c.equality⟩

/-! ## Closed positive and hostile arithmetic fixtures -/

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/FactorState/Variant26bbf22e9252c6955d5711bef7e106d7b56c844af321e22747835bdde404df83.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/FactorState/Variant26bbf22e9252c6955d5711bef7e106d7b56c844af321e22747835bdde404df83.lean#L357).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `209bed08fc2a3433333b0f842db039b743c437c9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
