# standardBasisU

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:277ee4f135fe78bdb8975482dd6df63da4802ef61ac8186ff0325c5733db1769",
  "kind": "def",
  "lexical_name": "standardBasisU",
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
  "slug": "standardbasisu--bfaaf9a2fcca7e04edf92e28",
  "source": {
    "blob": "1c7ecfe1c265e96e1d7ed3bbe18bc9d4a5f58afc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 222,
    "line": 216,
    "path": "GRWTSK/Algebra/LinearAlgebra/CyclicPrimeWalk/Variant749e9e2a4f90bc6b4f2ef12d74d0229e6fd8ad938f084b2afdf0e3b4c304682c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bfaaf9a2fcca7e04edf92e2873d03722d3220153f59fda6344a059b1baf5a574",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/CyclicPrimeWalk/Variant749e9e2a4f90bc6b4f2ef12d74d0229e6fd8ad938f084b2afdf0e3b4c304682c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:277ee4f135fe78bdb8975482dd6df63da4802ef61ac8186ff0325c5733db1769`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 216–222.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def standardBasisU : Fiber3 :=
  ![1, 1, -2]

/-- Second standard-plane basis vector before the common normalization by
`√6`.  It equals `√3 • (1,-1,0)`, so common normalization gives
`(1,-1,0)/√2`. -/
@[expose]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/CyclicPrimeWalk/Variant749e9e2a4f90bc6b4f2ef12d74d0229e6fd8ad938f084b2afdf0e3b4c304682c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/CyclicPrimeWalk/Variant749e9e2a4f90bc6b4f2ef12d74d0229e6fd8ad938f084b2afdf0e3b4c304682c.lean#L216).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1c7ecfe1c265e96e1d7ed3bbe18bc9d4a5f58afc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
