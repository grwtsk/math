# fst_pow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b38036d8-a434-7301-3bfb-627f04ecd430",
  "kind": "theorem",
  "lexical_name": "fst_pow",
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
  "slug": "fst-pow--a6c455c43c41f9d6aa65a8a1",
  "source": {
    "blob": "5312a3843b058f246d7bded10f6a2aa1f41a956a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 607,
    "line": 603,
    "path": "GRWTSK/Algebra/LinearAlgebra/TrivSqZeroExt/Variant5dc6b52b4b0c4d29ff7c7dfe2baa3b110a897a8e850ff2f32afce4810197c30d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a6c455c43c41f9d6aa65a8a1aa040709b62a4c78146bd416250d1094a3e72548",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/TrivSqZeroExt/Variant5dc6b52b4b0c4d29ff7c7dfe2baa3b110a897a8e850ff2f32afce4810197c30d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b38036d8-a434-7301-3bfb-627f04ecd430`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 603–607.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fst_pow [Monoid R] [AddMonoid M] [DistribMulAction R M] [DistribMulAction Rᵐᵒᵖ M]
    (x : tsze R M) (n : ℕ) : fst (x ^ n) = x.fst ^ n :=
  rfl
#align triv_sq_zero_ext.fst_pow TrivSqZeroExt.fst_pow

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/TrivSqZeroExt/Variant5dc6b52b4b0c4d29ff7c7dfe2baa3b110a897a8e850ff2f32afce4810197c30d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/TrivSqZeroExt/Variant5dc6b52b4b0c4d29ff7c7dfe2baa3b110a897a8e850ff2f32afce4810197c30d.lean#L603).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5312a3843b058f246d7bded10f6a2aa1f41a956a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
