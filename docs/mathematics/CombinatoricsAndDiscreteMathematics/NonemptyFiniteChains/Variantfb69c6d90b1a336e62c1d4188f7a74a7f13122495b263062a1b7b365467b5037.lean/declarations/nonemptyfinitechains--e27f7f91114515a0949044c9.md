# NonemptyFiniteChains

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:af770480aa540fa69ab36e65a78a2b4c114263c1a8e30988cd86294a3666294d",
  "kind": "structure",
  "lexical_name": "NonemptyFiniteChains",
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
  "slug": "nonemptyfinitechains--e27f7f91114515a0949044c9",
  "source": {
    "blob": "44945333526ee894a8c69158f52ed47dd9c0c048",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 50,
    "line": 41,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/NonemptyFiniteChains/Variantfb69c6d90b1a336e62c1d4188f7a74a7f13122495b263062a1b7b365467b5037.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e27f7f91114515a0949044c90d8ac2aee512e0a933d16d4b2760357263d2bd52",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/NonemptyFiniteChains/Variantfb69c6d90b1a336e62c1d4188f7a74a7f13122495b263062a1b7b365467b5037.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:af770480aa540fa69ab36e65a78a2b4c114263c1a8e30988cd86294a3666294d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 41–50.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure NonemptyFiniteChains (X : Type u) [PartialOrder X] where
  /-- a finite subset -/
  finset : Finset X
  nonempty : finset.Nonempty := by simp
  comparable (a b : finset) : a ≤ b ∨ b ≤ a

namespace NonemptyFiniteChains

attribute [simp] nonempty

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/NonemptyFiniteChains/Variantfb69c6d90b1a336e62c1d4188f7a74a7f13122495b263062a1b7b365467b5037.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/NonemptyFiniteChains/Variantfb69c6d90b1a336e62c1d4188f7a74a7f13122495b263062a1b7b365467b5037.lean#L41).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `44945333526ee894a8c69158f52ed47dd9c0c048` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
