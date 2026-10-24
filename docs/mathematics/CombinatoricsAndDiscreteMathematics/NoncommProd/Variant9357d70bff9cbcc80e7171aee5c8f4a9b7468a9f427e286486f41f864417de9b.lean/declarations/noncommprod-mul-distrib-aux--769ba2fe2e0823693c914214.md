# noncommProd_mul_distrib_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1d96b6c472c09693fdd814cb0e7f042f487ebb3a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 385,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/93/9357d70bff9cbcc80e7171aee5c8f4a9b7468a9f427e286486f41f864417de9b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7038e8ff-9b2b-bbe2-6f5f-00e7c0671940",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:eed36dc6-bbec-2c1d-77e2-3d0ae9dcebad",
  "kind": "theorem",
  "lexical_name": "noncommProd_mul_distrib_aux",
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
  "slug": "noncommprod-mul-distrib-aux--769ba2fe2e0823693c914214",
  "source": {
    "blob": "1d96b6c472c09693fdd814cb0e7f042f487ebb3a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 398,
    "line": 385,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/NoncommProd/Variant9357d70bff9cbcc80e7171aee5c8f4a9b7468a9f427e286486f41f864417de9b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:769ba2fe2e0823693c914214860db9d244444e5e7b3d1ee0f6c92fc98cd9f1c1",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/NoncommProd/Variant9357d70bff9cbcc80e7171aee5c8f4a9b7468a9f427e286486f41f864417de9b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:eed36dc6-bbec-2c1d-77e2-3d0ae9dcebad`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 385–398.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem noncommProd_mul_distrib_aux {s : Finset α} {f : α → β} {g : α → β}
    (comm_ff : (s : Set α).Pairwise (Commute on f))
    (comm_gg : (s : Set α).Pairwise (Commute on g))
    (comm_gf : (s : Set α).Pairwise fun x y => Commute (g x) (f y)) :
    (s : Set α).Pairwise fun x y => Commute ((f * g) x) ((f * g) y) := by
  intro x hx y hy h
  apply Commute.mul_left <;> apply Commute.mul_right
  · exact comm_ff.of_refl hx hy
  · exact (comm_gf hy hx h.symm).symm
  · exact comm_gf hx hy h
  · exact comm_gg.of_refl hx hy

/-- The non-commutative version of `Finset.prod_mul_distrib` -/
@[to_additive "The non-commutative version of `Finset.sum_add_distrib`"]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/NoncommProd/Variant9357d70bff9cbcc80e7171aee5c8f4a9b7468a9f427e286486f41f864417de9b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/NoncommProd/Variant9357d70bff9cbcc80e7171aee5c8f4a9b7468a9f427e286486f41f864417de9b.lean#L385).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1d96b6c472c09693fdd814cb0e7f042f487ebb3a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
