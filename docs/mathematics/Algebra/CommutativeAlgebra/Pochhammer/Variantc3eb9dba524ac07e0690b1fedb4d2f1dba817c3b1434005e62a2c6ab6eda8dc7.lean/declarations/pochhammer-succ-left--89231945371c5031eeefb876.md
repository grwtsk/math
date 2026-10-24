# pochhammer_succ_left

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4b5a6495-0b11-fc05-94ed-3f9f640a16d4",
  "kind": "theorem",
  "lexical_name": "pochhammer_succ_left",
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
  "slug": "pochhammer-succ-left--89231945371c5031eeefb876",
  "source": {
    "blob": "a86b3fb9816f5087d50b2e7e5e1386f7b446f02e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 74,
    "line": 66,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Pochhammer/Variantc3eb9dba524ac07e0690b1fedb4d2f1dba817c3b1434005e62a2c6ab6eda8dc7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:89231945371c5031eeefb876ef13ab451ecd058763500e5991c43e8f78ead43c",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Pochhammer/Variantc3eb9dba524ac07e0690b1fedb4d2f1dba817c3b1434005e62a2c6ab6eda8dc7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4b5a6495-0b11-fc05-94ed-3f9f640a16d4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 66–74.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pochhammer_succ_left (n : ℕ) : pochhammer S (n + 1) = X * (pochhammer S n).comp (X + 1) :=
  by rw [pochhammer]
#align pochhammer_succ_left pochhammer_succ_left

section

variable {S} {T : Type v} [Semiring T]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Pochhammer/Variantc3eb9dba524ac07e0690b1fedb4d2f1dba817c3b1434005e62a2c6ab6eda8dc7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Pochhammer/Variantc3eb9dba524ac07e0690b1fedb4d2f1dba817c3b1434005e62a2c6ab6eda8dc7.lean#L66).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a86b3fb9816f5087d50b2e7e5e1386f7b446f02e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
