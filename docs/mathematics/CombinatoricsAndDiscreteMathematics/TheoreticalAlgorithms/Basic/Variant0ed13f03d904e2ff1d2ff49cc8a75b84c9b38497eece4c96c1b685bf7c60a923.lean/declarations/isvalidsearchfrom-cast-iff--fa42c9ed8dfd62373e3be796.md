# isValidSearchFrom_cast_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a2035ba8-b2a6-4ddd-dc95-0cce0e8c246d",
  "kind": "theorem",
  "lexical_name": "isValidSearchFrom_cast_iff",
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
  "slug": "isvalidsearchfrom-cast-iff--fa42c9ed8dfd62373e3be796",
  "source": {
    "blob": "be753e249f36e5d5eccbafe7cbaaa486ecc5eaf7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 918,
    "line": 895,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant0ed13f03d904e2ff1d2ff49cc8a75b84c9b38497eece4c96c1b685bf7c60a923.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fa42c9ed8dfd62373e3be7967d73364864fb6d9c35a77a0c2da2f74238e5c447",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant0ed13f03d904e2ff1d2ff49cc8a75b84c9b38497eece4c96c1b685bf7c60a923.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a2035ba8-b2a6-4ddd-dc95-0cce0e8c246d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 895–918.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isValidSearchFrom_cast_iff {pat : ρ} [PatternModel pat] {s t : Slice} (hst : s.copy = t.copy)
    {pos : s.Pos} {l : List (SearchStep t)} :
    IsValidSearchFrom pat (pos.cast hst) l ↔ IsValidSearchFrom pat pos (l.map (·.cast hst.symm)) := by
  suffices ∀ (s t : Slice) (hst : s.copy = t.copy) (pos : s.Pos) (l : List (SearchStep s)),
      IsValidSearchFrom pat pos l → IsValidSearchFrom pat (pos.cast hst) (l.map (·.cast hst)) from
    ⟨fun h => by simpa using this _ _ hst.symm _ _ h, fun h => by
      have hcomp : (SearchStep.cast hst) ∘ (SearchStep.cast hst.symm) = id := by ext; simp
      simpa [hcomp] using this _ _ hst _ _ h⟩
  intro s t hst pos l hl
  induction hl with
  | endPos => simpa using IsValidSearchFrom.endPos
  | matched h₁ h₂ ih =>
    simpa only [List.map_cons, SearchStep.cast_matched] using IsValidSearchFrom.matched (by simpa) ih
  | mismatched h₁ h₂ h₃ ih =>
    simp only [List.map_cons, SearchStep.cast_rejected]
    refine IsValidSearchFrom.mismatched (by simpa) (fun p hp₁ hp₂ hp₃ => ?_) ih
    exact h₂ (p.cast hst.symm) (by simpa [Pos.le_cast_iff]) (by simpa [Pos.cast_lt_iff]) (by simpa)

/--
Predicate stating compatibility between {name}`PatternModel` and {name}`ToForwardSearcher`.

We require the searcher to always match the longest match at the first position where the pattern
matches; see {name}`IsValidSearchFrom`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant0ed13f03d904e2ff1d2ff49cc8a75b84c9b38497eece4c96c1b685bf7c60a923.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant0ed13f03d904e2ff1d2ff49cc8a75b84c9b38497eece4c96c1b685bf7c60a923.lean#L895).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `be753e249f36e5d5eccbafe7cbaaa486ecc5eaf7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
