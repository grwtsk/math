# inverseCoeff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:179a752e0d8481397bc9af07295ffb6ee2aa2dfee222d18754255d2c3da9435e",
  "kind": "def",
  "lexical_name": "inverseCoeff",
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
  "slug": "inversecoeff--0e47cfe5d72f3c75e4905d63",
  "source": {
    "blob": "d02a99ee5a6e0c7bc042c3cd2935f8f6df83e9d5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 56,
    "line": 50,
    "path": "GRWTSK/Algebra/DiscreteValuationRing/Variant2413ddb692a41e7ddd1962acdda3b5c84d9f1a9a25916528500ba9475114674c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0e47cfe5d72f3c75e4905d63c35959ac54789c4a3b5d1833aa3614f3ae7b2321",
  "verification": {
    "reference": "docs/verification/Algebra/DiscreteValuationRing/Variant2413ddb692a41e7ddd1962acdda3b5c84d9f1a9a25916528500ba9475114674c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:179a752e0d8481397bc9af07295ffb6ee2aa2dfee222d18754255d2c3da9435e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 50–56.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def inverseCoeff (a : Units k) (A : 𝕎 k) : ℕ → k
  | 0 => ↑a⁻¹
  | n + 1 => succNthValUnits n a A fun i => inverseCoeff a A i.val

/--
Upgrade a Witt vector `A` whose first entry `A.coeff 0` is a unit to be, itself, a unit in `𝕎 k`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/DiscreteValuationRing/Variant2413ddb692a41e7ddd1962acdda3b5c84d9f1a9a25916528500ba9475114674c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/DiscreteValuationRing/Variant2413ddb692a41e7ddd1962acdda3b5c84d9f1a9a25916528500ba9475114674c.lean#L50).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d02a99ee5a6e0c7bc042c3cd2935f8f6df83e9d5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
