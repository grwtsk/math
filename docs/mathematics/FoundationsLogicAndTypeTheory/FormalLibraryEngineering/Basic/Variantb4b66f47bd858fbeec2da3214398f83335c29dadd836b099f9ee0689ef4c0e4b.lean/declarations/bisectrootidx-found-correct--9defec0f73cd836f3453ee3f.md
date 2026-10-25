# bisectRootIdx_found_correct

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8dd95c784f254c3e8b7cff9c2c08b85870b070ff",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 455,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b4/b4b66f47bd858fbeec2da3214398f83335c29dadd836b099f9ee0689ef4c0e4b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:eb3ad3be-b10b-73a2-d15e-398719091897",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f7a9fdd6-ee03-2fe3-5d32-a2c577047c90",
  "kind": "theorem",
  "lexical_name": "bisectRootIdx_found_correct",
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
  "slug": "bisectrootidx-found-correct--9defec0f73cd836f3453ee3f",
  "source": {
    "blob": "8dd95c784f254c3e8b7cff9c2c08b85870b070ff",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 484,
    "line": 455,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantb4b66f47bd858fbeec2da3214398f83335c29dadd836b099f9ee0689ef4c0e4b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9defec0f73cd836f3453ee3f6367a10491749ddc23199b3b404517baff0545cf",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantb4b66f47bd858fbeec2da3214398f83335c29dadd836b099f9ee0689ef4c0e4b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f7a9fdd6-ee03-2fe3-5d32-a2c577047c90`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 455–484.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem bisectRootIdx_found_correct (e : Expr) (hsupp : ExprSupported e)
    (ρ_int : IntervalEnv) (idx : Nat) (maxDepth : ℕ)
    (I : IntervalRat) (d : ℕ)
    (hfound : bisectRootIdx e ρ_int idx maxDepth = BisectResult.found I d)
    (ρ_real : Nat → ℝ) (hρ : ∀ i, i ≠ idx → ρ_real i ∈ ρ_int i)
    (hCont : ContinuousOn (Expr.evalAlong e ρ_real idx)
              (Set.Icc (I.lo : ℝ) (I.hi : ℝ))) :
    ∃ x ∈ I, Expr.evalAlong e ρ_real idx x = 0 := by
  -- First extract that signChange_idx is true for the found interval
  simp only [bisectRootIdx] at hfound
  have ⟨hsign, _⟩ := bisectRootIdx_go_found_signChange e ρ_int idx maxDepth maxDepth
    (ρ_int idx) I d (fun s hs => hs) hfound
  -- The interval in updateIntervalEnv' ρ_int idx I at idx is I
  have henv_eq : (updateIntervalEnv' ρ_int idx I) idx = I := by simp [updateIntervalEnv']
  -- Now use signChange_correct_idx with converted continuity
  have hCont' : ContinuousOn (Expr.evalAlong e ρ_real idx)
      (Set.Icc ((updateIntervalEnv' ρ_int idx I idx).lo : ℝ)
        ((updateIntervalEnv' ρ_int idx I idx).hi : ℝ)) := by
    simp only [henv_eq]; exact hCont
  have hroot := signChange_correct_idx e hsupp (updateIntervalEnv' ρ_int idx I) idx ρ_real
    (fun i hi => by simp only [updateIntervalEnv']; rw [if_neg hi]; exact hρ i hi)
    hsign hCont'
  -- Convert from updateIntervalEnv' membership to I membership
  simp only [henv_eq] at hroot
  exact hroot

/-- Helper: noRoot is preserved through bisection.
    The proof is complex due to the match structure in bisectRootIdx.go.
    The key insight is that noRoot can only be returned if excludesZero is true
    at some level of the recursion, and excludesZero implies the function is nonzero. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantb4b66f47bd858fbeec2da3214398f83335c29dadd836b099f9ee0689ef4c0e4b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantb4b66f47bd858fbeec2da3214398f83335c29dadd836b099f9ee0689ef4c0e4b.lean#L455).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8dd95c784f254c3e8b7cff9c2c08b85870b070ff` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
