# PComp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:86af35d016c52bd31e0034ee353c0449ceb2c134ad7a2ed43987d58d3a30aa86",
  "kind": "structure",
  "lexical_name": "PComp",
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
  "slug": "pcomp--7ee83898381ad4efab6b484a",
  "source": {
    "blob": "f4fe808c4c6ada79cabb2e085c2a7df8a8afb5a3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 164,
    "line": 125,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FourierMotzkin/Variant13b0a31e3cab577cc98859ba6c6ed2b6948d4b278327644c8247eade67a03151.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7ee83898381ad4efab6b484a6810df936de981b573b1cbde4e0f298d08a964c4",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FourierMotzkin/Variant13b0a31e3cab577cc98859ba6c6ed2b6948d4b278327644c8247eade67a03151.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:86af35d016c52bd31e0034ee353c0449ceb2c134ad7a2ed43987d58d3a30aa86`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 125–164.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure PComp : Type where
  /-- The comparison `Σ cᵢ*xᵢ R 0`. -/
  c : Comp
  /-- We track how the comparison was constructed by adding and scaling previous comparisons,
  back to the original assumptions. -/
  src : CompSource
  /-- The set of original assumptions which have been used in constructing this comparison. -/
  history : TreeSet ℕ Ord.compare
  /-- The variables which have been *effectively eliminated*,
  i.e. by running the elimination algorithm on that variable. -/
  effective : TreeSet ℕ Ord.compare
  /-- The variables which have been *implicitly eliminated*.
  These are variables that appear in the historical set,
  do not appear in `c` itself, and are not in `effective. -/
  implicit : TreeSet ℕ Ord.compare
  /-- The union of all variables appearing in those original assumptions
  which appear in the `history` set. -/
  vars : TreeSet ℕ Ord.compare

/--
Any comparison whose history is not minimal is redundant,
and need not be included in the new set of comparisons.
`elimedGE : ℕ` is a natural number such that all variables with index ≥ `elimedGE` have been
removed from the system.

This test is an overapproximation to minimality. It gives necessary but not sufficient conditions.
If the history of `c` is minimal, then `c.maybeMinimal` is true,
but `c.maybeMinimal` may also be true for some `c` with non-minimal history.
Thus, if `c.maybeMinimal` is false, `c` is known not to be minimal and must be redundant.
See https://doi.org/10.1016/B978-0-444-88771-9.50019-2 (Theorem 13).
The condition described there considers only implicitly eliminated variables that have been
officially eliminated from the system. This is not the case for every implicitly eliminated
variable. Consider eliminating `z` from `{x + y + z < 0, x - y - z < 0}`. The result is the set
`{2*x < 0}`; `y` is implicitly but not officially eliminated.

This implementation of Fourier-Motzkin elimination processes variables in decreasing order of
indices. Immediately after a step that eliminates variable `k`, variable `k'` has been eliminated
iff `k' ≥ k`. Thus we can compute the intersection of officially and implicitly eliminated variables
by taking the set of implicitly eliminated variables with indices ≥ `elimedGE`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FourierMotzkin/Variant13b0a31e3cab577cc98859ba6c6ed2b6948d4b278327644c8247eade67a03151.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FourierMotzkin/Variant13b0a31e3cab577cc98859ba6c6ed2b6948d4b278327644c8247eade67a03151.lean#L125).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f4fe808c4c6ada79cabb2e085c2a7df8a8afb5a3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
