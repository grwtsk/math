# gradedZeroRingHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:06c9f6a6352846452285d0759e69793b7a31932094ee9d3bb4a2430bf1bd3363",
  "kind": "def",
  "lexical_name": "gradedZeroRingHom",
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
  "slug": "gradedzeroringhom--c8121d8eef4f7fad386d2c15",
  "source": {
    "blob": "a3ff780347fd9d4aef51364065a22e5e35b9e615",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 282,
    "line": 267,
    "path": "GRWTSK/Algebra/RingHom/Variantf9c34e2bc7f1c17aceb0b827f117cef786cf463a0755255db1c9372c64372802.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c8121d8eef4f7fad386d2c150a22a4d3d0d39fe4352f7c00850fed174115aa4a",
  "verification": {
    "reference": "docs/verification/Algebra/RingHom/Variantf9c34e2bc7f1c17aceb0b827f117cef786cf463a0755255db1c9372c64372802.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:06c9f6a6352846452285d0759e69793b7a31932094ee9d3bb4a2430bf1bd3363`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 267–282.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simps!] def gradedZeroRingHom [AddSubmonoidClass σ A] [AddSubmonoidClass τ B] [AddMonoid ι]
    [SetLike.GradedMonoid 𝒜] [SetLike.GradedMonoid ℬ] (f : 𝒜 →+*ᵍ ℬ) : 𝒜 0 →+* ℬ 0 where
  __ := f.gradedAddHom 0
  map_one' := Subtype.ext <| map_one _
  map_mul' _ _ := Subtype.ext <| map_mul ..

end GradedRingHom

end SetLike

section GradedRing
variable [DecidableEq ι] [AddMonoid ι] [AddSubmonoidClass σ A] [AddSubmonoidClass τ B]
variable (𝒜 : ι → σ) (ℬ : ι → τ) [GradedRing 𝒜] [GradedRing ℬ]
variable {F : Type*} [FunLike F A B] [GradedFunLike F 𝒜 ℬ] [RingHomClass F A B]

-- not simp because `𝒜` cannot be inferred
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/RingHom/Variantf9c34e2bc7f1c17aceb0b827f117cef786cf463a0755255db1c9372c64372802.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/RingHom/Variantf9c34e2bc7f1c17aceb0b827f117cef786cf463a0755255db1c9372c64372802.lean#L267).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a3ff780347fd9d4aef51364065a22e5e35b9e615` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
