# LSeries.hasDerivAt_term

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0b58015c3daa525dc2c2699bf62a1a7b36a95d78",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 41,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e1/e158601c45cbae580560e1573cad01af278227ca5f542a0d47eae5a4a65e90f1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6285c76e-a3a0-9ef7-9f92-5b7bcdb37b15",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:92d928d6-7325-6df5-9c7d-cca3837701b0",
  "kind": "lemma",
  "lexical_name": "LSeries.hasDerivAt_term",
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
  "slug": "lseries-hasderivat-term--561cd48f15ed20ef9bf34357",
  "source": {
    "blob": "0b58015c3daa525dc2c2699bf62a1a7b36a95d78",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 51,
    "line": 41,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Deriv/Variante158601c45cbae580560e1573cad01af278227ca5f542a0d47eae5a4a65e90f1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:561cd48f15ed20ef9bf343572ab972174bc790ae7c22b61fa9d0c13a6625dfdc",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Deriv/Variante158601c45cbae580560e1573cad01af278227ca5f542a0d47eae5a4a65e90f1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:92d928d6-7325-6df5-9c7d-cca3837701b0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 41–51.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma LSeries.hasDerivAt_term (f : ℕ → ℂ) (n : ℕ) (s : ℂ) :
    HasDerivAt (fun z ↦ term f z n) (-(term (logMul f) s n)) s := by
  rcases eq_or_ne n 0 with rfl | hn
  · simp [hasDerivAt_const]
  simp_rw [term_of_ne_zero hn, ← neg_div, ← neg_mul, mul_comm, mul_div_assoc, div_eq_mul_inv,
    ← cpow_neg]
  exact HasDerivAt.const_mul (f n) (by simpa only [mul_comm, ← mul_neg_one (log n), ← mul_assoc]
    using (hasDerivAt_neg' s).const_cpow (Or.inl <| Nat.cast_ne_zero.mpr hn))

/- This lemma proves two things at once, since their proofs are intertwined; we give separate
non-private lemmas below that extract the two statements. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Deriv/Variante158601c45cbae580560e1573cad01af278227ca5f542a0d47eae5a4a65e90f1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Deriv/Variante158601c45cbae580560e1573cad01af278227ca5f542a0d47eae5a4a65e90f1.lean#L41).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0b58015c3daa525dc2c2699bf62a1a7b36a95d78` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
