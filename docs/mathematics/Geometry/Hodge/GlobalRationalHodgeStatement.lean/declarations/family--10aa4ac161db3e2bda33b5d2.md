# Family

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8455ae28bceb6c3b3c78da813e92be82d008d16f778fc2a060b8c7713e2ac910",
  "kind": "structure",
  "lexical_name": "Family",
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
  "slug": "family--10aa4ac161db3e2bda33b5d2",
  "source": {
    "blob": "d536ee14a0ac5fab97d6696b6d9212faeadb5907",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 34,
    "line": 21,
    "path": "GRWTSK/Geometry/Hodge/GlobalRationalHodgeStatement.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:10aa4ac161db3e2bda33b5d267cd6f9742707e435f536dbbdd814966e3a9a5d3",
  "verification": {
    "reference": "docs/verification/Geometry/Hodge/GlobalRationalHodgeStatement.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8455ae28bceb6c3b3c78da813e92be82d008d16f778fc2a060b8c7713e2ac910`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 21–34.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure Family (I : Type u) where
  cycle : I → ModuleCat.{v} ℚ
  hodgeClass : I → ModuleCat.{w} ℚ
  cycleClass : ∀ i, cycle i →ₗ[ℚ] hodgeClass i
  varietyIdentity : I → String
  codimension : I → ℕ
  realization : I → String

namespace Family

variable {I : Type u}

/-- The global rational-Hodge statement is simultaneous surjectivity of every exact
cycle-class map in the indexed family. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Geometry/Hodge/GlobalRationalHodgeStatement.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/Hodge/GlobalRationalHodgeStatement.lean#L21).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d536ee14a0ac5fab97d6696b6d9212faeadb5907` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
