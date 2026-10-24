# eapprox_lt_top

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "16c590b244b21ba209f0cf718545f70579cfcada",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 887,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6a/6adbaf4fccf531b772d31711e60d68ee4cc6e2ea79d31b09b8bbed70b61feaf8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:79cf4066-d483-df8b-e6d5-5b0c8409dde9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1fbb169f-f5d3-a780-d8f6-326ae2520244",
  "kind": "theorem",
  "lexical_name": "eapprox_lt_top",
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
  "slug": "eapprox-lt-top--e8a218e1ee263dca02c9f8eb",
  "source": {
    "blob": "16c590b244b21ba209f0cf718545f70579cfcada",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 901,
    "line": 887,
    "path": "GRWTSK/Analysis/MeasureTheory/SimpleFunc/Variant6adbaf4fccf531b772d31711e60d68ee4cc6e2ea79d31b09b8bbed70b61feaf8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e8a218e1ee263dca02c9f8ebad5e8cca87f70891b0d792b85f572320560d8d1d",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/SimpleFunc/Variant6adbaf4fccf531b772d31711e60d68ee4cc6e2ea79d31b09b8bbed70b61feaf8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1fbb169f-f5d3-a780-d8f6-326ae2520244`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 887–901.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eapprox_lt_top (f : α → ℝ≥0∞) (n : ℕ) (a : α) : eapprox f n a < ∞ := by
  simp only [eapprox, approx, finset_sup_apply, Finset.mem_range, ENNReal.bot_eq_zero, restrict]
  rw [Finset.sup_lt_iff (α := ℝ≥0∞) WithTop.zero_lt_top]
  intro b _
  split_ifs
  · simp only [coe_zero, coe_piecewise, piecewise_eq_indicator, coe_const]
    calc
      { a : α | ennrealRatEmbed b ≤ f a }.indicator (fun _ => ennrealRatEmbed b) a ≤
          ennrealRatEmbed b :=
        indicator_le_self _ _ a
      _ < ⊤ := ENNReal.coe_lt_top
  · exact WithTop.zero_lt_top
#align measure_theory.simple_func.eapprox_lt_top MeasureTheory.SimpleFunc.eapprox_lt_top

@[mono]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/SimpleFunc/Variant6adbaf4fccf531b772d31711e60d68ee4cc6e2ea79d31b09b8bbed70b61feaf8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/SimpleFunc/Variant6adbaf4fccf531b772d31711e60d68ee4cc6e2ea79d31b09b8bbed70b61feaf8.lean#L887).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `16c590b244b21ba209f0cf718545f70579cfcada` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
