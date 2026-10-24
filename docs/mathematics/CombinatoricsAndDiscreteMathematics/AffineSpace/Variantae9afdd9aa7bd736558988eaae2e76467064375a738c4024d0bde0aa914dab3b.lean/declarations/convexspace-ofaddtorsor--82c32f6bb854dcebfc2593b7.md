# ConvexSpace.ofAddTorsor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:850b7660c5d60196cd0ca714c0c8deee6fb8654fb16f2a839b66560b5a4d642d",
  "kind": "def",
  "lexical_name": "ConvexSpace.ofAddTorsor",
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
  "slug": "convexspace-ofaddtorsor--82c32f6bb854dcebfc2593b7",
  "source": {
    "blob": "00f72b87895ca9d19e7a5c0cc3160f65a572257f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 127,
    "line": 117,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/AffineSpace/Variantae9afdd9aa7bd736558988eaae2e76467064375a738c4024d0bde0aa914dab3b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:82c32f6bb854dcebfc2593b7555ff88fda35d1d27c4fe23d4aa80eaa188e4b51",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/AffineSpace/Variantae9afdd9aa7bd736558988eaae2e76467064375a738c4024d0bde0aa914dab3b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:850b7660c5d60196cd0ca714c0c8deee6fb8654fb16f2a839b66560b5a4d642d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 117–127.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ConvexSpace.ofAddTorsor : ConvexSpace R P where
  sConvexComb := AddTorsor.convexCombination
  sConvexComb_single := AddTorsor.convexCombination_single
  assoc := AddTorsor.convexCombination_assoc

@[implicit_reducible, deprecated (since := "2026-07-02")]
alias _root_.AddTorsor.toConvexSpace := ConvexSpace.ofAddTorsor

variable (R V P) [ConvexSpace R P] in
/-- Typeclass for a convex space structure on an affine space to be given by affine
combinations. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/AffineSpace/Variantae9afdd9aa7bd736558988eaae2e76467064375a738c4024d0bde0aa914dab3b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/AffineSpace/Variantae9afdd9aa7bd736558988eaae2e76467064375a738c4024d0bde0aa914dab3b.lean#L117).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `00f72b87895ca9d19e7a5c0cc3160f65a572257f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
