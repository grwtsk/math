# unitization_range

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f23d0d807ad6fd118a05c62611a31cf9f47e4f1b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 238,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c3/c3bf32612a9677b9bf7fb2e950130bcf0785a12cd1766483c6c85f58ba86ca15.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e4f906bf-4a53-6218-e29d-4830ff53bb78",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ac836129-5402-9291-45b1-3eb3c5675d5b",
  "kind": "theorem",
  "lexical_name": "unitization_range",
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
  "slug": "unitization-range--f8a9a29209b2a2e3c85fc4ab",
  "source": {
    "blob": "f23d0d807ad6fd118a05c62611a31cf9f47e4f1b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 251,
    "line": 238,
    "path": "GRWTSK/Algebra/Unitization/Variantc3bf32612a9677b9bf7fb2e950130bcf0785a12cd1766483c6c85f58ba86ca15.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f8a9a29209b2a2e3c85fc4abc60830972daf8ffa7a9c21a54f3d3f899f0c988a",
  "verification": {
    "reference": "docs/verification/Algebra/Unitization/Variantc3bf32612a9677b9bf7fb2e950130bcf0785a12cd1766483c6c85f58ba86ca15.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ac836129-5402-9291-45b1-3eb3c5675d5b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 238–251.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem unitization_range : (unitization s).range = StarAlgebra.adjoin R s := by
  rw [unitization, Unitization.starLift_range]
  simp only [NonUnitalStarAlgHom.coe_range, NonUnitalStarSubalgebraClass.coe_subtype,
    Subtype.range_coe_subtype]
  rfl

end Semiring

section Field

variable {R S A : Type*} [Field R] [StarRing R] [Ring A] [StarRing A] [Algebra R A]
  [StarModule R A] [SetLike S A] [hSA : NonUnitalSubringClass S A] [hSRA : SMulMemClass S R A]
  [StarMemClass S A] (s : S)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Unitization/Variantc3bf32612a9677b9bf7fb2e950130bcf0785a12cd1766483c6c85f58ba86ca15.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Unitization/Variantc3bf32612a9677b9bf7fb2e950130bcf0785a12cd1766483c6c85f58ba86ca15.lean#L238).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f23d0d807ad6fd118a05c62611a31cf9f47e4f1b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
