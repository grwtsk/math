# normal_iInf_normal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ba1c42be-3895-7ccd-eb91-eb05a71484f2",
  "kind": "theorem",
  "lexical_name": "normal_iInf_normal",
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
  "slug": "normal-iinf-normal--db084a9db6ace3bc01105932",
  "source": {
    "blob": "21a3634cf5f0ba2d14d0a7ace9a2497d13f8e2e5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 901,
    "line": 893,
    "path": "GRWTSK/Algebra/GroupTheory/Basic/Variantbab9cff04df9f601be06afbd19c42575166eba6a9a09e34aff8cdb13603494e5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:db084a9db6ace3bc0110593227c32181b6705fe2d6ecaeeb779a8f48f45dd9c0",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Basic/Variantbab9cff04df9f601be06afbd19c42575166eba6a9a09e34aff8cdb13603494e5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ba1c42be-3895-7ccd-eb91-eb05a71484f2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 893–901.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem normal_iInf_normal {ι : Type*} {a : ι → Subgroup G}
    (norm : ∀ i : ι, (a i).Normal) : (iInf a).Normal := by
  constructor
  intro g g_in_iInf h
  rw [Subgroup.mem_iInf] at g_in_iInf ⊢
  intro i
  exact (norm i).conj_mem g (g_in_iInf i) h

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Basic/Variantbab9cff04df9f601be06afbd19c42575166eba6a9a09e34aff8cdb13603494e5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Basic/Variantbab9cff04df9f601be06afbd19c42575166eba6a9a09e34aff8cdb13603494e5.lean#L893).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `21a3634cf5f0ba2d14d0a7ace9a2497d13f8e2e5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
