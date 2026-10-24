# mem_hull

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c128d887-a17b-8684-39b1-0d744dc18c13",
  "kind": "theorem",
  "lexical_name": "mem_hull",
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
  "slug": "mem-hull--f21c24ac8b4aafb14aa0e4da",
  "source": {
    "blob": "3407862e03ef0fb006b96323c7e78f6fa603fa2e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 207,
    "line": 173,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Extended/Variant3c445e4bcf0bf511b5bd438758cc61bb1449bed16cff9d6724d87c10d44eee93.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f21c24ac8b4aafb14aa0e4da395b000239add121c8916c4a64c1f09172274edf",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Extended/Variant3c445e4bcf0bf511b5bd438758cc61bb1449bed16cff9d6724d87c10d44eee93.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c128d887-a17b-8684-39b1-0d744dc18c13`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 173–207.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_hull {x : ℝ} {E : ExtendedInterval} (hx : x ∈ E) (hne : E.parts ≠ []) :
    x ∈ E.hull := by
  obtain ⟨I, hI_mem, hx_in_I⟩ := hx
  -- Show x is in the hull interval
  simp only [hull, hull?]
  cases hparts : E.parts with
  | nil => exact absurd hparts hne
  | cons hd tl =>
    simp only [Option.getD_some, IntervalRat.mem_def]
    -- I is either hd or in tl
    cases List.mem_cons.mp (hparts ▸ hI_mem) with
    | inl heq =>
      -- I = hd
      subst heq
      have hhead := foldl_contains_head tl I
      constructor
      · calc (↑(tl.foldl _ I).lo : ℝ) ≤ I.lo := by exact_mod_cast hhead.1
             _ ≤ x := hx_in_I.1
      · calc x ≤ I.hi := hx_in_I.2
             _ ≤ (tl.foldl _ I).hi := by exact_mod_cast hhead.2
    | inr hmem =>
      -- I ∈ tl
      have htail := foldl_contains_tail tl hd I hmem
      constructor
      · calc (↑(tl.foldl _ hd).lo : ℝ) ≤ I.lo := by exact_mod_cast htail.1
             _ ≤ x := hx_in_I.1
      · calc x ≤ I.hi := hx_in_I.2
             _ ≤ (tl.foldl _ hd).hi := by exact_mod_cast htail.2

end ExtendedInterval

/-! ## Extended Inversion -/

/-- The default "large bound" representing infinity for extended arithmetic.
    Using 10^30 is sufficient for most numerical applications. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Extended/Variant3c445e4bcf0bf511b5bd438758cc61bb1449bed16cff9d6724d87c10d44eee93.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Extended/Variant3c445e4bcf0bf511b5bd438758cc61bb1449bed16cff9d6724d87c10d44eee93.lean#L173).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3407862e03ef0fb006b96323c7e78f6fa603fa2e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
