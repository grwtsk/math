# HNNExtension.con

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4d0074303ba723b9ea913d13a4a27a75746eca1e426c18824d8c363aacdc2fa4",
  "kind": "def",
  "lexical_name": "HNNExtension.con",
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
  "slug": "hnnextension-con--da44103363cd8a457c47e6de",
  "source": {
    "blob": "caf84a812ad79352b5951af0d067db389bb80433",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 48,
    "line": 39,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/HNNExtension/Varianteea71b84d18b560d22c7907730a1e4c1160904760e650be1d5624d7d02344d3b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:da44103363cd8a457c47e6de21f9c6940a1b385c03d3debdc3c59f2854da710e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/HNNExtension/Varianteea71b84d18b560d22c7907730a1e4c1160904760e650be1d5624d7d02344d3b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4d0074303ba723b9ea913d13a4a27a75746eca1e426c18824d8c363aacdc2fa4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 39–48.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def HNNExtension.con (G : Type*) [Group G] (A B : Subgroup G) (φ : A ≃* B) :
    Con (G ∗ Multiplicative ℤ) :=
  conGen (fun x y => ∃ (a : A),
    x = inr (ofAdd 1) * inl (a : G) ∧
    y = inl (φ a : G) * inr (ofAdd 1))

/-- The HNN Extension of a group `G`, `HNNExtension G A B φ`. Given a group `G`, subgroups `A` and
`B` and an isomorphism `φ` of `A` and `B`, we adjoin a letter `t` to `G`, such that for
any `a ∈ A`, the conjugate of `of a` by `t` is `of (φ a)`, where `of` is the canonical
map from `G` into the `HNNExtension`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/HNNExtension/Varianteea71b84d18b560d22c7907730a1e4c1160904760e650be1d5624d7d02344d3b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/HNNExtension/Varianteea71b84d18b560d22c7907730a1e4c1160904760e650be1d5624d7d02344d3b.lean#L39).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `caf84a812ad79352b5951af0d067db389bb80433` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
