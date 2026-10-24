# LFunction_ne_zero_of_one_le_re

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cc01c3a3-fe39-f00c-069e-a29e5928ba34",
  "kind": "theorem",
  "lexical_name": "LFunction_ne_zero_of_one_le_re",
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
  "slug": "lfunction-ne-zero-of-one-le-re--8e4e8bec09c8bef796ea9778",
  "source": {
    "blob": "cbae5f92f156ca38b2415dd80ee90395416d9ac0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 415,
    "line": 408,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Nonvanishing/Variante1bda672beab9befaf8dfc0a6feb4308b4f1e02734a7d2217e473491a61ad166.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8e4e8bec09c8bef796ea97787a51aded4e5eefafa2b1d7ce41b4c1354d763ee9",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Nonvanishing/Variante1bda672beab9befaf8dfc0a6feb4308b4f1e02734a7d2217e473491a61ad166.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cc01c3a3-fe39-f00c-069e-a29e5928ba34`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 408–415.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem LFunction_ne_zero_of_one_le_re ⦃s : ℂ⦄ (hχs : χ ≠ 1 ∨ s ≠ 1) (hs : 1 ≤ s.re) :
    LFunction χ s ≠ 0 :=
  hs.eq_or_lt.casesOn (fun hs ↦ LFunction_ne_zero_of_re_eq_one χ hs.symm hχs)
    fun hs ↦ LFunction_eq_LSeries χ hs ▸ LSeries_ne_zero_of_one_lt_re χ hs

-- Interesting special case:
variable {χ} in
/-- The L-function of a nontrivial Dirichlet character does not vanish at `s = 1`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Nonvanishing/Variante1bda672beab9befaf8dfc0a6feb4308b4f1e02734a7d2217e473491a61ad166.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Nonvanishing/Variante1bda672beab9befaf8dfc0a6feb4308b4f1e02734a7d2217e473491a61ad166.lean#L408).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cbae5f92f156ca38b2415dd80ee90395416d9ac0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
