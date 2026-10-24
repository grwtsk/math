# riemann_hypothesis_iff_no_right_shifted_values

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1b6eee88-9e0c-a990-5e5c-52795eace595",
  "kind": "theorem",
  "lexical_name": "riemann_hypothesis_iff_no_right_shifted_values",
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
  "slug": "riemann-hypothesis-iff-no-right-shifted-values--028f758d0c80cf52082a1fd7",
  "source": {
    "blob": "7fe14de2b83f50fe6d39b0b0565b2a5150dad686",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 362,
    "line": 335,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Bridge/Variant617786a7286b28c25ffe7daf79a7e02c2769014ab19c15f882eabdbaaa8c2b9d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:028f758d0c80cf52082a1fd72048f1541db348d91ea454c0223f88a56e6a402b",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Bridge/Variant617786a7286b28c25ffe7daf79a7e02c2769014ab19c15f882eabdbaaa8c2b9d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1b6eee88-9e0c-a990-5e5c-52795eace595`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 335–362.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem riemann_hypothesis_iff_no_right_shifted_values :
    _root_.RiemannHypothesis ↔
      ∀ o : ZeroOccurrence,
        (2 * shiftedValue o).re ≤ 0 := by
  constructor
  · intro h o
    have hp := point_nontrivial o.1
    have hr :=
      h o.1.val hp.1 hp.2.1 hp.2.2
    simp [shiftedValue, hr]
  · intro h s hs hn h1
    have hs' :
        FormalResearch.RiemannHypothesis.NontrivialZetaZero s :=
      ⟨hs, hn, h1⟩
    let p : ZeroPoint :=
      ⟨s, hs, hs'.mem_critical_strip⟩
    let o : ZeroOccurrence :=
      ⟨p, ⟨0, multiplicity_positive p⟩⟩
    have hr := h o
    have hl := h (reflectOccurrence o)
    rw [shiftedValue_reflect] at hl
    change (2 * (s - 1 / 2)).re ≤ 0 at hr
    change (2 * -(s - 1 / 2)).re ≤ 0 at hl
    norm_num [Complex.mul_re] at hr hl
    linarith

/-- The exact B3.4 implication from the repository's sole uniform lower-bound
hypothesis to Mathlib's RH target. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Bridge/Variant617786a7286b28c25ffe7daf79a7e02c2769014ab19c15f882eabdbaaa8c2b9d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Bridge/Variant617786a7286b28c25ffe7daf79a7e02c2769014ab19c15f882eabdbaaa8c2b9d.lean#L335).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7fe14de2b83f50fe6d39b0b0565b2a5150dad686` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
