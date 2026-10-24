# ofFun

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2df848896432afb12c9e8574b834caa8f6a973a35efb2892f25da77f6ac563a1",
  "kind": "def",
  "lexical_name": "ofFun",
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
  "slug": "offun--9bb6ea943ec2a7f20a83c1a2",
  "source": {
    "blob": "3ed7e67f428bd2c83084508a7348f59e19c59e91",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 50,
    "line": 36,
    "path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/OfFun/Variant7fc3cb6bdfd6e692c2d81a5727d330e4383c56db2d15b85888dcb5792c5d7047.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9bb6ea943ec2a7f20a83c1a2a414226cf22045026807f2ac036d4d55f552b7e5",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UniformSpaces/OfFun/Variant7fc3cb6bdfd6e692c2d81a5727d330e4383c56db2d15b85888dcb5792c5d7047.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2df848896432afb12c9e8574b834caa8f6a973a35efb2892f25da77f6ac563a1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 36–50.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ofFun [AddCommMonoid M] [PartialOrder M]
    (d : X → X → M) (refl : ∀ x, d x x = 0)
    (symm : ∀ x y, d x y = d y x) (triangle : ∀ x y z, d x z ≤ d x y + d y z)
    (half : ∀ ε > (0 : M), ∃ δ > (0 : M), ∀ x < δ, ∀ y < δ, x + y < ε) :
    UniformSpace X :=
  .ofCore
    { uniformity := ⨅ r > 0, 𝓟 { x | d x.1 x.2 < r }
      refl := le_iInf₂ fun r hr => principal_mono.2 <| idRel_subset.2 fun x => by simpa [refl]
      symm := tendsto_iInf_iInf fun r => tendsto_iInf_iInf fun _ => tendsto_principal_principal.2
        fun x hx => by rwa [mem_setOf, symm]
      comp := le_iInf₂ fun r hr => let ⟨δ, h0, hδr⟩ := half r hr; le_principal_iff.2 <|
        mem_of_superset
          (mem_lift' <| mem_iInf_of_mem δ <| mem_iInf_of_mem h0 <| mem_principal_self _)
          fun (x, z) ⟨y, h₁, h₂⟩ => (triangle _ _ _).trans_lt (hδr _ h₁ _ h₂) }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Topology/GeneralTopology/UniformSpaces/OfFun/Variant7fc3cb6bdfd6e692c2d81a5727d330e4383c56db2d15b85888dcb5792c5d7047.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UniformSpaces/OfFun/Variant7fc3cb6bdfd6e692c2d81a5727d330e4383c56db2d15b85888dcb5792c5d7047.lean#L36).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3ed7e67f428bd2c83084508a7348f59e19c59e91` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
