# lsum_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:92f68b41-c65d-fe9c-d37a-be6cae477767",
  "kind": "theorem",
  "lexical_name": "lsum_apply",
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
  "slug": "lsum-apply--4e0f9ec4609c9c85c26e3f2f",
  "source": {
    "blob": "d58074e8851f67a24ccb1825cd71d8953ec6d75f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 130,
    "line": 128,
    "path": "GRWTSK/Algebra/LinearAlgebra/LSum/Variant16b0704db9e49be2216a043feee51c0066a9705a7d34c6d5a2f47434c67ca53a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4e0f9ec4609c9c85c26e3f2fa757fc4bf06300ab0ac91232568d05e23c1575f4",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/LSum/Variant16b0704db9e49be2216a043feee51c0066a9705a7d34c6d5a2f47434c67ca53a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:92f68b41-c65d-fe9c-d37a-be6cae477767`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 128–130.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lsum_apply (f : α → M →ₛₗ[σ] N) (l : α →₀ M) : Finsupp.lsum S f l = l.sum fun b => f b :=
  rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/LSum/Variant16b0704db9e49be2216a043feee51c0066a9705a7d34c6d5a2f47434c67ca53a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/LSum/Variant16b0704db9e49be2216a043feee51c0066a9705a7d34c6d5a2f47434c67ca53a.lean#L128).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d58074e8851f67a24ccb1825cd71d8953ec6d75f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
