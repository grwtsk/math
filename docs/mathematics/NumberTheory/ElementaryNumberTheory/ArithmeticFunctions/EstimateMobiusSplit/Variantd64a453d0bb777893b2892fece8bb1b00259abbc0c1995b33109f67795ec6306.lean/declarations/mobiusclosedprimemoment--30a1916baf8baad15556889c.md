# mobiusClosedPrimeMoment

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:415d50086a1f823d04581b3859b9f673e54d67f9aa333e8ed11c3c0c659123b7",
  "kind": "def",
  "lexical_name": "mobiusClosedPrimeMoment",
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
  "slug": "mobiusclosedprimemoment--30a1916baf8baad15556889c",
  "source": {
    "blob": "2281b04e7f2a7670fe857ce156dc43ea63c798e0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 69,
    "line": 64,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/EstimateMobiusSplit/Variantd64a453d0bb777893b2892fece8bb1b00259abbc0c1995b33109f67795ec6306.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:30a1916baf8baad15556889c64aebfddeffe980eb883888154f081a17190dabd",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/EstimateMobiusSplit/Variantd64a453d0bb777893b2892fece8bb1b00259abbc0c1995b33109f67795ec6306.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:415d50086a1f823d04581b3859b9f673e54d67f9aa333e8ed11c3c0c659123b7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 64–69.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mobiusClosedPrimeMoment (A : ℝ) : ℝ :=
  ∑ n ∈ primePowerInventory (2 * A),
    ∑ dk ∈ n.divisorsAntidiagonal,
      mobiusLogTerm A n dk

/-- The exact closed prime moment is its finite Möbius-log expansion. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/EstimateMobiusSplit/Variantd64a453d0bb777893b2892fece8bb1b00259abbc0c1995b33109f67795ec6306.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/EstimateMobiusSplit/Variantd64a453d0bb777893b2892fece8bb1b00259abbc0c1995b33109f67795ec6306.lean#L64).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2281b04e7f2a7670fe857ce156dc43ea63c798e0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
