# stabilized_three_distinct_fiber_points

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:732ecff0-6bf7-ba17-6e06-25dbcf5fd785",
  "kind": "theorem",
  "lexical_name": "stabilized_three_distinct_fiber_points",
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
  "slug": "stabilized-three-distinct-fiber-points--1f217f3c3260fc743c166079",
  "source": {
    "blob": "2063741e42cb80823e3f893846157bdec9978587",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 120,
    "line": 107,
    "path": "GRWTSK/Algebra/LinearAlgebra/JacobianConjecture/Variant7c3a45773cdd216017e8f40dfba5f3f2beb428d9ac94ce85a023a7621b0efbef.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1f217f3c3260fc743c16607985dfaa9a9918e0164e1d49cc393b36f5647addfd",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/JacobianConjecture/Variant7c3a45773cdd216017e8f40dfba5f3f2beb428d9ac94ce85a023a7621b0efbef.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:732ecff0-6bf7-ba17-6e06-25dbcf5fd785`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 107–120.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem stabilized_three_distinct_fiber_points (n : ℕ) :
    ∃ a b c : StabilizedCoordinates n, a ≠ b ∧ a ≠ c ∧ b ≠ c ∧
      stabilizedMap n a = stabilizePoint n target ∧
      stabilizedMap n b = stabilizePoint n target ∧
      stabilizedMap n c = stabilizePoint n target := by
  refine ⟨stabilizePoint n pZero, stabilizePoint n pPlus, stabilizePoint n pMinus,
    ?_, ?_, ?_, ?_, ?_, ?_⟩
  · exact fun h ↦ p_zero_ne_p_plus (stabilize_point_injective n h)
  · exact fun h ↦ p_zero_ne_p_minus (stabilize_point_injective n h)
  · exact fun h ↦ p_plus_ne_p_minus (stabilize_point_injective n h)
  · rw [stabilized_map_stabilize_point, alpogeFable_p_zero]
  · rw [stabilized_map_stabilize_point, alpogeFable_p_plus]
  · rw [stabilized_map_stabilize_point, alpogeFable_p_minus]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/JacobianConjecture/Variant7c3a45773cdd216017e8f40dfba5f3f2beb428d9ac94ce85a023a7621b0efbef.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/JacobianConjecture/Variant7c3a45773cdd216017e8f40dfba5f3f2beb428d9ac94ce85a023a7621b0efbef.lean#L107).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2063741e42cb80823e3f893846157bdec9978587` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
