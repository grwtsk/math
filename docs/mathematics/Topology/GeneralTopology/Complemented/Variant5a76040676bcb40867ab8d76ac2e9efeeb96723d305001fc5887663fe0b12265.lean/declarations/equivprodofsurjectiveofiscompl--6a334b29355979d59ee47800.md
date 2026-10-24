# equivProdOfSurjectiveOfIsCompl

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c188d43e727649b8e7f43a27d1fd2b2ff90812f30dfff48d54b158f7c315e9f1",
  "kind": "def",
  "lexical_name": "equivProdOfSurjectiveOfIsCompl",
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
  "slug": "equivprodofsurjectiveofiscompl--6a334b29355979d59ee47800",
  "source": {
    "blob": "308622994a2ef674d3eac82ad404878aefa969da",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 64,
    "line": 59,
    "path": "GRWTSK/Topology/GeneralTopology/Complemented/Variant5a76040676bcb40867ab8d76ac2e9efeeb96723d305001fc5887663fe0b12265.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6a334b29355979d59ee47800ec0456046ce376690fe18c2adfa6e4804241505c",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Complemented/Variant5a76040676bcb40867ab8d76ac2e9efeeb96723d305001fc5887663fe0b12265.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c188d43e727649b8e7f43a27d1fd2b2ff90812f30dfff48d54b158f7c315e9f1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 59–64.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
nonrec def equivProdOfSurjectiveOfIsCompl (f : E →L[𝕜] F) (g : E →L[𝕜] G) (hf : range f = ⊤)
    (hg : range g = ⊤) (hfg : IsCompl (ker f) (ker g)) : E ≃L[𝕜] F × G :=
  (f.equivProdOfSurjectiveOfIsCompl (g : E →ₗ[𝕜] G) hf hg hfg).toContinuousLinearEquivOfContinuous
    (f.continuous.prodMk g.continuous)

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Complemented/Variant5a76040676bcb40867ab8d76ac2e9efeeb96723d305001fc5887663fe0b12265.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Complemented/Variant5a76040676bcb40867ab8d76ac2e9efeeb96723d305001fc5887663fe0b12265.lean#L59).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `308622994a2ef674d3eac82ad404878aefa969da` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
