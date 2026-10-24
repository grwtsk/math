# IsClosed.mul_closure_one_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8c3b92c6-176e-0214-c593-58ba3fa11a41",
  "kind": "lemma",
  "lexical_name": "IsClosed.mul_closure_one_eq",
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
  "slug": "isclosed-mul-closure-one-eq--f651685128a5c437144206cc",
  "source": {
    "blob": "7dee92db3f27688625c9e1dbcb309f4152148de8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 279,
    "line": 271,
    "path": "GRWTSK/Topology/GeneralTopology/Pointwise/Variantc5265e4a087c8e2e105ef133033d05af344b959befe9e38660d84aa3fb9a365f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f651685128a5c437144206cc9a238a5d571c377a24c18a8698b1e5656714cc3f",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Pointwise/Variantc5265e4a087c8e2e105ef133033d05af344b959befe9e38660d84aa3fb9a365f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8c3b92c6-176e-0214-c593-58ba3fa11a41`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 271–279.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsClosed.mul_closure_one_eq {F : Set G} (hF : IsClosed F) :
    F * (closure {1} : Set G) = F := by
  refine Subset.antisymm ?_ (subset_mul_closure_one F)
  calc
  F * (closure {1} : Set G) = closure F * closure ({1} : Set G) := by rw [hF.closure_eq]
  _ ⊆ closure (F * ({1} : Set G)) := smul_set_closure_subset _ _
  _ = F := by simp

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Pointwise/Variantc5265e4a087c8e2e105ef133033d05af344b959befe9e38660d84aa3fb9a365f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Pointwise/Variantc5265e4a087c8e2e105ef133033d05af344b959befe9e38660d84aa3fb9a365f.lean#L271).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7dee92db3f27688625c9e1dbcb309f4152148de8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
