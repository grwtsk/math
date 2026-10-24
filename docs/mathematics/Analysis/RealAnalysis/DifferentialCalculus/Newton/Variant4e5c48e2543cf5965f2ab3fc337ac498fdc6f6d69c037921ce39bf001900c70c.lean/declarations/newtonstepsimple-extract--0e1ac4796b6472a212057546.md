# newtonStepSimple_extract

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:04e78607-4c2a-98bb-f793-af37cdfe2500",
  "kind": "lemma",
  "lexical_name": "newtonStepSimple_extract",
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
  "slug": "newtonstepsimple-extract--0e1ac4796b6472a212057546",
  "source": {
    "blob": "ec9d246d4125bc4d43ddcf3493084911838ef0be",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 690,
    "line": 654,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Newton/Variant4e5c48e2543cf5965f2ab3fc337ac498fdc6f6d69c037921ce39bf001900c70c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0e1ac4796b6472a21205754659bf81d897bd8c3b8bb514dfe908adbf91461e5d",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Newton/Variant4e5c48e2543cf5965f2ab3fc337ac498fdc6f6d69c037921ce39bf001900c70c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:04e78607-4c2a-98bb-f793-af37cdfe2500`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 654–690.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma newtonStepSimple_extract (e : Expr) (I N : IntervalRat)
    (hSimple : newtonStepSimple e I 0 = some N) :
    let c := I.midpoint
    let fc := evalInterval1 e (IntervalRat.singleton c)
    let dI := derivInterval e (fun _ => I) 0
    ∃ (hdI_nonzero : ¬dI.containsZero),
      let dNonzero : IntervalRat.IntervalRatNonzero := ⟨dI, hdI_nonzero⟩
      let Q := IntervalRat.mul fc (IntervalRat.invNonzero dNonzero)
      N.lo = max I.lo (c - Q.hi) ∧ N.hi = min I.hi (c - Q.lo) := by
  -- Unfold the definition of newtonStepSimple
  unfold newtonStepSimple at hSimple
  -- The dite splits on containsZero
  by_cases hzero : (derivInterval e (fun _ => I) 0).containsZero
  · -- If dI contains zero, newtonStepSimple returns none, contradiction
    simp only [hzero, ↓reduceDIte, reduceCtorEq] at hSimple
  · -- If dI doesn't contain zero, we get an intersection
    simp only [hzero, dite_false] at hSimple
    use hzero
    -- hSimple : IntervalRat.intersect I ⟨c - Q.hi, c - Q.lo, _⟩ = some N
    -- When intersect returns some, it means the intersection is non-empty
    -- and the result has lo = max, hi = min
    simp only [IntervalRat.intersect] at hSimple
    -- Now we have a dite on whether lo ≤ hi
    -- Use split to handle the dite (split_ifs version for at hypothesis)
    split at hSimple
    · -- The intersection succeeded (dite was true)
      rename_i hintersect
      simp only [Option.some.injEq] at hSimple
      constructor
      · -- N.lo = max I.lo (c - Q.hi)
        exact congrArg IntervalRat.lo hSimple.symm
      · -- N.hi = min I.hi (c - Q.lo)
        exact congrArg IntervalRat.hi hSimple.symm
    · -- The intersection failed (none), contradiction with hSimple : none = some N
      simp only [reduceCtorEq] at hSimple

/-- Extract structure from newtonStepTM. This extracts the TM and proves the key structural facts. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Newton/Variant4e5c48e2543cf5965f2ab3fc337ac498fdc6f6d69c037921ce39bf001900c70c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Newton/Variant4e5c48e2543cf5965f2ab3fc337ac498fdc6f6d69c037921ce39bf001900c70c.lean#L654).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ec9d246d4125bc4d43ddcf3493084911838ef0be` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
