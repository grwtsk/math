# cₙ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f38a7f26c0677343070b13a38a72fac3cf73aa2ce835780526db71a816825e25",
  "kind": "abbrev",
  "lexical_name": "cₙ",
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
  "slug": "c--6de4eae90fadc5ddf0e0b6d5",
  "source": {
    "blob": "ee1a8d48745db7db0aebfe3a4a5d9985ebe47bd3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 183,
    "line": 181,
    "path": "GRWTSK/Algebra/LinearAlgebra/SerreConstruction/Variant1b0b87261bcbf88de9eb18b1a44b7b59707fcae120e3222fba4721f0c50defc2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6de4eae90fadc5ddf0e0b6d5a294787f3494b7298bf2cdf4d00a61698731887c",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/SerreConstruction/Variant1b0b87261bcbf88de9eb18b1a44b7b59707fcae120e3222fba4721f0c50defc2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f38a7f26c0677343070b13a38a72fac3cf73aa2ce835780526db71a816825e25`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 181–183.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable abbrev cₙ (n : ℕ) := Matrix.ToLieAlgebra R (CartanMatrix.C n)

/-- The Lie algebra of type Dₙ, isomorphic to so(2n). Requires n ≥ 4 for non-degenerate behavior. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/SerreConstruction/Variant1b0b87261bcbf88de9eb18b1a44b7b59707fcae120e3222fba4721f0c50defc2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/SerreConstruction/Variant1b0b87261bcbf88de9eb18b1a44b7b59707fcae120e3222fba4721f0c50defc2.lean#L181).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ee1a8d48745db7db0aebfe3a4a5d9985ebe47bd3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
