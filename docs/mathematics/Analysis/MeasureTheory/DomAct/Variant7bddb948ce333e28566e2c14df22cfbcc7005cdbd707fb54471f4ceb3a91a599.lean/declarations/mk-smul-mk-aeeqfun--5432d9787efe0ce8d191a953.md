# mk_smul_mk_aeeqFun

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1637e6be-25ac-3c9a-5cb5-dac9a4a2df34",
  "kind": "theorem",
  "lexical_name": "mk_smul_mk_aeeqFun",
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
  "slug": "mk-smul-mk-aeeqfun--5432d9787efe0ce8d191a953",
  "source": {
    "blob": "bdedeb3f07c4d0bcd948ea9e0683af87bd43e701",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 60,
    "line": 55,
    "path": "GRWTSK/Analysis/MeasureTheory/DomAct/Variant7bddb948ce333e28566e2c14df22cfbcc7005cdbd707fb54471f4ceb3a91a599.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5432d9787efe0ce8d191a953501fcaaefc54e2c2627d0c2482cea796bc1330e4",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/DomAct/Variant7bddb948ce333e28566e2c14df22cfbcc7005cdbd707fb54471f4ceb3a91a599.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1637e6be-25ac-3c9a-5cb5-dac9a4a2df34`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–60.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mk_smul_mk_aeeqFun (c : M) (f : α → β) (hf : AEStronglyMeasurable f μ) :
    mk c • AEEqFun.mk f hf = AEEqFun.mk (f <| c • ·)
      (hf.comp_measurePreserving (measurePreserving_smul _ _)) :=
  rfl

@[to_additive (attr := simp)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/DomAct/Variant7bddb948ce333e28566e2c14df22cfbcc7005cdbd707fb54471f4ceb3a91a599.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/DomAct/Variant7bddb948ce333e28566e2c14df22cfbcc7005cdbd707fb54471f4ceb3a91a599.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bdedeb3f07c4d0bcd948ea9e0683af87bd43e701` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
