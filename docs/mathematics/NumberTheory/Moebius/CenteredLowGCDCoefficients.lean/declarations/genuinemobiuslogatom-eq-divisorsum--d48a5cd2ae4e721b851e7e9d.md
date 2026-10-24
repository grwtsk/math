# genuineMobiusLogAtom_eq_divisorSum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4ad5f170-17c7-4f7e-c6fb-7310baa81424",
  "kind": "theorem",
  "lexical_name": "genuineMobiusLogAtom_eq_divisorSum",
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
  "slug": "genuinemobiuslogatom-eq-divisorsum--d48a5cd2ae4e721b851e7e9d",
  "source": {
    "blob": "b246b38d27d941db1626cbedafe5de6451349325",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 214,
    "line": 191,
    "path": "GRWTSK/NumberTheory/Moebius/CenteredLowGCDCoefficients.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d48a5cd2ae4e721b851e7e9d3c7f1b2e988be22fe9483cc13559ddfe03b59e40",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/CenteredLowGCDCoefficients.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4ad5f170-17c7-4f7e-c6fb-7310baa81424`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 191–214.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem genuineMobiusLogAtom_eq_divisorSum
    {X n : ℕ}
    (hn : n ∈ octaveIndexSet X) :
    genuineMobiusLogAtom X n =
      ∑ d ∈ n.divisors, mobiusLogTerm n d := by
  unfold genuineMobiusLogAtom
  have hnpos := (octave_mem_bounds hn).1
  have hnB := (octave_mem_bounds hn).2
  have hfilter :
      (modulusIndexSet X).filter (fun d => d ∣ n) =
        n.divisors := by
    ext d
    simp only [modulusIndexSet, Finset.mem_filter, Finset.mem_Icc,
      Nat.mem_divisors]
    constructor
    · rintro ⟨⟨hd0, hdB⟩, hdn⟩
      exact ⟨hdn, Nat.ne_of_gt hnpos⟩
    · rintro ⟨hdn, hn0⟩
      have hd0 : 0 < d := Nat.pos_of_dvd_of_pos hdn hnpos
      have hdle : d ≤ n := Nat.le_of_dvd hnpos hdn
      exact ⟨⟨hd0, hdle.trans hnB⟩, hdn⟩
  rw [← Finset.sum_filter, hfilter]

/-- Pointwise identification with von Mangoldt on the exact octave. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/CenteredLowGCDCoefficients.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/CenteredLowGCDCoefficients.lean#L191).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b246b38d27d941db1626cbedafe5de6451349325` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
