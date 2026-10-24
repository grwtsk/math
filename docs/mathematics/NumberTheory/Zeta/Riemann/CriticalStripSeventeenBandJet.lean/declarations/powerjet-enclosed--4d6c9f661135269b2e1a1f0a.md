# powerJet_enclosed

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dba16991-c321-b90b-7d55-407454b1970b",
  "kind": "lemma",
  "lexical_name": "powerJet_enclosed",
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
  "slug": "powerjet-enclosed--4d6c9f661135269b2e1a1f0a",
  "source": {
    "blob": "6ab50acdb550c186aabacf0aea3ecd4032280111",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 101,
    "line": 84,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripSeventeenBandJet.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4d6c9f661135269b2e1a1f0a5706b4c3980b4e6d94f628f1e6c1a65e19452c00",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CriticalStripSeventeenBandJet.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dba16991-c321-b90b-7d55-407454b1970b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 84–101.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma powerJet_enclosed (i : Fin 8) {s : ℂ}
    (hd : ‖s-center‖ ≤ (5/8 : ℝ)) (hl : -(s-center).re ≤ 1) :
    ‖(((i.val+1 : ℕ) : ℂ))^(-s)-powerJet i s‖ ≤ powerError i := by
  by_cases hi : i=0
  · subst i
    simp [powerJet,CenteredPowerJet.value,logCenter,CutoffEightJet.logCenter,sample,powerError,complexExpTaylor]
  · have hk : (1 : ℝ) ≤ ((i.val+1 : ℕ) : ℝ) := by positivity
    have hk8 : ((i.val+1 : ℕ) : ℝ) ≤ 8 := by exact_mod_cast (show i.val+1 ≤ 8 by omega)
    have h := CenteredPowerJet.encloses hk hk8 (by norm_num [center])
      (by norm_num [logRadius,CutoffEightJet.logRadius]) (log_enclosed i)
      (by norm_num [sampleRadius,CutoffEightJet.sampleRadius]) (sample_enclosed i) hd hl
      (by norm_num [logRadius,CutoffEightJet.logRadius])
      (by fin_cases i <;> norm_num [logCenter,CutoffEightJet.logCenter])
      (by fin_cases i <;> norm_num [logCenter,CutoffEightJet.logCenter,logRadius,CutoffEightJet.logRadius,complexExpTaylorRadius])
    simpa only [powerJet,powerError,if_neg hi, Nat.cast_add,Nat.cast_one,
      Complex.ofReal_natCast] using h

/-- The inherited coefficient, with all eight-source endpoint corrections. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CriticalStripSeventeenBandJet.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripSeventeenBandJet.lean#L84).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6ab50acdb550c186aabacf0aea3ecd4032280111` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
