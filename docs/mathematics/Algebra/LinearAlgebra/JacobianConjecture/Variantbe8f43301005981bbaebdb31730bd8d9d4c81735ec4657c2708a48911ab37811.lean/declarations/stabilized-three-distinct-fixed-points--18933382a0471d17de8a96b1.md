# stabilized_three_distinct_fixed_points

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "cb3f649a194aeadb7ec452012608e91424d8478e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 155,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/be/be8f43301005981bbaebdb31730bd8d9d4c81735ec4657c2708a48911ab37811.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:151e40ef-d0e0-d073-f955-dd75b84d2487",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1ac868e5-89b3-b470-dd46-2c6c9747aac4",
  "kind": "theorem",
  "lexical_name": "stabilized_three_distinct_fixed_points",
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
  "slug": "stabilized-three-distinct-fixed-points--18933382a0471d17de8a96b1",
  "source": {
    "blob": "cb3f649a194aeadb7ec452012608e91424d8478e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 170,
    "line": 155,
    "path": "GRWTSK/Algebra/LinearAlgebra/JacobianConjecture/Variantbe8f43301005981bbaebdb31730bd8d9d4c81735ec4657c2708a48911ab37811.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:18933382a0471d17de8a96b1ca578f52d4400df209d1d3acd7dc038608094826",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/JacobianConjecture/Variantbe8f43301005981bbaebdb31730bd8d9d4c81735ec4657c2708a48911ab37811.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1ac868e5-89b3-b470-dd46-2c6c9747aac4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 155–170.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem stabilized_three_distinct_fixed_points (n : ℕ) :
    ∃ a b c : StabilizedCoordinates n, a ≠ b ∧ a ≠ c ∧ b ≠ c ∧
      Function.IsFixedPt (stabilizedTransform n) a ∧
      Function.IsFixedPt (stabilizedTransform n) b ∧
      Function.IsFixedPt (stabilizedTransform n) c := by
  obtain ⟨a, b, c, hab, hac, hbc, ha, hb, hc⟩ :=
    stabilized_three_distinct_fiber_points n
  refine ⟨a, b, c, hab, hac, hbc, ?_, ?_, ?_⟩ <;>
    apply (fixed_point_transform_id_fixed_iff (R := ℚ) _ _ _).mpr
  · exact ha
  · exact hb
  · exact hc

end

end FormalResearch.JacobianConjecture
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/JacobianConjecture/Variantbe8f43301005981bbaebdb31730bd8d9d4c81735ec4657c2708a48911ab37811.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/JacobianConjecture/Variantbe8f43301005981bbaebdb31730bd8d9d4c81735ec4657c2708a48911ab37811.lean#L155).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cb3f649a194aeadb7ec452012608e91424d8478e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
