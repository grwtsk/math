# toLinearMap_inclusionInDoubleDualWeak

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:505f4237-b629-9fa8-ac21-69c30bd5c8aa",
  "kind": "lemma",
  "lexical_name": "toLinearMap_inclusionInDoubleDualWeak",
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
  "slug": "tolinearmap-inclusionindoubledualweak--e64b4240e4dbf2fecaa5fcc7",
  "source": {
    "blob": "954f1c4a54d2874dd1e485e71607fdc13b59a6a2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 139,
    "line": 131,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/DoubleDual/Variant36729f817d02696f55c749114d80eff3d0d3db6474beebe56ef069a9bb2597fd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e64b4240e4dbf2fecaa5fcc7c6d32611ffdbb164c39e2f042fa312ed02d9d5a9",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/DoubleDual/Variant36729f817d02696f55c749114d80eff3d0d3db6474beebe56ef069a9bb2597fd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:505f4237-b629-9fa8-ac21-69c30bd5c8aa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 131–139.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma toLinearMap_inclusionInDoubleDualWeak :
    (inclusionInDoubleDualWeak 𝕜 X).toLinearMap =
      (toWeakSpace 𝕜 X).arrowCongr StrongDual.toWeakDual (inclusionInDoubleDual 𝕜 X).toLinearMap :=
  rfl

variable (𝕜 : Type*) [RCLike 𝕜] (X : Type*) [NormedAddCommGroup X] [NormedSpace 𝕜 X]

/-- `inclusionInDoubleDualWeak` is a topological embedding from the weak topology to the weak-star
topology. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/DoubleDual/Variant36729f817d02696f55c749114d80eff3d0d3db6474beebe56ef069a9bb2597fd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/DoubleDual/Variant36729f817d02696f55c749114d80eff3d0d3db6474beebe56ef069a9bb2597fd.lean#L131).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `954f1c4a54d2874dd1e485e71607fdc13b59a6a2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
