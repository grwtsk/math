# semiring

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a98d9d50a743a620bec9a62888acb1b5abbd063420dee04eb2287a9767cd45dd",
  "kind": "instance",
  "lexical_name": "semiring",
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
  "slug": "semiring--330734f6a96b1fdc1ebf1812",
  "source": {
    "blob": "2a18dbb2c9b0bd9a6d0279621ec9af76bafc4506",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 646,
    "line": 641,
    "path": "GRWTSK/Algebra/LinearAlgebra/TrivSqZeroExt/Variantc1fcb58c378737819c0dbda65e5ba7b69e2e3e173543f48a73ff1212c647755b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:330734f6a96b1fdc1ebf1812cb90d58a4e1d942992ff05686ca1f889c0576d24",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/TrivSqZeroExt/Variantc1fcb58c378737819c0dbda65e5ba7b69e2e3e173543f48a73ff1212c647755b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a98d9d50a743a620bec9a62888acb1b5abbd063420dee04eb2287a9767cd45dd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 641–646.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance semiring [Semiring R] [AddCommMonoid M]
    [Module R M] [Module Rᵐᵒᵖ M] [SMulCommClass R Rᵐᵒᵖ M] : Semiring (tsze R M) :=
  { TrivSqZeroExt.monoid, TrivSqZeroExt.nonAssocSemiring with }

/-- The second element of a product $\prod_{i=0}^n (r_i + m_i)$ is a sum of terms of the form
$r_0\cdots r_{i-1}m_ir_{i+1}\cdots r_n$. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/TrivSqZeroExt/Variantc1fcb58c378737819c0dbda65e5ba7b69e2e3e173543f48a73ff1212c647755b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/TrivSqZeroExt/Variantc1fcb58c378737819c0dbda65e5ba7b69e2e3e173543f48a73ff1212c647755b.lean#L641).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2a18dbb2c9b0bd9a6d0279621ec9af76bafc4506` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
