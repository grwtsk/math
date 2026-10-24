# lift_symm_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:08a909ee-c752-d71a-552a-21db6af9a879",
  "kind": "theorem",
  "lexical_name": "lift_symm_apply",
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
  "slug": "lift-symm-apply--6f4eed709c21425e734fa911",
  "source": {
    "blob": "8579c839f16075ec7f4594e5bc8bc626ec1dee43",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 134,
    "line": 130,
    "path": "GRWTSK/Algebra/UniversalEnveloping/Variant93b94d891a4d3cb7c936bb94b058186b3dcfdd67c1fc5e56165e3e1ef592caa4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6f4eed709c21425e734fa911ffdded652eb543bd999bcf4f0494f13c3440ebf1",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalEnveloping/Variant93b94d891a4d3cb7c936bb94b058186b3dcfdd67c1fc5e56165e3e1ef592caa4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:08a909ee-c752-d71a-552a-21db6af9a879`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 130–134.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lift_symm_apply (F : UniversalEnvelopingAlgebra R L →ₐ[R] A) :
    (lift R).symm F = (F : UniversalEnvelopingAlgebra R L →ₗ⁅R⁆ A).comp (ι R) :=
  rfl

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/UniversalEnveloping/Variant93b94d891a4d3cb7c936bb94b058186b3dcfdd67c1fc5e56165e3e1ef592caa4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalEnveloping/Variant93b94d891a4d3cb7c936bb94b058186b3dcfdd67c1fc5e56165e3e1ef592caa4.lean#L130).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8579c839f16075ec7f4594e5bc8bc626ec1dee43` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
