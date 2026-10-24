# incompleteReconstruction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4e55ac8631d3ea8e2a0176447e0bf9be84ca4321c6d90cc81ac4a085086cc307",
  "kind": "def",
  "lexical_name": "incompleteReconstruction",
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
  "slug": "incompletereconstruction--6e95b3cc8e660f2a9de4068e",
  "source": {
    "blob": "2382c92751eac893163826e95f0a7488106c8c2a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 61,
    "line": 57,
    "path": "GRWTSK/Analysis/FiniteCharacterGuardAttempt02/Variantb97d0d5e18f189b7a8ae4a0a63b0c28df6a524a40fe048ed93be213a68fecc8b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6e95b3cc8e660f2a9de4068ea66ec0ecf87d3f5be8e58291cfded75470143c0a",
  "verification": {
    "reference": "docs/verification/Analysis/FiniteCharacterGuardAttempt02/Variantb97d0d5e18f189b7a8ae4a0a63b0c28df6a524a40fe048ed93be213a68fecc8b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4e55ac8631d3ea8e2a0176447e0bf9be84ca4321c6d90cc81ac4a085086cc307`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 57–61.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def incompleteReconstruction (f : G → ℂ) : G → ℂ :=
  ∑ character ∈ Finset.univ.erase (0 : AddChar G ℂ),
    coefficientMap character f • (character : G → ℂ)

/-- The discarded term is exactly the constant/trivial component. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/FiniteCharacterGuardAttempt02/Variantb97d0d5e18f189b7a8ae4a0a63b0c28df6a524a40fe048ed93be213a68fecc8b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FiniteCharacterGuardAttempt02/Variantb97d0d5e18f189b7a8ae4a0a63b0c28df6a524a40fe048ed93be213a68fecc8b.lean#L57).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2382c92751eac893163826e95f0a7488106c8c2a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
