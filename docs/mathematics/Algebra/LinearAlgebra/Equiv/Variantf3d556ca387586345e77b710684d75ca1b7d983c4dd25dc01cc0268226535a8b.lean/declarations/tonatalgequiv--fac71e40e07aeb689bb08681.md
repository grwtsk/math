# toNatAlgEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9202a3257bfd1fa78339e1ae279a42cc6f67d6d5cd5eaecad58068674d59c678",
  "kind": "def",
  "lexical_name": "toNatAlgEquiv",
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
  "slug": "tonatalgequiv--fac71e40e07aeb689bb08681",
  "source": {
    "blob": "1eb9e2bf8ac52914dca93905eed179ad3ffcf1be",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 802,
    "line": 798,
    "path": "GRWTSK/Algebra/LinearAlgebra/Equiv/Variantf3d556ca387586345e77b710684d75ca1b7d983c4dd25dc01cc0268226535a8b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fac71e40e07aeb689bb08681e0a8423de6e15d6ae8eadbf85de8e235f008e811",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Equiv/Variantf3d556ca387586345e77b710684d75ca1b7d983c4dd25dc01cc0268226535a8b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9202a3257bfd1fa78339e1ae279a42cc6f67d6d5cd5eaecad58068674d59c678`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 798–802.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def toNatAlgEquiv [Semiring R] [Semiring S] (f : R ≃+* S) : R ≃ₐ[ℕ] S where
  toEquiv := f
  __ := f.toRingHom.toNatAlgHom

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Equiv/Variantf3d556ca387586345e77b710684d75ca1b7d983c4dd25dc01cc0268226535a8b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Equiv/Variantf3d556ca387586345e77b710684d75ca1b7d983c4dd25dc01cc0268226535a8b.lean#L798).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1eb9e2bf8ac52914dca93905eed179ad3ffcf1be` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
