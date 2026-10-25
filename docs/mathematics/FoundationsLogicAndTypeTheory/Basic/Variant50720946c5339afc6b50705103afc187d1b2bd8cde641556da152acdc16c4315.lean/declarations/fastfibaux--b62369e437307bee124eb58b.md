# fastFibAux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:922d122a763b4ffbab854ebfad35fffb28ed0a3fbad5924c4a3aeaee24cac55a",
  "kind": "def",
  "lexical_name": "fastFibAux",
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
  "slug": "fastfibaux--b62369e437307bee124eb58b",
  "source": {
    "blob": "58c5880b4f13596d769acf791e76ea78ead1d16c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 181,
    "line": 175,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Basic/Variant50720946c5339afc6b50705103afc187d1b2bd8cde641556da152acdc16c4315.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b62369e437307bee124eb58bd2c5d38a229311a17a084965c6b40a5e1d79bf70",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Basic/Variant50720946c5339afc6b50705103afc187d1b2bd8cde641556da152acdc16c4315.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:922d122a763b4ffbab854ebfad35fffb28ed0a3fbad5924c4a3aeaee24cac55a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 175–181.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def fastFibAux : ℕ → ℕ × ℕ :=
  Nat.binaryRec (fib 0, fib 1) fun b _ p =>
    if b then (p.2 ^ 2 + p.1 ^ 2, p.2 * (2 * p.1 + p.2))
    else (p.1 * (2 * p.2 - p.1), p.2 ^ 2 + p.1 ^ 2)

/-- Computes `Nat.fib n` using the binary representation of `n`.
Proved to be equal to `Nat.fib` in `Nat.fast_fib_eq`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/Basic/Variant50720946c5339afc6b50705103afc187d1b2bd8cde641556da152acdc16c4315.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Basic/Variant50720946c5339afc6b50705103afc187d1b2bd8cde641556da152acdc16c4315.lean#L175).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `58c5880b4f13596d769acf791e76ea78ead1d16c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
