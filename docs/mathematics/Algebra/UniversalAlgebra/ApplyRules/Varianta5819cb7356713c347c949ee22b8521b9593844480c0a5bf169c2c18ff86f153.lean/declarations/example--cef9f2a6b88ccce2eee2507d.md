# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:74690cd4a8d5f4fdb59d8cda3ded0db44759eb248acaf066be3e79de84d44748",
  "kind": "example",
  "lexical_name": null,
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
  "slug": "example--cef9f2a6b88ccce2eee2507d",
  "source": {
    "blob": "dbdd89e6faaa5017da63890987d2c541e0a83d65",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 31,
    "line": 25,
    "path": "GRWTSK/Algebra/UniversalAlgebra/ApplyRules/Varianta5819cb7356713c347c949ee22b8521b9593844480c0a5bf169c2c18ff86f153.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cef9f2a6b88ccce2eee2507d9f5f53440a73a06967c55a4912ff2cbb82991fe0",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/ApplyRules/Varianta5819cb7356713c347c949ee22b8521b9593844480c0a5bf169c2c18ff86f153.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:74690cd4a8d5f4fdb59d8cda3ded0db44759eb248acaf066be3e79de84d44748`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 25–31.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example {a b c d e : Nat} (h1 : a ≤ b) (h2 : c ≤ d) (h3 : 0 ≤ e) :
    a + c * e + a + c + 0 ≤ b + d * e + b + d + e := by
  apply_rules (config := {maxDepth := 9}) [Nat.add_le_add, Nat.mul_le_mul_right]
  guard_target = 0 ≤ e
  assumption

-- Check that `apply_rules only` works.
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/ApplyRules/Varianta5819cb7356713c347c949ee22b8521b9593844480c0a5bf169c2c18ff86f153.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/ApplyRules/Varianta5819cb7356713c347c949ee22b8521b9593844480c0a5bf169c2c18ff86f153.lean#L25).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dbdd89e6faaa5017da63890987d2c541e0a83d65` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
