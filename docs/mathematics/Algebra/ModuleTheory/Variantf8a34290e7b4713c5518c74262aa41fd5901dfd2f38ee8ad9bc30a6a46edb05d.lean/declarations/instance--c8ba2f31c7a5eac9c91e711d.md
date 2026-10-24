# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d1edb533e4ff5792791107887a0dc433a8e76cd2eef584cfb09426e9fdbbb179",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--c8ba2f31c7a5eac9c91e711d",
  "source": {
    "blob": "372cb98a86e1f2a22d40570e6ef1080fb58cd1bd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 464,
    "line": 451,
    "path": "GRWTSK/Algebra/Module/Variantf8a34290e7b4713c5518c74262aa41fd5901dfd2f38ee8ad9bc30a6a46edb05d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c8ba2f31c7a5eac9c91e711da6085d8be45f60723fc237f3823f4cf85c19aba1",
  "verification": {
    "reference": "docs/verification/Algebra/ModuleTheory/Variantf8a34290e7b4713c5518c74262aa41fd5901dfd2f38ee8ad9bc30a6a46edb05d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d1edb533e4ff5792791107887a0dc433a8e76cd2eef584cfb09426e9fdbbb179`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 451–464.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance {ι} [Finite ι] : ∀ {R : ι → Type*} [Π i, Semiring (R i)] [∀ i, IsArtinianRing (R i)],
    IsArtinianRing (Π i, R i) := by
  apply Finite.induction_empty_option _ _ _ ι
  · exact fun e h ↦ RingEquiv.isArtinianRing (.piCongrLeft _ e)
  · infer_instance
  · exact fun ih ↦ RingEquiv.isArtinianRing (.symm .piOptionEquivProd)

namespace IsArtinianRing

section CommSemiring

variable (R : Type*) [CommSemiring R] [IsArtinianRing R]

@[stacks 00J7]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/ModuleTheory/Variantf8a34290e7b4713c5518c74262aa41fd5901dfd2f38ee8ad9bc30a6a46edb05d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Module/Variantf8a34290e7b4713c5518c74262aa41fd5901dfd2f38ee8ad9bc30a6a46edb05d.lean#L451).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `372cb98a86e1f2a22d40570e6ef1080fb58cd1bd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
