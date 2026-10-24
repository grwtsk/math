# LSeries_injOn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:07abf6ee-963b-0b43-65c8-7de6b2d3dee3",
  "kind": "lemma",
  "lexical_name": "LSeries_injOn",
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
  "slug": "lseries-injon--7169c6eded6782089deda792",
  "source": {
    "blob": "04236be259421119f58d70bdd946fc5dad35b873",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 252,
    "line": 245,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Injectivity/Variante80caac861d00275cddf858f994d9d0c5ad4ecd3aa021a7145ec8e14ae377d72.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7169c6eded6782089deda792507d181f8e11e47ae5e0109bf4237c4ef43e422d",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Injectivity/Variante80caac861d00275cddf858f994d9d0c5ad4ecd3aa021a7145ec8e14ae377d72.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:07abf6ee-963b-0b43-65c8-7de6b2d3dee3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 245–252.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma LSeries_injOn : Set.InjOn LSeries {f | f 0 = 0 ∧ abscissaOfAbsConv f < ⊤} := by
  intro f hf g hg h
  simp only [Set.mem_setOf] at hf hg
  replace h := (LSeries_eq_iff_of_abscissaOfAbsConv_lt_top hf.2 hg.2).mp h
  ext1 n
  cases n with
  | zero => exact hf.1.trans hg.1.symm
  | succ n => exact h _ n.zero_ne_add_one.symm
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Injectivity/Variante80caac861d00275cddf858f994d9d0c5ad4ecd3aa021a7145ec8e14ae377d72.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Injectivity/Variante80caac861d00275cddf858f994d9d0c5ad4ecd3aa021a7145ec8e14ae377d72.lean#L245).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `04236be259421119f58d70bdd946fc5dad35b873` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
