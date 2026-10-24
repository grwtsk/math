# ContinuousLinearMap.uncurryMid

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:38d3b7a968d9aa8c3173cf13b0b8cd860703f436a11255227b43bb3e0fa1be69",
  "kind": "def",
  "lexical_name": "ContinuousLinearMap.uncurryMid",
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
  "slug": "continuouslinearmap-uncurrymid--360657d1ce3ff51f55d92903",
  "source": {
    "blob": "ffa2874e81ead4265410d862f7fa58d1d94fb895",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 337,
    "line": 329,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/Curry/Variantbcf4bb1b52c7e31d7f03591c08170d6ca4b590bcd307b5534fe950e29f846da1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:360657d1ce3ff51f55d9290313c7d042c95d1c0a161afb5afb0fc85434278793",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/Curry/Variantbcf4bb1b52c7e31d7f03591c08170d6ca4b590bcd307b5534fe950e29f846da1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:38d3b7a968d9aa8c3173cf13b0b8cd860703f436a11255227b43bb3e0fa1be69`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 329–337.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ContinuousLinearMap.uncurryMid (p : Fin (n + 1))
    (f : Ei p →L[𝕜] ContinuousMultilinearMap 𝕜 (fun i ↦ Ei (p.succAbove i)) G) :
    ContinuousMultilinearMap 𝕜 Ei G :=
  (ContinuousMultilinearMap.toMultilinearMapLinear ∘ₗ f.toLinearMap).uncurryMid p
    |>.mkContinuous ‖f‖ fun m => by exact ContinuousLinearMap.norm_map_removeNth_le f m

/-- Interpret a continuous multilinear map in `n + 1` variables
as a continuous linear map in `p`th variable
with values in the continuous multilinear maps in the other variables. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/Curry/Variantbcf4bb1b52c7e31d7f03591c08170d6ca4b590bcd307b5534fe950e29f846da1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/Curry/Variantbcf4bb1b52c7e31d7f03591c08170d6ca4b590bcd307b5534fe950e29f846da1.lean#L329).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ffa2874e81ead4265410d862f7fa58d1d94fb895` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
