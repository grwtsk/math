# compContinuousLinearMapMultilinear

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:93c875c5703f4e8d952f8ec76519c6dc6dcda8bda99545428822341bd26050d9",
  "kind": "def",
  "lexical_name": "compContinuousLinearMapMultilinear",
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
  "slug": "compcontinuouslinearmapmultilinear--1be00098d7a74e06ec79a6eb",
  "source": {
    "blob": "529023ae817036f44e1316a3c04bf8f549936e6c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1121,
    "line": 1101,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variantda569ac52efd30d2697dca3fe6abf17412a76517583aaef07cb5f7f7dab44581.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1be00098d7a74e06ec79a6eb7043ca9350ebbf72cd5378186540a40db3947cac",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variantda569ac52efd30d2697dca3fe6abf17412a76517583aaef07cb5f7f7dab44581.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:93c875c5703f4e8d952f8ec76519c6dc6dcda8bda99545428822341bd26050d9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1101–1121.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def compContinuousLinearMapMultilinear :
    MultilinearMap 𝕜 (fun i ↦ E i →L[𝕜] E₁ i)
      ((ContinuousMultilinearMap 𝕜 E₁ G) →L[𝕜] ContinuousMultilinearMap 𝕜 E G) where
  toFun := compContinuousLinearMapL
  map_update_add' f i f₁ f₂ := by
    ext g x
    change (g fun j ↦ update f i (f₁ + f₂) j <| x j) =
        (g fun j ↦ update f i f₁ j <| x j) + g fun j ↦ update f i f₂ j (x j)
    convert! g.map_update_add (fun j ↦ f j (x j)) i (f₁ (x i)) (f₂ (x i)) <;>
      exact apply_update (fun (i : ι) (f : E i →L[𝕜] E₁ i) ↦ f (x i)) f i _ _
  map_update_smul' f i a f₀ := by
    ext g x
    change (g fun j ↦ update f i (a • f₀) j <| x j) = a • g fun j ↦ update f i f₀ j (x j)
    convert! g.map_update_smul (fun j ↦ f j (x j)) i a (f₀ (x i)) <;>
      exact apply_update (fun (i : ι) (f : E i →L[𝕜] E₁ i) ↦ f (x i)) f i _ _

/-- If `f` is a collection of continuous linear maps, then the construction
`ContinuousMultilinearMap.compContinuousLinearMap`
sending a continuous multilinear map `g` to `g (f₁ ·, ..., fₙ ·)` is continuous-linear in `g` and
continuous-multilinear in `f₁, ..., fₙ`. -/
@[simps! apply_apply]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variantda569ac52efd30d2697dca3fe6abf17412a76517583aaef07cb5f7f7dab44581.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variantda569ac52efd30d2697dca3fe6abf17412a76517583aaef07cb5f7f7dab44581.lean#L1101).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `529023ae817036f44e1316a3c04bf8f549936e6c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
