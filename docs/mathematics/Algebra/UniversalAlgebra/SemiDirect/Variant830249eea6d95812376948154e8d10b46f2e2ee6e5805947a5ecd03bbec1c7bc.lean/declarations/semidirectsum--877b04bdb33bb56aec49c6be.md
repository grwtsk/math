# SemiDirectSum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e81b422e3902effd11a1671b88a4e97e96a355b9ed51bce97e7974cba964dff3",
  "kind": "structure",
  "lexical_name": "SemiDirectSum",
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
  "slug": "semidirectsum--877b04bdb33bb56aec49c6be",
  "source": {
    "blob": "6da637caabb63f278ea963fedc45228ceada8b4a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 68,
    "line": 47,
    "path": "GRWTSK/Algebra/UniversalAlgebra/SemiDirect/Variant830249eea6d95812376948154e8d10b46f2e2ee6e5805947a5ecd03bbec1c7bc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:877b04bdb33bb56aec49c6be7425e0854a56cd35578e61f281e5f44b7ccd8709",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/SemiDirect/Variant830249eea6d95812376948154e8d10b46f2e2ee6e5805947a5ecd03bbec1c7bc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e81b422e3902effd11a1671b88a4e97e96a355b9ed51bce97e7974cba964dff3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 47–68.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[ext] structure SemiDirectSum {R : Type*} [CommRing R] (K : Type*) [LieRing K] [LieAlgebra R K]
    (L : Type*) [LieRing L] [LieAlgebra R L] (_ : L →ₗ⁅R⁆ LieDerivation R K K) where
  /-- The element of K -/
  left : K
  /-- The element of L -/
  right : L

@[inherit_doc]
notation:35 K " ⋊⁅" ψ:35 "⁆ " L:35 => SemiDirectSum K L ψ


namespace SemiDirectSum

variable {R : Type*} [CommRing R]
variable {K : Type*} [LieRing K] [LieAlgebra R K]
variable {L : Type*} [LieRing L] [LieAlgebra R L]

section
variable (ψ : L →ₗ⁅R⁆ LieDerivation R K K)

variable {ψ} in
/-- As raw types, the semidirect product is just a product. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/SemiDirect/Variant830249eea6d95812376948154e8d10b46f2e2ee6e5805947a5ecd03bbec1c7bc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/SemiDirect/Variant830249eea6d95812376948154e8d10b46f2e2ee6e5805947a5ecd03bbec1c7bc.lean#L47).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6da637caabb63f278ea963fedc45228ceada8b4a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
