# congruenceCoordinates

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c8882c1dd4bcfbddb49d79eac9855c13d7d8a0fd0afebb20ac496f77fdae6ea0",
  "kind": "def",
  "lexical_name": "congruenceCoordinates",
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
  "slug": "congruencecoordinates--2bbcdd96fe652951f2b2738d",
  "source": {
    "blob": "6169035f6185d311fc0badea47cb29c249a0ef24",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 68,
    "line": 64,
    "path": "GRWTSK/Algebra/LinearAlgebra/HermitianInertiaDraft/Variant54c48e28fe662c925652f7c79ab1bd56f0247aca1d77db7b3fb2c1a2962e4410.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2bbcdd96fe652951f2b2738d9de92a63104be352ff2e82e14cc819adf7363c52",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/HermitianInertiaDraft/Variant54c48e28fe662c925652f7c79ab1bd56f0247aca1d77db7b3fb2c1a2962e4410.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c8882c1dd4bcfbddb49d79eac9855c13d7d8a0fd0afebb20ac496f77fdae6ea0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 64–68.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def congruenceCoordinates (P : Matrix σ σ ℂ) (hP : P.det ≠ 0) :
    (σ → ℂ) ≃ₗ[ℝ] (σ → ℂ) :=
  (Matrix.toLin'OfInv (Matrix.nonsing_inv_mul P (isUnit_iff_ne_zero.mpr hP))
    (Matrix.mul_nonsing_inv P (isUnit_iff_ne_zero.mpr hP))).restrictScalars ℝ

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/HermitianInertiaDraft/Variant54c48e28fe662c925652f7c79ab1bd56f0247aca1d77db7b3fb2c1a2962e4410.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/HermitianInertiaDraft/Variant54c48e28fe662c925652f7c79ab1bd56f0247aca1d77db7b3fb2c1a2962e4410.lean#L64).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6169035f6185d311fc0badea47cb29c249a0ef24` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
