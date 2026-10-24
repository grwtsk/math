# digamma_one_sub

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:39663adb-801a-f175-bb56-e9c73b044f12",
  "kind": "theorem",
  "lexical_name": "digamma_one_sub",
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
  "slug": "digamma-one-sub--3313dbbe063a20fdcac4ee61",
  "source": {
    "blob": "d627d94a189a80cbdd3936f8603734529af80ede",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 115,
    "line": 102,
    "path": "GRWTSK/Analysis/SpecialFunctions/Digamma/Variant147580a2a5b39e3a54057819686f1fdd2ac247577b03be75703027732a06b35c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3313dbbe063a20fdcac4ee6116e84d7a11d95c7e8d94cd999f8864a62032758e",
  "verification": {
    "reference": "docs/verification/Analysis/SpecialFunctions/Digamma/Variant147580a2a5b39e3a54057819686f1fdd2ac247577b03be75703027732a06b35c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:39663adb-801a-f175-bb56-e9c73b044f12`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 102–115.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem digamma_one_sub {s : ℂ} (hs : ∀ n : ℤ, s ≠ n) :
    digamma (1 - s) = digamma s + π * cot (π * s) := by
  -- The idea is to apply `logDeriv` to both sides of `Gamma_mul_Gamma_one_sub`. This produces
  -- side conditions, which the two `have`s below allow the `<;> try ...` line to discharge.
  have (m : ℕ) : s ≠ -m := by simpa using hs (-m)
  have (m : ℕ) : 1 - s ≠ -m := fun _ ↦ hs (1 + m) (by push_cast; grind)
  have := congr(logDeriv $(funext Gamma_mul_Gamma_one_sub) s)
  rw [logDeriv_fun_mul, logDeriv_fun_div, ← Function.comp_def Gamma, ← Function.comp_def sin,
    logDeriv_comp, logDeriv_comp] at this <;>
    try first | fun_prop | grind [sin_eq_zero_iff, ofReal_ne_zero, Real.pi_ne_zero]
  simp [digamma_def] at this ⊢
  grind

@[fun_prop]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/SpecialFunctions/Digamma/Variant147580a2a5b39e3a54057819686f1fdd2ac247577b03be75703027732a06b35c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SpecialFunctions/Digamma/Variant147580a2a5b39e3a54057819686f1fdd2ac247577b03be75703027732a06b35c.lean#L102).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d627d94a189a80cbdd3936f8603734529af80ede` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
