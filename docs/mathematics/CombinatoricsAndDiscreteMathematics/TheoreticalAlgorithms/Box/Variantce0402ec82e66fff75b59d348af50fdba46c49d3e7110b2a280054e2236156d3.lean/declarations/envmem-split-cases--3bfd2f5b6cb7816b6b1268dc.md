# envMem_split_cases

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7ee70da406ba08991399fc1971da959af8a0e773",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 216,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ce/ce0402ec82e66fff75b59d348af50fdba46c49d3e7110b2a280054e2236156d3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9d0cdacf-55d8-2d0f-417f-9161cb20afcf",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bff6fb9a-5919-0e22-4635-41c67882a3ae",
  "kind": "theorem",
  "lexical_name": "envMem_split_cases",
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
  "slug": "envmem-split-cases--3bfd2f5b6cb7816b6b1268dc",
  "source": {
    "blob": "7ee70da406ba08991399fc1971da959af8a0e773",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 252,
    "line": 216,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Box/Variantce0402ec82e66fff75b59d348af50fdba46c49d3e7110b2a280054e2236156d3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3bfd2f5b6cb7816b6b1268dc3b6240e03f2d38644c851daafa27fd36da0c73c0",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Box/Variantce0402ec82e66fff75b59d348af50fdba46c49d3e7110b2a280054e2236156d3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bff6fb9a-5919-0e22-4635-41c67882a3ae`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 216–252.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem envMem_split_cases (B : Box) (d : Nat) (hd : d < B.length)
    (ρ : Nat → ℝ) (hρ : envMem ρ B) :
    envMem ρ (split B d).1 ∨ envMem ρ (split B d).2 := by
  simp only [split, hd, ↓reduceDIte]
  have hρ_d : ρ d ∈ B[d]'hd := hρ ⟨d, hd⟩
  have hbisect := IntervalRat.mem_bisect_or hρ_d
  -- After bisection, ρ d is in either the left or right half
  cases hbisect with
  | inl hleft =>
    left
    intro ⟨i, hi⟩
    -- After B.set d I₁, length is preserved
    have hlen : (B.set d (B[d].bisect.1)).length = B.length := List.length_set
    have hi_orig : i < B.length := by rw [← hlen]; exact hi
    by_cases h_eq : i = d
    · -- i = d: use the bisection result
      simp only [h_eq, List.getElem_set_self]
      exact hleft
    · -- i ≠ d: use original membership
      have hne : d ≠ i := fun h => h_eq h.symm
      simp only [List.getElem_set_ne hne hi]
      exact hρ ⟨i, hi_orig⟩
  | inr hright =>
    right
    intro ⟨i, hi⟩
    have hlen : (B.set d (B[d].bisect.2)).length = B.length := List.length_set
    have hi_orig : i < B.length := by rw [← hlen]; exact hi
    by_cases h_eq : i = d
    · simp only [h_eq, List.getElem_set_self]
      exact hright
    · have hne : d ≠ i := fun h => h_eq h.symm
      simp only [List.getElem_set_ne hne hi]
      exact hρ ⟨i, hi_orig⟩

end Box

end LeanCert.Engine.Optimization
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Box/Variantce0402ec82e66fff75b59d348af50fdba46c49d3e7110b2a280054e2236156d3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Box/Variantce0402ec82e66fff75b59d348af50fdba46c49d3e7110b2a280054e2236156d3.lean#L216).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7ee70da406ba08991399fc1971da959af8a0e773` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
