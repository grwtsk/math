# branchNumber

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:710589a13a921fdf31c584bea01bef627c682c26c95c21aaab73db962208ef7f",
  "kind": "def",
  "lexical_name": "branchNumber",
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
  "slug": "branchnumber--6690a9b21b6ccff25bcd1163",
  "source": {
    "blob": "15e69c19cc6fc5ac33d59fcbfa154ba4a659158b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 329,
    "line": 322,
    "path": "GRWTSK/Algebra/PermutationNetwork/Variantf80166be745fca59df8ab98ac278c30804e4793eac98a3af1314e6cacf252d70.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6690a9b21b6ccff25bcd11630cb04c3f3747a65d0bc3fe81cd16f690153e8450",
  "verification": {
    "reference": "docs/verification/Algebra/PermutationNetwork/Variantf80166be745fca59df8ab98ac278c30804e4793eac98a3af1314e6cacf252d70.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:710589a13a921fdf31c584bea01bef627c682c26c95c21aaab73db962208ef7f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 322–329.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def branchNumber {n : Nat} (L : XorLinearEquiv n) : Nat :=
  if hn : n = 0 then
    0
  else
    (activities L).min' (activities_nonempty L (Nat.pos_of_ne_zero hn))

/-- The documented empty-width convention. -/
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/PermutationNetwork/Variantf80166be745fca59df8ab98ac278c30804e4793eac98a3af1314e6cacf252d70.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/PermutationNetwork/Variantf80166be745fca59df8ab98ac278c30804e4793eac98a3af1314e6cacf252d70.lean#L322).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `15e69c19cc6fc5ac33d59fcbfa154ba4a659158b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
