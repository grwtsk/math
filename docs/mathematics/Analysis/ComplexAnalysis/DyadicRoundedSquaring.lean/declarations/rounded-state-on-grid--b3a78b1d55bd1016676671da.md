# rounded_state_on_grid

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b1f900d1-a904-7166-0ca8-c7e0a7900ad5",
  "kind": "theorem",
  "lexical_name": "rounded_state_on_grid",
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
  "slug": "rounded-state-on-grid--b3a78b1d55bd1016676671da",
  "source": {
    "blob": "6713ba9d35561eb0b4ba8e8dd1eae1ad81017a7a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 134,
    "line": 125,
    "path": "GRWTSK/Analysis/Complex/DyadicRoundedSquaring.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b3a78b1d55bd1016676671dad958eb1cf64fc9d352badb74772339add344cfc7",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/DyadicRoundedSquaring.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b1f900d1-a904-7166-0ca8-c7e0a7900ad5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 125–134.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rounded_state_on_grid (bits : ℕ) (seed : ℂ) (initial : ℝ) (s : ℕ) :
    (∃ kr ki : ℤ, (roundedValue bits seed s).re = (kr : ℝ) / scale bits ∧
      (roundedValue bits seed s).im = (ki : ℝ) / scale bits) ∧
    (∃ ke : ℤ, roundedError bits seed initial s = (ke : ℝ) / scale bits) := by
  cases s with
  | zero => exact ⟨quantize_on_grid bits seed, up_on_grid bits _⟩
  | succ s => exact ⟨quantize_on_grid bits _, up_on_grid bits _⟩

end
end GRWTSK.Analysis.Complex.DyadicRoundedSquaring
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ComplexAnalysis/DyadicRoundedSquaring.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Complex/DyadicRoundedSquaring.lean#L125).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6713ba9d35561eb0b4ba8e8dd1eae1ad81017a7a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
