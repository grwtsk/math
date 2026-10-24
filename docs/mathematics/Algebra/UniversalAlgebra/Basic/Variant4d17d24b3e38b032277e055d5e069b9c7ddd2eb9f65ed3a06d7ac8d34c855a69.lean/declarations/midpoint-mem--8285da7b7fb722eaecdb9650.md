# midpoint_mem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:829796ac-3e3c-7107-ce75-b6d1ca3501e3",
  "kind": "theorem",
  "lexical_name": "midpoint_mem",
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
  "slug": "midpoint-mem--8285da7b7fb722eaecdb9650",
  "source": {
    "blob": "4ce885e891fa920e3dd2e4106d96906b2bc1d4cd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 118,
    "line": 101,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Basic/Variant4d17d24b3e38b032277e055d5e069b9c7ddd2eb9f65ed3a06d7ac8d34c855a69.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8285da7b7fb722eaecdb9650d19f2d8eb85cfc2e2052dca46f00ea3449acf47a",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Basic/Variant4d17d24b3e38b032277e055d5e069b9c7ddd2eb9f65ed3a06d7ac8d34c855a69.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:829796ac-3e3c-7107-ce75-b6d1ca3501e3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 101–118.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem midpoint_mem (I : IntervalRat) : (I.midpoint : ℝ) ∈ I := by
  simp only [mem_def, midpoint]
  have hle : (I.lo : ℝ) ≤ I.hi := by exact_mod_cast I.le
  constructor
  · -- lo ≤ (lo + hi) / 2
    have : (((I.lo + I.hi) / 2 : ℚ) : ℝ) = ((I.lo : ℝ) + I.hi) / 2 := by
      simp only [Rat.cast_div, Rat.cast_add, Rat.cast_ofNat]
    rw [this]
    linarith
  · -- (lo + hi) / 2 ≤ hi
    have : (((I.lo + I.hi) / 2 : ℚ) : ℝ) = ((I.lo : ℝ) + I.hi) / 2 := by
      simp only [Rat.cast_div, Rat.cast_add, Rat.cast_ofNat]
    rw [this]
    linarith

/-! ### Interval addition -/

/-- Add two intervals -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Basic/Variant4d17d24b3e38b032277e055d5e069b9c7ddd2eb9f65ed3a06d7ac8d34c855a69.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Basic/Variant4d17d24b3e38b032277e055d5e069b9c7ddd2eb9f65ed3a06d7ac8d34c855a69.lean#L101).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4ce885e891fa920e3dd2e4106d96906b2bc1d4cd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
