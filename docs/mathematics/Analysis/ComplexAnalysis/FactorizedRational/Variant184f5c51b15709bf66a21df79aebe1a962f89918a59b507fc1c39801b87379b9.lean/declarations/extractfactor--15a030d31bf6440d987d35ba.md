# extractFactor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5ba19bdc72427599d24cb7af06dc3bd014ff4aa8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 101,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/18/184f5c51b15709bf66a21df79aebe1a962f89918a59b507fc1c39801b87379b9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e744a6aa-d3d5-0e96-3ab8-88d785134b06",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bcef093a-f067-f6a3-1d6a-67c2a72b6297",
  "kind": "lemma",
  "lexical_name": "extractFactor",
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
  "slug": "extractfactor--15a030d31bf6440d987d35ba",
  "source": {
    "blob": "5ba19bdc72427599d24cb7af06dc3bd014ff4aa8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 119,
    "line": 101,
    "path": "GRWTSK/Analysis/ComplexAnalysis/FactorizedRational/Variant184f5c51b15709bf66a21df79aebe1a962f89918a59b507fc1c39801b87379b9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:15a030d31bf6440d987d35baff010e0f8226a99431cac10c1458c70814c24f0e",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/FactorizedRational/Variant184f5c51b15709bf66a21df79aebe1a962f89918a59b507fc1c39801b87379b9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bcef093a-f067-f6a3-1d6a-67c2a72b6297`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 101–119.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma extractFactor {d : 𝕜 → ℤ} (u₀ : 𝕜) (hd : d.support.Finite) :
    (∏ᶠ u, (· - u) ^ d u) = ((· - u₀) ^ d u₀) * (∏ᶠ u, (· - u) ^ (update d u₀ 0 u)) := by
  by_cases h₁d : d u₀ = 0
  · simp [← eq_update_self_iff.2 h₁d, h₁d]
  · have : (fun u ↦ (fun x ↦ x - u) ^ d u).mulSupport ⊆ hd.toFinset := by
      simp [mulSupport]
    rw [finprod_eq_prod_of_mulSupport_subset _ this]
    have : u₀ ∈ hd.toFinset := by simp_all
    rw [← Finset.mul_prod_erase hd.toFinset _ this]
    congr 1
    have : (fun u ↦ (· - u) ^ (update d u₀ 0 u)).mulSupport ⊆ hd.toFinset.erase u₀ := by
      rw [mulSupport]
      intro x hx
      by_cases h₁x : x = u₀ <;> simp_all
    simp_all [finprod_eq_prod_of_mulSupport_subset _ this, Finset.prod_congr rfl]

/--
Factorized rational functions are meromorphic in normal form on `univ`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/FactorizedRational/Variant184f5c51b15709bf66a21df79aebe1a962f89918a59b507fc1c39801b87379b9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/FactorizedRational/Variant184f5c51b15709bf66a21df79aebe1a962f89918a59b507fc1c39801b87379b9.lean#L101).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5ba19bdc72427599d24cb7af06dc3bd014ff4aa8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
