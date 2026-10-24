# Bundle.ContinuousLinearMap.vectorBundle

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cafc4842b5a3d8e003ae418a7c2947d7246ed1e6e315a13ecfcd3d075f3482ce",
  "kind": "instance",
  "lexical_name": "Bundle.ContinuousLinearMap.vectorBundle",
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
  "slug": "bundle-continuouslinearmap-vectorbundle--87299bb0c2cecb700938f0b4",
  "source": {
    "blob": "ef5cdabdd8e5c441c2273fa402d601c61ddee8aa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 247,
    "line": 239,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/Hom/Variant3515c26d899a858390dcf7f84631c749e255be9fcca5ae419db7a6707a255c8e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:87299bb0c2cecb700938f0b401d02a61e2842f6e65c8a2ed43ba336d187af79d",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/Hom/Variant3515c26d899a858390dcf7f84631c749e255be9fcca5ae419db7a6707a255c8e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:cafc4842b5a3d8e003ae418a7c2947d7246ed1e6e315a13ecfcd3d075f3482ce`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 239–247.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance Bundle.ContinuousLinearMap.vectorBundle :
    VectorBundle 𝕜₂ (F₁ →SL[σ] F₂) (Bundle.ContinuousLinearMap σ E₁ E₂) :=
  (Bundle.ContinuousLinearMap.vectorPrebundle σ F₁ E₁ F₂ E₂).toVectorBundle

variable [he₁ : MemTrivializationAtlas e₁] [he₂ : MemTrivializationAtlas e₂] {F₁ E₁ F₂ E₂}

/-- Given trivializations `e₁`, `e₂` in the atlas for vector bundles `E₁`, `E₂` over a base `B`,
the induced trivialization for the continuous `σ`-semilinear maps from `E₁` to `E₂`,
whose base set is `e₁.baseSet ∩ e₂.baseSet`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/Hom/Variant3515c26d899a858390dcf7f84631c749e255be9fcca5ae419db7a6707a255c8e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/Hom/Variant3515c26d899a858390dcf7f84631c749e255be9fcca5ae419db7a6707a255c8e.lean#L239).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ef5cdabdd8e5c441c2273fa402d601c61ddee8aa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
