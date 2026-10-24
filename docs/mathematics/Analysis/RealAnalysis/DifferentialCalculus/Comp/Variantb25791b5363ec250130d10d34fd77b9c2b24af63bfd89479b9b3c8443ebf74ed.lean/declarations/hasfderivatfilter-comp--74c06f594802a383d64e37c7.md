# HasFDerivAtFilter.comp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d7dee1ff3320db9442853106989cda47b2c0a221",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 49,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b2/b25791b5363ec250130d10d34fd77b9c2b24af63bfd89479b9b3c8443ebf74ed.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:947f357d-7b08-d870-190c-109dc1eec61c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:22699b00-acca-add3-89e0-9b2ce5876278",
  "kind": "theorem",
  "lexical_name": "HasFDerivAtFilter.comp",
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
  "slug": "hasfderivatfilter-comp--74c06f594802a383d64e37c7",
  "source": {
    "blob": "d7dee1ff3320db9442853106989cda47b2c0a221",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 69,
    "line": 49,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Comp/Variantb25791b5363ec250130d10d34fd77b9c2b24af63bfd89479b9b3c8443ebf74ed.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:74c06f594802a383d64e37c7d8026d98bdec8e564c6120a8080115b1e34ce58a",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Comp/Variantb25791b5363ec250130d10d34fd77b9c2b24af63bfd89479b9b3c8443ebf74ed.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:22699b00-acca-add3-89e0-9b2ce5876278`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 49–69.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem HasFDerivAtFilter.comp {g : F → G} {g' : F →L[𝕜] G} {L' : Filter (F × F)}
    (hg : HasFDerivAtFilter g g' L') (hf : HasFDerivAtFilter f f' L)
    (hL : Tendsto (Prod.map f f) L L') :
    HasFDerivAtFilter (g ∘ f) (g' ∘L f') L := by
  -- This proof can be golfed a lot. However, it should be left this way for readability.
  refine .of_isLittleOTVS <| calc
    (fun p ↦ (g ∘ f) p.1 - (g ∘ f) p.2 - (g' ∘L f') (p.1 - p.2))
      = fun p ↦ (g (f p.1) - g (f p.2) - g' (f p.1 - f p.2)) +
          g' (f p.1 - f p.2 - f' (p.1 - p.2)) := by
      ext; simp
    _ =o[𝕜; L] (fun p ↦ p.1 - p.2) := .add ?Hg ?Hf
  case Hg => calc (fun p ↦ g (f p.1) - g (f p.2) - g' (f p.1 - f p.2))
    _ =o[𝕜; L] (fun p ↦ f p.1 - f p.2) :=
      hg.isLittleOTVS.comp_tendsto hL
    _ =O[𝕜; L] (fun p ↦ p.1 - p.2) := hf.isBigOTVS_sub
  case Hf => calc (fun p ↦ g' (f p.1 - f p.2 - f' (p.1 - p.2)))
    _ =O[𝕜; L] (fun p ↦ f p.1 - f p.2 - f' (p.1 - p.2)) := g'.isBigOTVS_comp
    _ =o[𝕜; L] (fun p ↦ p.1 - p.2) := hf.isLittleOTVS

/-- The chain rule for derivatives in the sense of strict differentiability. -/
@[fun_prop]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Comp/Variantb25791b5363ec250130d10d34fd77b9c2b24af63bfd89479b9b3c8443ebf74ed.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Comp/Variantb25791b5363ec250130d10d34fd77b9c2b24af63bfd89479b9b3c8443ebf74ed.lean#L49).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d7dee1ff3320db9442853106989cda47b2c0a221` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
