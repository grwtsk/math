# thetaTail_succ_eq_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:93d16743-b384-2eef-382b-b35963f37210",
  "kind": "theorem",
  "lexical_name": "thetaTail_succ_eq_integral",
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
  "slug": "thetatail-succ-eq-integral--1973bad54205cd0d19a6415d",
  "source": {
    "blob": "67bfeaf8b1a73660ec2503c5d21e1b46e6be2607",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 43,
    "line": 33,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/960e0ebcd37bd458a4c11518c685ba09f6e5c54896bffcd00bbbd2b4c452bde2Ladder/Variantc9c4b4a001f1f1b506c5bd66186cfaf4418683c5861ca902ffe5b17cbf580c22.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1973bad54205cd0d19a6415d66031f9925f4ac7f34e722866aa38dccc266ddc2",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/960e0ebcd37bd458a4c11518c685ba09f6e5c54896bffcd00bbbd2b4c452bde2Ladder/Variantc9c4b4a001f1f1b506c5bd66186cfaf4418683c5861ca902ffe5b17cbf580c22.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:93d16743-b384-2eef-382b-b35963f37210`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 33–43.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem thetaTail_succ_eq_integral (r : ℕ) {t : ℝ} (ht : 0 ≤ t) :
    thetaTail (r + 1) t = ∫ u in Ici t, thetaTail r u := by
  have hi : IntegrableOn (fun u => -thetaTail r u) (Ioi t) :=
    ((thetaTail_integrableOn r).mono_set
      (Ioi_subset_Ici_self.trans (Ici_subset_Ici.mpr ht))).neg
  have h := integral_Ioi_of_hasDerivAt_of_tendsto'
    (fun u _ => hasDerivAt_thetaTail_succ r u) hi (thetaTail_tendsto_atTop (r + 1))
  rw [← integral_Ici_eq_integral_Ioi, integral_neg] at h
  linarith

/-- Parentheses keep an external summand outside the improper set integral. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/960e0ebcd37bd458a4c11518c685ba09f6e5c54896bffcd00bbbd2b4c452bde2Ladder/Variantc9c4b4a001f1f1b506c5bd66186cfaf4418683c5861ca902ffe5b17cbf580c22.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/960e0ebcd37bd458a4c11518c685ba09f6e5c54896bffcd00bbbd2b4c452bde2Ladder/Variantc9c4b4a001f1f1b506c5bd66186cfaf4418683c5861ca902ffe5b17cbf580c22.lean#L33).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `67bfeaf8b1a73660ec2503c5d21e1b46e6be2607` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
