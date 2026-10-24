# fractionalMellin_split

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e03de5da-e1b4-2485-97e8-2a79129d18e4",
  "kind": "theorem",
  "lexical_name": "fractionalMellin_split",
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
  "slug": "fractionalmellin-split--5b9bd61e67d6f519cdbc32eb",
  "source": {
    "blob": "e18621be209394c600609294fbf7407e811d4c4c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 84,
    "line": 61,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripMellinBounds.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5b9bd61e67d6f519cdbc32eb3bddd5f661b69d747bba787fc1d0f4355742b29e",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CriticalStripMellinBounds.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e03de5da-e1b4-2485-97e8-2a79129d18e4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 61–84.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fractionalMellin_split {T : ℝ} {s : ℂ} (hT : 1 ≤ T) (hs : 0 < s.re) :
    fractionalMellin s = fractionalMellinTruncation T s + fractionalMellinTail T s := by
  have hdis : Disjoint (Ioc (1 : ℝ) T) (Ioi T) := by
    apply Set.disjoint_left.mpr
    intro t ht hgt
    exact (not_lt_of_ge ht.2) hgt
  have hu : Ioc (1 : ℝ) T ∪ Ioi T = Ioi 1 := by
    ext t
    constructor
    · rintro (h | h)
      · exact h.1
      · exact hT.trans_lt h
    · intro ht
      by_cases hc : t ≤ T
      · exact Or.inl ⟨ht, hc⟩
      · exact Or.inr (lt_of_not_ge hc)
  have hfin : IntegrableOn (fractionalIntegrand s) (Ioc 1 T) :=
    (fractionalIntegrand_integrable hs).mono_set Ioc_subset_Ioi_self
  have htail := fractionalMellinTail_integrable hT hs
  rw [fractionalMellin_eq_integral]
  simpa only [hu, fractionalMellinTruncation, fractionalMellinTail,
    fractionalIntegrand] using setIntegral_union hdis measurableSet_Ioi hfin htail

/-- Uniform on any declared right half-plane Re(s)>=sigma>0. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CriticalStripMellinBounds.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripMellinBounds.lean#L61).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e18621be209394c600609294fbf7407e811d4c4c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
