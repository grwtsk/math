# hasFDerivAt_finsetProd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:da21eced-adc2-2cc0-2183-eefed1f9d77a",
  "kind": "theorem",
  "lexical_name": "hasFDerivAt_finsetProd",
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
  "slug": "hasfderivat-finsetprod--a7f8a6c1214a162de8b5056a",
  "source": {
    "blob": "f462b36ffd81d779f60786a316d66333df2a3db1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 504,
    "line": 495,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Mul/Variant8fbd564afe60fabc1c82d09c01c464315b8a98c2ecced5691ceb743f94fd64a4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a7f8a6c1214a162de8b5056a7d4a9ebf4e0efa4d43d5c98e8749beaa6ef0833c",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Mul/Variant8fbd564afe60fabc1c82d09c01c464315b8a98c2ecced5691ceb743f94fd64a4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:da21eced-adc2-2cc0-2183-eefed1f9d77a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 495–504.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hasFDerivAt_finsetProd [DecidableEq ι] [Finite ι] {x : ι → 𝔸'} :
    HasFDerivAt (𝕜 := 𝕜) (∏ i ∈ u, · i) (∑ i ∈ u, (∏ j ∈ u.erase i, x j) • proj i) x :=
  have := Fintype.ofFinite ι
  hasStrictFDerivAt_finsetProd.hasFDerivAt

@[deprecated (since := "2026-04-08")] alias hasFDerivAt_finset_prod := hasFDerivAt_finsetProd

section Comp

@[fun_prop]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Mul/Variant8fbd564afe60fabc1c82d09c01c464315b8a98c2ecced5691ceb743f94fd64a4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Mul/Variant8fbd564afe60fabc1c82d09c01c464315b8a98c2ecced5691ceb743f94fd64a4.lean#L495).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f462b36ffd81d779f60786a316d66333df2a3db1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
