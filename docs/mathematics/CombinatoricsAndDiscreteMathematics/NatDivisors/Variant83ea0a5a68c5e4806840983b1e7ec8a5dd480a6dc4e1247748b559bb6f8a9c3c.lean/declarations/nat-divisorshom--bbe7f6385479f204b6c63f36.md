# Nat.divisorsHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e37ba250034711f743d361fc0ebe64272a76fc2805a5f1ee1bfcd62a448fd42a",
  "kind": "def",
  "lexical_name": "Nat.divisorsHom",
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
  "slug": "nat-divisorshom--bbe7f6385479f204b6c63f36",
  "source": {
    "blob": "2ffc4228b8d407c3f1ee40de4811d384bbfcf7ae",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 41,
    "line": 37,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/NatDivisors/Variant83ea0a5a68c5e4806840983b1e7ec8a5dd480a6dc4e1247748b559bb6f8a9c3c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bbe7f6385479f204b6c63f3663d1b3b1466b2d4e75e49b68cbc6af5add28b320",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/NatDivisors/Variant83ea0a5a68c5e4806840983b1e7ec8a5dd480a6dc4e1247748b559bb6f8a9c3c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e37ba250034711f743d361fc0ebe64272a76fc2805a5f1ee1bfcd62a448fd42a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 37–41.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Nat.divisorsHom : ℕ →* Finset ℕ where
  toFun := Nat.divisors
  map_mul' := divisors_mul
  map_one' := divisors_one

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/NatDivisors/Variant83ea0a5a68c5e4806840983b1e7ec8a5dd480a6dc4e1247748b559bb6f8a9c3c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/NatDivisors/Variant83ea0a5a68c5e4806840983b1e7ec8a5dd480a6dc4e1247748b559bb6f8a9c3c.lean#L37).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2ffc4228b8d407c3f1ee40de4811d384bbfcf7ae` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
