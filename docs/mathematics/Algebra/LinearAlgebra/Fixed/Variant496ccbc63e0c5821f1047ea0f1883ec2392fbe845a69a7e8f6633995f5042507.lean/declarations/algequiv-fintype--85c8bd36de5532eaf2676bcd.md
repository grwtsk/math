# AlgEquiv.fintype

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d5b7b50861474eaeb37595b5d8521eb216679cfdecc59f93b4c56bd8477085a9",
  "kind": "instance",
  "lexical_name": "AlgEquiv.fintype",
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
  "slug": "algequiv-fintype--85c8bd36de5532eaf2676bcd",
  "source": {
    "blob": "e3a524d4418f32a103b5dbd6a4f7626e3bba2d12",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 334,
    "line": 330,
    "path": "GRWTSK/Algebra/LinearAlgebra/Fixed/Variant496ccbc63e0c5821f1047ea0f1883ec2392fbe845a69a7e8f6633995f5042507.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:85c8bd36de5532eaf2676bcd9b8f57ca971a5ddbe82d8bf99082208bbfb77fdf",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Fixed/Variant496ccbc63e0c5821f1047ea0f1883ec2392fbe845a69a7e8f6633995f5042507.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d5b7b50861474eaeb37595b5d8521eb216679cfdecc59f93b4c56bd8477085a9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 330–334.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable instance AlgEquiv.fintype (K : Type u) (V : Type v) [Field K] [Field V] [Algebra K V]
    [FiniteDimensional K V] : Fintype (V ≃ₐ[K] V) :=
  Fintype.ofEquiv (V →ₐ[K] V) (algEquivEquivAlgHom K V).symm
#align alg_equiv.fintype AlgEquiv.fintype

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Fixed/Variant496ccbc63e0c5821f1047ea0f1883ec2392fbe845a69a7e8f6633995f5042507.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Fixed/Variant496ccbc63e0c5821f1047ea0f1883ec2392fbe845a69a7e8f6633995f5042507.lean#L330).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e3a524d4418f32a103b5dbd6a4f7626e3bba2d12` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
