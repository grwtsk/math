# _root_.GRWTSK.CombinatoricsAndDiscreteMathematics.ProdApplyDite.Variant779ebdd8b88d494a840fead5fb43ab2143e2121d4df7502de63a20d049c7b763.Fintype.prod_eq_mul_prod_compl

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:06b73f60-6288-d9ea-1906-c9047d3750ce",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.CombinatoricsAndDiscreteMathematics.ProdApplyDite.Variant779ebdd8b88d494a840fead5fb43ab2143e2121d4df7502de63a20d049c7b763.Fintype.prod_eq_mul_prod_compl",
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
  "slug": "root-grwtsk-combinatoricsanddiscretemathematics-prodapplydite-variant779--55cd0e10018c0f90cd0f553b",
  "source": {
    "blob": "b74e70a8df5623b0807138d2bc77ba3fa1c41e81",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 234,
    "line": 230,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Piecewise/Variantfa176f28198cad44ffdf65834d72c94fc374bd540b69cc9881c95eb1b7c2f749.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:55cd0e10018c0f90cd0f553b86a6b296f07a382339b8e2b96637c57c5741c2de",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Piecewise/Variantfa176f28198cad44ffdf65834d72c94fc374bd540b69cc9881c95eb1b7c2f749.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:06b73f60-6288-d9ea-1906-c9047d3750ce`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 230–234.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.CombinatoricsAndDiscreteMathematics.ProdApplyDite.Variant779ebdd8b88d494a840fead5fb43ab2143e2121d4df7502de63a20d049c7b763.Fintype.prod_eq_mul_prod_compl [DecidableEq ι] [Fintype ι] (a : ι) (f : ι → M) :
    ∏ i, f i = f a * ∏ i ∈ {a}ᶜ, f i :=
  prod_eq_mul_prod_sdiff_singleton_of_mem (mem_univ a) f

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Piecewise/Variantfa176f28198cad44ffdf65834d72c94fc374bd540b69cc9881c95eb1b7c2f749.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Piecewise/Variantfa176f28198cad44ffdf65834d72c94fc374bd540b69cc9881c95eb1b7c2f749.lean#L230).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b74e70a8df5623b0807138d2bc77ba3fa1c41e81` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
