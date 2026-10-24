# isLimitAux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:29797bffb4748eb8090ec11531abb6d96d9fcfdf78e9edfd030e2230809b5fba",
  "kind": "def",
  "lexical_name": "isLimitAux",
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
  "slug": "islimitaux--8a69e522d959a0d37b9dd791",
  "source": {
    "blob": "9b4ec68a0c0da22eab44424ebb5b5468d8d73b60",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 155,
    "line": 143,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Varianta28dc6f0be93640c91c58ba13a83d7f926866c6ae635660565b2d3c61dc9a7d0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8a69e522d959a0d37b9dd79151d4e2dc11b363fba0c3b63fbfa7781dbd9582e2",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Varianta28dc6f0be93640c91c58ba13a83d7f926866c6ae635660565b2d3c61dc9a7d0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:29797bffb4748eb8090ec11531abb6d96d9fcfdf78e9edfd030e2230809b5fba`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 143–155.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def isLimitAux (t : KernelFork f) (lift : ∀ s : KernelFork f, s.pt ⟶ t.pt)
    (fac : ∀ s : KernelFork f, lift s ≫ t.ι = s.ι)
    (uniq : ∀ (s : KernelFork f) (m : s.pt ⟶ t.pt) (_ : m ≫ t.ι = s.ι), m = lift s) : IsLimit t :=
  { lift
    fac := fun s j => by
      cases j
      · exact fac s
      · simp
    uniq := fun s m w => uniq s m (w Limits.WalkingParallelPair.zero) }

/-- This is a more convenient formulation to show that a `KernelFork` constructed using
`KernelFork.ofι` is a limit cone.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Varianta28dc6f0be93640c91c58ba13a83d7f926866c6ae635660565b2d3c61dc9a7d0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Varianta28dc6f0be93640c91c58ba13a83d7f926866c6ae635660565b2d3c61dc9a7d0.lean#L143).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9b4ec68a0c0da22eab44424ebb5b5468d8d73b60` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
