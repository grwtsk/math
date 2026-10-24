# _root_.GRWTSK.Algebra.UniversalAlgebra.MinTropical.Variantdf2515d5a91d8dba1ceb8a06831d1417ce81dd9149df57d95affc6064944ec36.MaxTropical.instLinearOrder

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bb4cdf88d9c675edda467c5ba1d694835da7556797fe3a873e79ef719a697731",
  "kind": "instance",
  "lexical_name": "_root_.GRWTSK.Algebra.UniversalAlgebra.MinTropical.Variantdf2515d5a91d8dba1ceb8a06831d1417ce81dd9149df57d95affc6064944ec36.MaxTropical.instLinearOrder",
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
  "slug": "root-grwtsk-algebra-universalalgebra-mintropical-variantdf2515d5a91d8dba--a46abdbbebbf153df5c9c08c",
  "source": {
    "blob": "6a201ee57b43b4cdcfa22c185270e887f0622511",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 323,
    "line": 311,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Basic/Variant87945e31a34be284942fcbbc2fb056a9c56c041aad29af9479bd50bb13eaa924.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a46abdbbebbf153df5c9c08cc895891dcf8066ee79cff011f2f0aca856f249eb",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Basic/Variant87945e31a34be284942fcbbc2fb056a9c56c041aad29af9479bd50bb13eaa924.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bb4cdf88d9c675edda467c5ba1d694835da7556797fe3a873e79ef719a697731`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 311–323.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance _root_.GRWTSK.Algebra.UniversalAlgebra.MinTropical.Variantdf2515d5a91d8dba1ceb8a06831d1417ce81dd9149df57d95affc6064944ec36.MaxTropical.instLinearOrder : LinearOrder (MaxTropical R) where
  le_total := fun a b => le_total (MaxTropical.untrop a) (MaxTropical.untrop b)
  toDecidableLE := MaxTropical.instDecidableLE
  toDecidableEq := MaxTropical.instDecidableEq
  toDecidableLT := MaxTropical.instDecidableLT
  min := fun a b => MaxTropical.trop (min (MaxTropical.untrop a) (MaxTropical.untrop b))
  min_def := fun a b => MaxTropical.untrop_injective (by
    simp only [min_def, MaxTropical.untrop_le_iff, MaxTropical.untrop_trop]; split_ifs <;> simp)
  max := (· + ·)
  max_def := fun a b => MaxTropical.untrop_injective (by
    simp only [MaxTropical.untrop_add, max_def, MaxTropical.untrop_le_iff]; split_ifs <;> simp)

@[to_dual (attr := simp)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Basic/Variant87945e31a34be284942fcbbc2fb056a9c56c041aad29af9479bd50bb13eaa924.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Basic/Variant87945e31a34be284942fcbbc2fb056a9c56c041aad29af9479bd50bb13eaa924.lean#L311).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6a201ee57b43b4cdcfa22c185270e887f0622511` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
