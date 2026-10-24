# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:68338c3f7ad03d54e7a3afc04fc97302564cdb274351f59c4e6c231e112dc368",
  "kind": "instance",
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
  "slug": "instance--b7a11765cd19addbcebec92d",
  "source": {
    "blob": "10000be595a02fea88be18958781955f3429aded",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 641,
    "line": 634,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Basic/Variant9c75cb8c61a3f3803c4e5aaa341e3a5cb6b2cea2881a5ef4db0036ac593c9bc3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b7a11765cd19addbcebec92da671b3ac7a72697478551f9698154da24573eb63",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Basic/Variant9c75cb8c61a3f3803c4e5aaa341e3a5cb6b2cea2881a5ef4db0036ac593c9bc3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:68338c3f7ad03d54e7a3afc04fc97302564cdb274351f59c4e6c231e112dc368`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 634–641.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance (priority := 100) [ExistsAddOfLE R] [PosMulMono R] [AddLeftMono R] :
    ZeroLEOneClass R where
  zero_le_one := by simpa only [one_mul] using mul_self_nonneg (1 : R)

section SumOfSquares

variable [NoZeroDivisors R] [ExistsAddOfLE R] [PosMulMono R] [AddLeftMono R]
/-- The sum of two terms of the form x * x is zero iff both elements are zero. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Basic/Variant9c75cb8c61a3f3803c4e5aaa341e3a5cb6b2cea2881a5ef4db0036ac593c9bc3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Basic/Variant9c75cb8c61a3f3803c4e5aaa341e3a5cb6b2cea2881a5ef4db0036ac593c9bc3.lean#L634).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `10000be595a02fea88be18958781955f3429aded` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
