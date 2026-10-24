# checkBKLNWSumBounds

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fd9c46f7365e2dc4231c003fdb151b08d6093e30757d65b25956b11ab55f0eb9",
  "kind": "def",
  "lexical_name": "checkBKLNWSumBounds",
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
  "slug": "checkbklnwsumbounds--42d3bfe44cd2a06c1c73cb0a",
  "source": {
    "blob": "e8e6964685d0107805620699734cb05073b18cfe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 248,
    "line": 234,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ReflectiveSum/Variantd99627f712d0e128dcca0c7b0ac186712a4cf5c6315bb05360fc4479be02fecf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:42d3bfe44cd2a06c1c73cb0a3ec1b3db0c08294070f7d321483005c5bccc405d",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/ReflectiveSum/Variantd99627f712d0e128dcca0c7b0ac186712a4cf5c6315bb05360fc4479be02fecf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fd9c46f7365e2dc4231c003fdb151b08d6093e30757d65b25956b11ab55f0eb9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 234–248.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def checkBKLNWSumBounds (x_lo x_hi : ℚ) (hle : x_lo ≤ x_hi)
    (limit : Nat) (target_lo target_hi : ℚ) (cfg : BKLNWSumConfig := {}) : Bool :=
  checkBKLNWSumLowerBound x_lo x_hi hle limit target_lo cfg &&
  checkBKLNWSumUpperBound x_lo x_hi hle limit target_hi cfg

/-! ### Convenience Functions for Common Cases -/

/-- BKLNW sum for f(exp(b)) where b is a natural number.

    For BKLNW bounds, we need f(exp(b)) where b is typically 20, 25, ..., 300.
    This function computes an interval bound for exp(b), then evaluates the sum.

    Parameters:
    - b: The exponent (e.g., 300 for f(exp(300)))
    - limit: Should be ⌊b/log(2)⌋ (the floor of b divided by log 2) -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/ReflectiveSum/Variantd99627f712d0e128dcca0c7b0ac186712a4cf5c6315bb05360fc4479be02fecf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/ReflectiveSum/Variantd99627f712d0e128dcca0c7b0ac186712a4cf5c6315bb05360fc4479be02fecf.lean#L234).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e8e6964685d0107805620699734cb05073b18cfe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
