# laplaceKernel_eq_J

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "24e62b24c7297f7f0f57df7210664a0383694261",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 197,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/02/02999ce61b71200b528e029183c169ae306182b8a411c5a47e946af54e48a228.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1efde874-f9c5-1346-9057-6e31ddfa5f18",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7de93951-12b9-c051-0f83-93566df55aa6",
  "kind": "theorem",
  "lexical_name": "laplaceKernel_eq_J",
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
  "slug": "laplacekernel-eq-j--43e6d54345b95f10a5054842",
  "source": {
    "blob": "24e62b24c7297f7f0f57df7210664a0383694261",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 217,
    "line": 197,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Kernel/Variant02999ce61b71200b528e029183c169ae306182b8a411c5a47e946af54e48a228.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:43e6d54345b95f10a50548421154059773c7066a106b2a8187f4d7344ea028f7",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Kernel/Variant02999ce61b71200b528e029183c169ae306182b8a411c5a47e946af54e48a228.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7de93951-12b9-c051-0f83-93566df55aa6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 197–217.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem laplaceKernel_eq_J
    (k : ℕ) (w : ℂ) (hw : w ≠ 0) :
    laplaceKernel k w = J k w := by
  rw [laplaceKernel, kernelNumerator_eq_source_sum, J,
    mul_div_assoc, Finset.sum_div]
  congr 1
  apply Finset.sum_congr rfl
  intro j hj
  have hjle : j ≤ k := by
    have hjlt : j < k + 1 := Finset.mem_range.mp hj
    omega
  have hfac : ((Nat.factorial (k - j) : ℕ) : ℂ) ≠ 0 := by
    exact_mod_cast Nat.factorial_ne_zero (k - j)
  field_simp [hw, hfac]
  rw [← pow_add]
  have hexp : k - j + (j + 1) = k + 1 := by omega
  rw [hexp]
  ring

/-- First analytic B3.3 checkpoint: the exact source `J_k` is the genuine
half-line integral throughout its convergence half-plane. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Kernel/Variant02999ce61b71200b528e029183c169ae306182b8a411c5a47e946af54e48a228.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Kernel/Variant02999ce61b71200b528e029183c169ae306182b8a411c5a47e946af54e48a228.lean#L197).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `24e62b24c7297f7f0f57df7210664a0383694261` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
