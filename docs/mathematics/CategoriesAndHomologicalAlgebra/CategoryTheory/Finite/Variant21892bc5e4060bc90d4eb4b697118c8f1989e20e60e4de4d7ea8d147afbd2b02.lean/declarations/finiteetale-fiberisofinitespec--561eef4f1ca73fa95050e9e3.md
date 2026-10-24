# FiniteEtale.fiberIsoFiniteSpec

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3d638933ba0150f564d1c2b0fe8759e2b262db563a49119655e519b31fef8100",
  "kind": "def",
  "lexical_name": "FiniteEtale.fiberIsoFiniteSpec",
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
  "slug": "finiteetale-fiberisofinitespec--561eef4f1ca73fa95050e9e3",
  "source": {
    "blob": "aaaaeeca05f4bedd733364e8ec21ebf2bc29ec28",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 158,
    "line": 151,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Finite/Variant21892bc5e4060bc90d4eb4b697118c8f1989e20e60e4de4d7ea8d147afbd2b02.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:561eef4f1ca73fa95050e9e369122c9c9568aaf55d95c246de648ffe50e303d9",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Finite/Variant21892bc5e4060bc90d4eb4b697118c8f1989e20e60e4de4d7ea8d147afbd2b02.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3d638933ba0150f564d1c2b0fe8759e2b262db563a49119655e519b31fef8100`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 151–158.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def FiniteEtale.fiberIsoFiniteSpec [IsSepClosed Ω] :
    FiniteEtale.fiber Ω Ω ≅ FiniteEtale.finiteSpec Ω :=
  NatIso.ofComponents
    fun R ↦ FintypeCat.equivEquivIso (Algebra.IsFiniteSplit.algHomEquivPrimeSpectrum _ _)

/-- If `Ω` is separably closed, the fiber `S →ₐ[R] Ω`
is isomorphic to the prime spectrum of the base change `Ω ⊗[R] S`. -/
@[expose]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Finite/Variant21892bc5e4060bc90d4eb4b697118c8f1989e20e60e4de4d7ea8d147afbd2b02.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Finite/Variant21892bc5e4060bc90d4eb4b697118c8f1989e20e60e4de4d7ea8d147afbd2b02.lean#L151).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aaaaeeca05f4bedd733364e8ec21ebf2bc29ec28` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
