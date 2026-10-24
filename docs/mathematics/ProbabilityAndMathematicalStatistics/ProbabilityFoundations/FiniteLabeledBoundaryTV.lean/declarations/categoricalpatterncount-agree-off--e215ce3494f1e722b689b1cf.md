# categoricalPatternCount_agree_off

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7504dd2f-dea1-df41-3861-9274b22841b5",
  "kind": "theorem",
  "lexical_name": "categoricalPatternCount_agree_off",
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
  "slug": "categoricalpatterncount-agree-off--e215ce3494f1e722b689b1cf",
  "source": {
    "blob": "ef98d8ed605c977f8ab20b777cde2961c314fff9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 90,
    "line": 78,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteLabeledBoundaryTV.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e215ce3494f1e722b689b1cfa5faa2d18a0043877b731a1c1277075e65714276",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteLabeledBoundaryTV.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7504dd2f-dea1-df41-3861-9274b22841b5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 78–90.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem categoricalPatternCount_agree_off (roots exception : Finset ℕ)
    (x y : ℕ → β) (a : β)
    (hagree : ∀ n ∈ roots, n ∉ exception → x n = y n) :
    categoricalPatternCount (roots \ exception) x a =
      categoricalPatternCount (roots \ exception) y a := by
  unfold categoricalPatternCount
  apply Finset.sum_congr rfl
  intro n hn
  obtain ⟨hroot, hgood⟩ := Finset.mem_sdiff.mp hn
  rw [hagree n hroot hgood]

/-- The count difference is EXACTLY supported on exceptional roots.
It need not vanish on the exceptional part. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteLabeledBoundaryTV.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteLabeledBoundaryTV.lean#L78).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ef98d8ed605c977f8ab20b777cde2961c314fff9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
