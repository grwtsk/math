# distinct_source_vectors_linearIndependent

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6f3f2470-b412-f71f-c824-b14011786e81",
  "kind": "theorem",
  "lexical_name": "distinct_source_vectors_linearIndependent",
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
  "slug": "distinct-source-vectors-linearindependent--579d7680e72108de052f64b8",
  "source": {
    "blob": "dd196b2be4eac37f447b64e3189f94eefd7504d4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 105,
    "line": 82,
    "path": "GRWTSK/Analysis/InnerProductSpace/CompactSourceGramPositiveDefinite.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:579d7680e72108de052f64b8ba39dae2884d78b3f3f4bd927187155913b628e4",
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

Occurrence: `result:6f3f2470-b412-f71f-c824-b14011786e81`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 82–105.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem distinct_source_vectors_linearIndependent {ι : Type*} [Fintype ι]
    {A : ℝ} (hA : 0 < A) (label : ι → ℕ) (positive : ∀ n, 0 < label n)
    (distinct : Function.Injective label) :
    LinearIndependent ℝ (fun n ↦ SourceGram.sourceVector A (label n)) := by
  have shifts : Function.Injective (fun n ↦ Real.log (label n : ℝ)) := by
    intro m n equal
    apply distinct
    have castEqual := Real.log_injOn_pos
      (show (label m : ℝ) ∈ Ioi 0 from by
        change 0 < (label m : ℝ)
        exact_mod_cast positive m)
      (show (label n : ℝ) ∈ Ioi 0 from by
        change 0 < (label n : ℝ)
        exact_mod_cast positive n) equal
    exact_mod_cast castEqual
  change LinearIndependent ℝ (fun n x ↦ normalizedSource A (x - Real.log (label n : ℝ)))
  exact finite_translates_linearIndependent
    (normalized_source_support_bddAbove hA) (normalized_source_support_nonempty hA)
    (fun n ↦ Real.log (label n : ℝ)) shifts

-- Preserve the exact original instance binder for API compatibility; this exception
-- applies only to this declaration, while all replay warnings remain fatal.
set_option linter.unusedDecidableInType false in
/-- Strict positivity uses continuity and genuine square integrability. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/InnerProductSpace/CompactSourceGramPositiveDefinite.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/InnerProductSpace/CompactSourceGramPositiveDefinite.lean#L82).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dd196b2be4eac37f447b64e3189f94eefd7504d4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
