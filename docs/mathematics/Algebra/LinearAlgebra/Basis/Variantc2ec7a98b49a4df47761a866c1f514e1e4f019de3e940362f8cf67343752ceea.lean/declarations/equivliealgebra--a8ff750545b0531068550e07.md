# equivLieAlgebra

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6e5fbcd07c29c644f6260fa1a0d44b07ba470c8e0da3e95f47f3ac617c9a30cb",
  "kind": "def",
  "lexical_name": "equivLieAlgebra",
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
  "slug": "equivliealgebra--a8ff750545b0531068550e07",
  "source": {
    "blob": "af5d91abc11e881f0d8e90a2190b7f4e71492dba",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 141,
    "line": 134,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basis/Variantc2ec7a98b49a4df47761a866c1f514e1e4f019de3e940362f8cf67343752ceea.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a8ff750545b0531068550e07968fd1de94e59105bb5b641e208dcf157954a2c4",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basis/Variantc2ec7a98b49a4df47761a866c1f514e1e4f019de3e940362f8cf67343752ceea.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6e5fbcd07c29c644f6260fa1a0d44b07ba470c8e0da3e95f47f3ac617c9a30cb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 134–141.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def equivLieAlgebra (H : LieSubalgebra K L) [H.IsCartanSubalgebra] (b : (rootSystem H).Base) :
    L ≃ₗ⁅K⁆ lieAlgebra b :=
  equivOfRootSystemEquiv <| equivRootSystem b

open scoped Classical in
/-- Every finite-dimensional simple Lie algebra arises from a root system via Geck's construction.

(Provided the coefficients are an algebraically-closed field of characteristic zero.) -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basis/Variantc2ec7a98b49a4df47761a866c1f514e1e4f019de3e940362f8cf67343752ceea.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basis/Variantc2ec7a98b49a4df47761a866c1f514e1e4f019de3e940362f8cf67343752ceea.lean#L134).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `af5d91abc11e881f0d8e90a2190b7f4e71492dba` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
