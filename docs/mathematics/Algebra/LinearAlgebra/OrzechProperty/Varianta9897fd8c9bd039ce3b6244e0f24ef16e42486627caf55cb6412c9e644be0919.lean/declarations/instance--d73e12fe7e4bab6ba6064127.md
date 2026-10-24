# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0f4b09025585b739cd3df9354e6538cc81ff9b54fd76aefbcc48b78d0b2a05e2",
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
  "slug": "instance--d73e12fe7e4bab6ba6064127",
  "source": {
    "blob": "a169c8cc0a93d0d920124198f4962c37b9c2f578",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 86,
    "line": 77,
    "path": "GRWTSK/Algebra/LinearAlgebra/OrzechProperty/Varianta9897fd8c9bd039ce3b6244e0f24ef16e42486627caf55cb6412c9e644be0919.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d73e12fe7e4bab6ba606412773b83a3fad59ac9851da1f606a9ecc93bead02ce",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/OrzechProperty/Varianta9897fd8c9bd039ce3b6244e0f24ef16e42486627caf55cb6412c9e644be0919.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0f4b09025585b739cd3df9354e6538cc81ff9b54fd76aefbcc48b78d0b2a05e2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 77–86.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance [Finite R] : OrzechProperty R where
  injective_of_surjective_of_submodule' {M} _ _ _ {N} _f hf :=
    have : Finite M := Module.finite_of_finite R
    have ⟨_g, hg⟩ := N.subtype_injective.hasLeftInverse
    .of_comp (hg.surjective.comp hf).bijective_of_finite.1

variable {R}

variable [OrzechProperty R] {M : Type v} [AddCommMonoid M] [Module R M] [Module.Finite R M]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/OrzechProperty/Varianta9897fd8c9bd039ce3b6244e0f24ef16e42486627caf55cb6412c9e644be0919.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/OrzechProperty/Varianta9897fd8c9bd039ce3b6244e0f24ef16e42486627caf55cb6412c9e644be0919.lean#L77).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a169c8cc0a93d0d920124198f4962c37b9c2f578` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
