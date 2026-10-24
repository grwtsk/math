# isWeakLimitKernelForkOfFork

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cc0e4a86a61acc56c56b2cc4ba3e6d1b2e918e4a603576a3f146b74d1fda6097",
  "kind": "def",
  "lexical_name": "isWeakLimitKernelForkOfFork",
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
  "slug": "isweaklimitkernelforkoffork--e5c7edcc255eb8dbfef5736b",
  "source": {
    "blob": "54518aecf3dc2b085ab4b5422d72ba299cfb8966",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 126,
    "line": 119,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/WeakKernels/Variant47189d03aaad204f00db89a6f97fe06a190142d44f562e0ec57b8763e0793e04.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e5c7edcc255eb8dbfef5736b0cfc2d666a306f1e407d443241bdab5aa5993f00",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/WeakKernels/Variant47189d03aaad204f00db89a6f97fe06a190142d44f562e0ec57b8763e0793e04.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:cc0e4a86a61acc56c56b2cc4ba3e6d1b2e918e4a603576a3f146b74d1fda6097`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 119–126.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def isWeakLimitKernelForkOfFork {c : Fork f g} (i : IsWeakLimit c) :
    IsWeakLimit (kernelForkOfFork c) :=
  Fork.IsWeakLimit.mk' _ fun s => ⟨i.lift (forkOfKernelFork s), i.fac _ _⟩

variable (f g)

/-- A preadditive category has a weak equalizer for `f` and `g` if it has a weak
kernel for `f - g`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/WeakKernels/Variant47189d03aaad204f00db89a6f97fe06a190142d44f562e0ec57b8763e0793e04.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/WeakKernels/Variant47189d03aaad204f00db89a6f97fe06a190142d44f562e0ec57b8763e0793e04.lean#L119).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `54518aecf3dc2b085ab4b5422d72ba299cfb8966` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
