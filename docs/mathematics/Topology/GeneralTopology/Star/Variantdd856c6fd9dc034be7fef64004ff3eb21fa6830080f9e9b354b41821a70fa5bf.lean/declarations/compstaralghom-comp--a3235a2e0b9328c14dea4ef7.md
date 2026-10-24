# compStarAlgHom_comp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "93db060648a3419cc805dccda8f52d11a024b60a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 138,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/dd/dd856c6fd9dc034be7fef64004ff3eb21fa6830080f9e9b354b41821a70fa5bf.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d1dc6486-4c1a-a0d6-eb1a-86b8e71e5274",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:14666452-f922-b80a-c926-0a5305dcf4b9",
  "kind": "lemma",
  "lexical_name": "compStarAlgHom_comp",
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
  "slug": "compstaralghom-comp--a3235a2e0b9328c14dea4ef7",
  "source": {
    "blob": "93db060648a3419cc805dccda8f52d11a024b60a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 156,
    "line": 138,
    "path": "GRWTSK/Topology/GeneralTopology/Star/Variantdd856c6fd9dc034be7fef64004ff3eb21fa6830080f9e9b354b41821a70fa5bf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a3235a2e0b9328c14dea4ef705a67fac901867371a76e5ea98b474b50a816a43",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Star/Variantdd856c6fd9dc034be7fef64004ff3eb21fa6830080f9e9b354b41821a70fa5bf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:14666452-f922-b80a-c926-0a5305dcf4b9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 138–156.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma compStarAlgHom_comp (φ : A →⋆ₐ[𝕜] B) (ψ : B →⋆ₐ[𝕜] C) (hφ : Continuous φ)
    (hψ : Continuous ψ) : compStarAlgHom X (ψ.comp φ) (hψ.comp hφ) =
      (compStarAlgHom X ψ hψ).comp (compStarAlgHom X φ hφ) :=
  rfl

end Postcomposition

end ContinuousMap

namespace Homeomorph

variable {X Y : Type*} [TopologicalSpace X] [TopologicalSpace Y]
variable (𝕜 : Type*) [CommSemiring 𝕜]
variable (A : Type*) [TopologicalSpace A] [Semiring A] [IsTopologicalSemiring A] [StarRing A]
variable [ContinuousStar A] [Algebra 𝕜 A]

/-- `ContinuousMap.compStarAlgHom'` as a `StarAlgEquiv` when the continuous map `f` is
actually a homeomorphism. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Star/Variantdd856c6fd9dc034be7fef64004ff3eb21fa6830080f9e9b354b41821a70fa5bf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Star/Variantdd856c6fd9dc034be7fef64004ff3eb21fa6830080f9e9b354b41821a70fa5bf.lean#L138).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `93db060648a3419cc805dccda8f52d11a024b60a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
