# finite_source_combination_ne_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:691e1298-cfb6-ae60-8086-1239d42140d1",
  "kind": "theorem",
  "lexical_name": "finite_source_combination_ne_zero",
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
  "slug": "finite-source-combination-ne-zero--9514dbf8174ae62c3c006fb1",
  "source": {
    "blob": "dd196b2be4eac37f447b64e3189f94eefd7504d4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 81,
    "line": 59,
    "path": "GRWTSK/Analysis/InnerProductSpace/CompactSourceGramPositiveDefinite.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9514dbf8174ae62c3c006fb1effce23821b4bf70dd186da01aaf5feeea5c6429",
  "verification": {
    "reference": "docs/verification/Analysis/InnerProductSpace/CompactSourceGramPositiveDefinite.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:691e1298-cfb6-ae60-8086-1239d42140d1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 59–81.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finite_source_combination_ne_zero {ι : Type*} [DecidableEq ι]
    {A : ℝ} (hA : 0 < A) (s : Finset ι) (label : ι → ℕ)
    (positive : ∀ n ∈ s, 0 < label n) (distinct : Set.InjOn label (s : Set ι))
    (w : ι → ℝ) (nonzero : ∃ n ∈ s, w n ≠ 0) :
    ∃ x : ℝ, (∑ n ∈ s, w n * SourceGram.sourceVector A (label n) x) ≠ 0 := by
  have shifts : Set.InjOn (fun n ↦ Real.log (label n : ℝ)) (s : Set ι) := by
    intro m hm n hn equal
    apply distinct hm hn
    have castEqual := Real.log_injOn_pos
      (show (label m : ℝ) ∈ Ioi 0 from by
        change 0 < (label m : ℝ)
        exact_mod_cast positive m hm)
      (show (label n : ℝ) ∈ Ioi 0 from by
        change 0 < (label n : ℝ)
        exact_mod_cast positive n hn) equal
    exact_mod_cast castEqual
  simpa only [SourceGram.sourceVector] using finite_translate_combination_ne_zero
    (normalized_source_support_bddAbove hA) (normalized_source_support_nonempty hA)
    s (fun n ↦ Real.log (label n : ℝ)) shifts w nonzero

-- Preserve the exact original instance binder for API compatibility; this exception
-- applies only to this declaration, while all replay warnings remain fatal.
set_option linter.unusedFintypeInType false in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/InnerProductSpace/CompactSourceGramPositiveDefinite.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/InnerProductSpace/CompactSourceGramPositiveDefinite.lean#L59).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dd196b2be4eac37f447b64e3189f94eefd7504d4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
