# isBigO_atTop_zetaKernel₂

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "840977beb5e3eaf65ad76ec0ec0d4647db7d0964",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 230,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/81/81675cbfaa7b2813b8293f994ba7550da9594e446432975317058094ba06a476.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ce72fbbb-bcef-ed5c-39b9-575db5787cd6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:045e5f00-5625-5f8e-cc44-b9a13c806d18",
  "kind": "theorem",
  "lexical_name": "isBigO_atTop_zetaKernel₂",
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
  "slug": "isbigo-attop-zetakernel--0dcd8bd555599a5f4ebbd0dc",
  "source": {
    "blob": "840977beb5e3eaf65ad76ec0ec0d4647db7d0964",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 239,
    "line": 230,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaFunction/Variant81675cbfaa7b2813b8293f994ba7550da9594e446432975317058094ba06a476.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0dcd8bd555599a5f4ebbd0dc707a651cbbffe3a8532a67bcf067c48fe5c84bb0",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaFunction/Variant81675cbfaa7b2813b8293f994ba7550da9594e446432975317058094ba06a476.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:045e5f00-5625-5f8e-cc44-b9a13c806d18`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 230–239.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isBigO_atTop_zetaKernel₂ : IsBigO atTop zetaKernel₂ fun t => exp (-π * t) := by
  refine'
    (eventuallyEq_of_mem (Ioi_mem_atTop (1 : ℝ)) fun t ht => _).trans_isBigO
      isBigO_atTop_zetaKernel₁
  rw [zetaKernel₂, Pi.add_apply, indicator_of_not_mem (not_mem_Ioc_of_gt (Set.mem_Iio.mp ht)),
    add_zero]
set_option linter.uppercaseLean3 false in
#align is_O_at_top_zeta_kernel₂ isBigO_atTop_zetaKernel₂

/-- Precise but awkward-to-use bound for `zetaKernel₂` for `t → 0`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaFunction/Variant81675cbfaa7b2813b8293f994ba7550da9594e446432975317058094ba06a476.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaFunction/Variant81675cbfaa7b2813b8293f994ba7550da9594e446432975317058094ba06a476.lean#L230).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `840977beb5e3eaf65ad76ec0ec0d4647db7d0964` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
