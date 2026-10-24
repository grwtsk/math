# pow_bound_le_Gb_pow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3c3f75c8-f23b-bc17-bcc6-22154a9002b6",
  "kind": "lemma",
  "lexical_name": "pow_bound_le_Gb_pow",
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
  "slug": "pow-bound-le-gb-pow--c73ec8a7c1ebd1444986b2cd",
  "source": {
    "blob": "3f4bca101844d3aaa2a246e1f56cee795701bb2e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 347,
    "line": 339,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/NonSquarefree/Varianta1966d3def24ce21d9459c23a396301b24c71906cd33c979d322f873e2a10f1f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c73ec8a7c1ebd1444986b2cd4dafc61b142887c40583e20be0ba56723534fa99",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/NonSquarefree/Varianta1966d3def24ce21d9459c23a396301b24c71906cd33c979d322f873e2a10f1f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3c3f75c8-f23b-bc17-bcc6-22154a9002b6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 339–347.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma pow_bound_le_Gb_pow {m : ℕ} {u : ℝ} (hu : 0 ≤ u) :
    (u + m * KM) ^ m / m.factorial ≤ Gb m u ^ m := by
  have h1 : (u + m * KM) ^ m / m.factorial ≤ (u + m * KM) ^ m :=
    div_le_self (pow_nonneg (by nlinarith [KM_nonneg, (Nat.cast_nonneg m : (0:ℝ) ≤ m)]) m)
      (by exact_mod_cast Nat.one_le_iff_ne_zero.mpr (Nat.factorial_ne_zero m))
  refine h1.trans (pow_le_pow_left₀ (by nlinarith [KM_nonneg, (Nat.cast_nonneg m : (0:ℝ) ≤ m)]) ?_ m)
  unfold Gb; nlinarith [KM_nonneg]

/-- **D_{m+1}(p,u) ≤ (m+1)·(2 log p/p)·Gb m u ^ m.** -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/NonSquarefree/Varianta1966d3def24ce21d9459c23a396301b24c71906cd33c979d322f873e2a10f1f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/NonSquarefree/Varianta1966d3def24ce21d9459c23a396301b24c71906cd33c979d322f873e2a10f1f.lean#L339).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3f4bca101844d3aaa2a246e1f56cee795701bb2e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
