# ofEven_comp_toEven

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f6b6f96aaa1ac702f25e0fa20678fe10725ac9d2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 189,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ef/efea7535f7a9325ea2289ad3baf5e4005787edc60fb1e765a686f8f26fd87cbf.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:451610ac-d5a1-41f5-101c-5779d01557e9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6edd0dc8-e097-3a49-dc0c-5ebcfcc7f0af",
  "kind": "theorem",
  "lexical_name": "ofEven_comp_toEven",
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
  "slug": "ofeven-comp-toeven--c54945c82e7b2cb3f8686da2",
  "source": {
    "blob": "f6b6f96aaa1ac702f25e0fa20678fe10725ac9d2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 202,
    "line": 189,
    "path": "GRWTSK/Algebra/LinearAlgebra/EvenEquiv/Variantefea7535f7a9325ea2289ad3baf5e4005787edc60fb1e765a686f8f26fd87cbf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c54945c82e7b2cb3f8686da2cee403a494eda0665983dc4d49da2b7e11d049eb",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/EvenEquiv/Variantefea7535f7a9325ea2289ad3baf5e4005787edc60fb1e765a686f8f26fd87cbf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6edd0dc8-e097-3a49-dc0c-5ebcfcc7f0af`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 189–202.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ofEven_comp_toEven : (ofEven Q).comp (toEven Q) = AlgHom.id R _ :=
  CliffordAlgebra.hom_ext <|
    LinearMap.ext fun m =>
      calc
        ofEven Q (toEven Q (ι Q m)) = ofEven Q ⟨_, (toEven Q (ι Q m)).prop⟩ := by
          rw [Subtype.coe_eta]
        _ = (ι Q 0 + algebraMap R _ 1) * (ι Q m - algebraMap R _ 0) := by
          simp_rw [toEven_ι]
          exact ofEven_ι Q _ _
        _ = ι Q m := by rw [map_one, map_zero, map_zero, sub_zero, zero_add, one_mul]

/-- Any clifford algebra is isomorphic to the even subalgebra of a clifford algebra with an extra
dimension (that is, with vector space `M × R`), with a quadratic form evaluating to `-1` on that new
basis vector. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/EvenEquiv/Variantefea7535f7a9325ea2289ad3baf5e4005787edc60fb1e765a686f8f26fd87cbf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/EvenEquiv/Variantefea7535f7a9325ea2289ad3baf5e4005787edc60fb1e765a686f8f26fd87cbf.lean#L189).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f6b6f96aaa1ac702f25e0fa20678fe10725ac9d2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
