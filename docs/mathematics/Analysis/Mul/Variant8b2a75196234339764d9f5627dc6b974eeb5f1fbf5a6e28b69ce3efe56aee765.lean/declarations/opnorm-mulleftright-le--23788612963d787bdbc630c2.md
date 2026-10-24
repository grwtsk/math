# opNorm_mulLeftRight_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d2961e87-fef0-e8c1-d094-8d9fbbc6e387",
  "kind": "theorem",
  "lexical_name": "opNorm_mulLeftRight_le",
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
  "slug": "opnorm-mulleftright-le--23788612963d787bdbc630c2",
  "source": {
    "blob": "f2380814d0a83afb95cd4b02609043aeb38b623a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 112,
    "line": 100,
    "path": "GRWTSK/Analysis/Mul/Variant8b2a75196234339764d9f5627dc6b974eeb5f1fbf5a6e28b69ce3efe56aee765.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:23788612963d787bdbc630c2922afd7df30876bba52de6e2cc4484edbf2268e4",
  "verification": {
    "reference": "docs/verification/Analysis/Mul/Variant8b2a75196234339764d9f5627dc6b974eeb5f1fbf5a6e28b69ce3efe56aee765.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d2961e87-fef0-e8c1-d094-8d9fbbc6e387`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 100–112.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem opNorm_mulLeftRight_le :
    ‖mulLeftRight 𝕜 R‖ ≤ 1 :=
  opNorm_le_bound _ zero_le_one fun x => (one_mul ‖x‖).symm ▸ opNorm_mulLeftRight_apply_le 𝕜 R x


/-- This is a mixin class for non-unital normed algebras which states that the left-regular
representation of the algebra on itself is isometric. Every unital normed algebra with `‖1‖ = 1` is
a regular normed algebra (see `NormedAlgebra.instRegularNormedAlgebra`). In addition, so is every
C⋆-algebra, non-unital included (see `CStarRing.instRegularNormedAlgebra`), but there are yet other
examples. Any algebra with an approximate identity (e.g., `L¹`) is also regular.

This is a useful class because it gives rise to a nice norm on the unitization; in particular it is
a C⋆-norm when the norm on `A` is a C⋆-norm. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/Mul/Variant8b2a75196234339764d9f5627dc6b974eeb5f1fbf5a6e28b69ce3efe56aee765.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Mul/Variant8b2a75196234339764d9f5627dc6b974eeb5f1fbf5a6e28b69ce3efe56aee765.lean#L100).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f2380814d0a83afb95cd4b02609043aeb38b623a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
