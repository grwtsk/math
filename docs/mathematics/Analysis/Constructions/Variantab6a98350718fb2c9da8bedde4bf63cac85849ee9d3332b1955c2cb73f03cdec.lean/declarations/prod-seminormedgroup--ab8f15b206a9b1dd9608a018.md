# Prod.seminormedGroup

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:da7e3602a1c34da9dcdfdf74802a951930960a522f233736988f99adb0185394",
  "kind": "instance",
  "lexical_name": "Prod.seminormedGroup",
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
  "slug": "prod-seminormedgroup--ab8f15b206a9b1dd9608a018",
  "source": {
    "blob": "e08d2c5cdfc4dfd96588659309660b650b539782",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 260,
    "line": 254,
    "path": "GRWTSK/Analysis/Constructions/Variantab6a98350718fb2c9da8bedde4bf63cac85849ee9d3332b1955c2cb73f03cdec.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ab8f15b206a9b1dd9608a0182d949bb941ffabf269c806a55de9acd6cbd3f7d5",
  "verification": {
    "reference": "docs/verification/Analysis/Constructions/Variantab6a98350718fb2c9da8bedde4bf63cac85849ee9d3332b1955c2cb73f03cdec.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:da7e3602a1c34da9dcdfdf74802a951930960a522f233736988f99adb0185394`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 254–260.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance Prod.seminormedGroup : SeminormedGroup (E × F) where
  dist_eq x y := by simp [Prod.norm_def, Prod.dist_eq, dist_eq_norm_inv_mul]

/-- Multiplicative version of `Prod.nnnorm_def`.
Earlier, this name was used for the additive version. -/
@[to_additive Prod.nnnorm_def /-- Additive version of `Prod.nnnorm_def'`.
Earlier, this name was used for the multiplicative version. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/Constructions/Variantab6a98350718fb2c9da8bedde4bf63cac85849ee9d3332b1955c2cb73f03cdec.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Constructions/Variantab6a98350718fb2c9da8bedde4bf63cac85849ee9d3332b1955c2cb73f03cdec.lean#L254).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e08d2c5cdfc4dfd96588659309660b650b539782` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
