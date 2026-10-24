# BooleanGenerators

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bc76bd1df903b4d7205a9d17caf71dbcb972fba4c3ec235abc765f9da211dd50",
  "kind": "structure",
  "lexical_name": "BooleanGenerators",
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
  "slug": "booleangenerators--b19abd462f003a259ca5ef5b",
  "source": {
    "blob": "20f5e0c6fc9916a9b3005b78bdcc31b822773d65",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 77,
    "line": 65,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BooleanGenerators/Varianta59718c442a69d2f731515f27277f4ef3c5d5279c153caf61616aa9ba11c2a15.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b19abd462f003a259ca5ef5b21a8ce7fb4dc5df834ee3eadd50a23f0dc557bd0",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BooleanGenerators/Varianta59718c442a69d2f731515f27277f4ef3c5d5279c153caf61616aa9ba11c2a15.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bc76bd1df903b4d7205a9d17caf71dbcb972fba4c3ec235abc765f9da211dd50`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 65–77.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure BooleanGenerators (S : Set α) : Prop where
  /-- The elements in a collection of Boolean generators are all atoms. -/
  isAtom : ∀ I ∈ S, IsAtom I
  /-- The elements in a collection of Boolean generators satisfy an atomicity condition:
  any compact element below the supremum of a finite subset `s` of generators
  is equal to the supremum of a subset of `s`. -/
  finitelyAtomistic : ∀ (s : Finset α) (a : α),
      ↑s ⊆ S → IsCompactElement a → a ≤ s.sup id → ∃ t ⊆ s, a = t.sup id

namespace BooleanGenerators

variable {S : Set α}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BooleanGenerators/Varianta59718c442a69d2f731515f27277f4ef3c5d5279c153caf61616aa9ba11c2a15.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BooleanGenerators/Varianta59718c442a69d2f731515f27277f4ef3c5d5279c153caf61616aa9ba11c2a15.lean#L65).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `20f5e0c6fc9916a9b3005b78bdcc31b822773d65` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
