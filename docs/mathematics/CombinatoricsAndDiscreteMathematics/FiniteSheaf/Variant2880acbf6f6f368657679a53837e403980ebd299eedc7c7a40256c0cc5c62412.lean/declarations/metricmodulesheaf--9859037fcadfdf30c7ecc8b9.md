# MetricModuleSheaf

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a34c581655698b7098130feb5e18ac290238fffee61e146bee2bf11f144b8540",
  "kind": "structure",
  "lexical_name": "MetricModuleSheaf",
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
  "slug": "metricmodulesheaf--9859037fcadfdf30c7ecc8b9",
  "source": {
    "blob": "9ec2824b58974ea424fe1ee1a29b15558daa8e03",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 291,
    "line": 251,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/FiniteSheaf/Variant2880acbf6f6f368657679a53837e403980ebd299eedc7c7a40256c0cc5c62412.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9859037fcadfdf30c7ecc8b976dd7a88285f19e31e77eb5b39b4303fb2e9c775",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/FiniteSheaf/Variant2880acbf6f6f368657679a53837e403980ebd299eedc7c7a40256c0cc5c62412.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a34c581655698b7098130feb5e18ac290238fffee61e146bee2bf11f144b8540`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 251–291.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure MetricModuleSheaf (site : CertifiedSite) where
  carrier : SheafData.{u, w} site
  distance :
    ∀ object : site.Object,
      carrier.Section object →
      carrier.Section object →
      ℝ
  distance_nonnegative :
    ∀ (object : site.Object)
      (left right : carrier.Section object),
      0 ≤ distance object left right
  distance_self :
    ∀ (object : site.Object)
      (value : carrier.Section object),
      distance object value value = 0
  distance_symmetric :
    ∀ (object : site.Object)
      (left right : carrier.Section object),
      distance object left right =
        distance object right left
  distance_separates :
    ∀ (object : site.Object)
      (left right : carrier.Section object),
      distance object left right = 0 →
        left = right
  triangle :
    ∀ (object : site.Object)
      (left middle right : carrier.Section object),
      (distance object left right : ℝ) ≤
        ((distance object left middle : ℝ) +
          (distance object middle right : ℝ) : ℝ)
  restrict_nonexpansive :
    ∀ {small large : site.Object}
      (small_le_large : small ≤ large)
      (left right : carrier.Section large),
      distance small
          (carrier.restrict small_le_large left)
          (carrier.restrict small_le_large right) ≤
        distance large left right

/-- Exact and relative tensor factors remain independently restricted. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/FiniteSheaf/Variant2880acbf6f6f368657679a53837e403980ebd299eedc7c7a40256c0cc5c62412.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/FiniteSheaf/Variant2880acbf6f6f368657679a53837e403980ebd299eedc7c7a40256c0cc5c62412.lean#L251).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9ec2824b58974ea424fe1ee1a29b15558daa8e03` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
