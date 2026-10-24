# normal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6ec416816bb2a8286a9c7813eab0cec73b06a34ca7e6a3c74841e4e579f9ffc7",
  "kind": "instance",
  "lexical_name": "normal",
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
  "slug": "normal--4ecca12cc4598e8b19ec4bc3",
  "source": {
    "blob": "c9f644c80bb1e8de365d21dcfd28821d6bef15be",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 272,
    "line": 264,
    "path": "GRWTSK/Algebra/LinearAlgebra/Fixed/Variant96a461151c3fda0cd396b15893c8ca2125c8e098977365976ad5f915b1652ccf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4ecca12cc4598e8b19ec4bc3b5e3d4b4ff43e2fb5cb2e0d69b5db90c602f5b06",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Fixed/Variant96a461151c3fda0cd396b15893c8ca2125c8e098977365976ad5f915b1652ccf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6ec416816bb2a8286a9c7813eab0cec73b06a34ca7e6a3c74841e4e579f9ffc7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 264–272.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance normal : Normal (FixedPoints.subfield G F) F where
  isAlgebraic x := (isIntegral G F x).isAlgebraic
  splits' x :=
    (Polynomial.splits_id_iff_splits _).1 <| by
      cases nonempty_fintype G
      rw [← minpoly_eq_minpoly, minpoly, coe_algebraMap, ← Subfield.toSubring_subtype_eq_subtype,
        Polynomial.map_toSubring _ (subfield G F).toSubring, prodXSubSMul]
      exact Polynomial.splits_prod _ fun _ _ => Polynomial.splits_X_sub_C _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Fixed/Variant96a461151c3fda0cd396b15893c8ca2125c8e098977365976ad5f915b1652ccf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Fixed/Variant96a461151c3fda0cd396b15893c8ca2125c8e098977365976ad5f915b1652ccf.lean#L264).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c9f644c80bb1e8de365d21dcfd28821d6bef15be` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
