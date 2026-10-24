# DistribSMul.toLinearMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ef574bfd3acf8fa2155632f05d4d2888ca5beb3cd9a726a752530d38d9ed589b",
  "kind": "def",
  "lexical_name": "DistribSMul.toLinearMap",
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
  "slug": "distribsmul-tolinearmap--b2692cddd1b78621419621cc",
  "source": {
    "blob": "485d17dedd0d78752818c8b7c81dcb378252f585",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 249,
    "line": 241,
    "path": "GRWTSK/Algebra/LinearAlgebra/End/Variant2ad29f87f6f306f5e39f5081607749a66b94b447bdba9dea0c354defcc54ddb4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b2692cddd1b78621419621cc41a78ed91af933caa953633e138f98e003a8e766",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/End/Variant2ad29f87f6f306f5e39f5081607749a66b94b447bdba9dea0c354defcc54ddb4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ef574bfd3acf8fa2155632f05d4d2888ca5beb3cd9a726a752530d38d9ed589b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 241–249.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def DistribSMul.toLinearMap [DistribSMul S M] [SMulCommClass S R M] (s : S) : M →ₗ[R] M where
  toFun := HSMul.hSMul s
  map_add' := smul_add s
  map_smul' _ _ := smul_comm _ _ _

/-- Each element of the monoid defines a module endomorphism.

This is a stronger version of `DistribMulAction.toAddMonoidEnd`. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/End/Variant2ad29f87f6f306f5e39f5081607749a66b94b447bdba9dea0c354defcc54ddb4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/End/Variant2ad29f87f6f306f5e39f5081607749a66b94b447bdba9dea0c354defcc54ddb4.lean#L241).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `485d17dedd0d78752818c8b7c81dcb378252f585` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
