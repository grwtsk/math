# decomposition.decompose'_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cf28c6a5-c35a-bb13-14a5-aedbd502f070",
  "kind": "theorem",
  "lexical_name": "decomposition.decompose'_apply",
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
  "slug": "decomposition-decompose-apply--ad0cd19a23f09c05897a76cd",
  "source": {
    "blob": "e0d6bc98efe7e22fe10261e873df0a774f789444",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 542,
    "line": 539,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Homogeneous/Variantb46baa1b5b08b9e337e4be00e1d9337e505b80270e1acda886203441c959448f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ad0cd19a23f09c05897a76cd9cb2307add28fdd66b2e43037ddf8b1e5b8979f6",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Homogeneous/Variantb46baa1b5b08b9e337e4be00e1d9337e505b80270e1acda886203441c959448f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cf28c6a5-c35a-bb13-14a5-aedbd502f070`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 539–542.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem decomposition.decompose'_apply (φ : MvPolynomial σ R) (i : ℕ) :
    (decomposition.decompose' φ i : MvPolynomial σ R) = homogeneousComponent i φ :=
  weightedDecomposition.decompose'_apply R _ φ i

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Homogeneous/Variantb46baa1b5b08b9e337e4be00e1d9337e505b80270e1acda886203441c959448f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Homogeneous/Variantb46baa1b5b08b9e337e4be00e1d9337e505b80270e1acda886203441c959448f.lean#L539).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e0d6bc98efe7e22fe10261e873df0a774f789444` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
