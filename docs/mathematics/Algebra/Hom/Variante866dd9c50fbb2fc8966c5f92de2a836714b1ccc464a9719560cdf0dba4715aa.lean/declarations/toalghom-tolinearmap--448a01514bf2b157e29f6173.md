# toAlgHom_toLinearMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:694f5535-7aff-c1ae-15b5-bd0fe9b48637",
  "kind": "theorem",
  "lexical_name": "toAlgHom_toLinearMap",
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
  "slug": "toalghom-tolinearmap--448a01514bf2b157e29f6173",
  "source": {
    "blob": "467e8422c5cc6eaa9866540a83069b8fb98c63c9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 195,
    "line": 190,
    "path": "GRWTSK/Algebra/Hom/Variante866dd9c50fbb2fc8966c5f92de2a836714b1ccc464a9719560cdf0dba4715aa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:448a01514bf2b157e29f6173ddcb7c9bd852ad48dbc43df34c5c406db4c174f6",
  "verification": {
    "reference": "docs/verification/Algebra/Hom/Variante866dd9c50fbb2fc8966c5f92de2a836714b1ccc464a9719560cdf0dba4715aa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:694f5535-7aff-c1ae-15b5-bd0fe9b48637`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 190–195.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem toAlgHom_toLinearMap (f : A →ₐc[R] B) :
    ((f : A →ₐ[R] B) : A →ₗ[R] B) = f := by
  rfl

variable (φ : A →ₐc[R] B)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Hom/Variante866dd9c50fbb2fc8966c5f92de2a836714b1ccc464a9719560cdf0dba4715aa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Hom/Variante866dd9c50fbb2fc8966c5f92de2a836714b1ccc464a9719560cdf0dba4715aa.lean#L190).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `467e8422c5cc6eaa9866540a83069b8fb98c63c9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
