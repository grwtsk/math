# summable_dirichletSummand

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "110bdfb26f239bda5757ddb342f083ee00973ae1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 69,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e7/e74dd467ee1c38dee15ef3825e8ef7de2b927c9f8882b2d9d86b976e6c532c3f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c8ab889b-5226-fce2-529f-0366eb07c8b5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f89cd1cf-26bd-a020-d4d1-526abc5911c1",
  "kind": "lemma",
  "lexical_name": "summable_dirichletSummand",
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
  "slug": "summable-dirichletsummand--5af9b3ed10f31f67038d9289",
  "source": {
    "blob": "110bdfb26f239bda5757ddb342f083ee00973ae1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 75,
    "line": 69,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletLSeries/Variante74dd467ee1c38dee15ef3825e8ef7de2b927c9f8882b2d9d86b976e6c532c3f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5af9b3ed10f31f67038d92897e0161a115508d606070773481888d239dc28d36",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletLSeries/Variante74dd467ee1c38dee15ef3825e8ef7de2b927c9f8882b2d9d86b976e6c532c3f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f89cd1cf-26bd-a020-d4d1-526abc5911c1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 69–75.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma summable_dirichletSummand {N : ℕ} (χ : DirichletCharacter ℂ N) (hs : 1 < s.re) :
    Summable (fun n ↦ ‖dirichletSummandHom χ (ne_zero_of_one_lt_re hs) n‖) := by
  simp only [dirichletSummandHom, MonoidWithZeroHom.coe_mk, ZeroHom.coe_mk, norm_mul]
  exact (summable_riemannZetaSummand hs).of_nonneg_of_le (fun _ ↦ by positivity)
    (fun n ↦ mul_le_of_le_one_left (norm_nonneg _) <| χ.norm_le_one n)

open scoped LSeries.notation in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletLSeries/Variante74dd467ee1c38dee15ef3825e8ef7de2b927c9f8882b2d9d86b976e6c532c3f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletLSeries/Variante74dd467ee1c38dee15ef3825e8ef7de2b927c9f8882b2d9d86b976e6c532c3f.lean#L69).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `110bdfb26f239bda5757ddb342f083ee00973ae1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
