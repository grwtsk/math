# three_fiber_points_do_not_exhaust_fiber

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3514b65c-4a3d-5067-4c7c-a8989b9be7fe",
  "kind": "theorem",
  "lexical_name": "three_fiber_points_do_not_exhaust_fiber",
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
  "slug": "three-fiber-points-do-not-exhaust-fiber--75f25196b453deafdc64f2f1",
  "source": {
    "blob": "07977530b786f0d87aedb052710379c9a11107aa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 77,
    "line": 70,
    "path": "GRWTSK/Algebra/LinearAlgebra/JacobianConjecture/Variant2ab09d820871ce2884313acafa9f81fb9401c88d0238140d90906c4d97abb1b6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:75f25196b453deafdc64f2f107b1fd5ea8cd9f9e6053c12f36a14bfb1ae0bd15",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/JacobianConjecture/Variant2ab09d820871ce2884313acafa9f81fb9401c88d0238140d90906c4d97abb1b6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3514b65c-4a3d-5067-4c7c-a8989b9be7fe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 70–77.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem three_fiber_points_do_not_exhaust_fiber :
    ∃ F : ℚ → ℚ, F 0 = 0 ∧ F 1 = 0 ∧ F 2 = 0 ∧
      ∃ x, F x = 0 ∧ x ≠ 0 ∧ x ≠ 1 ∧ x ≠ 2 := by
  refine ⟨fun _ ↦ 0, rfl, rfl, rfl, 3, rfl, ?_, ?_, ?_⟩ <;> norm_num

end

end FormalResearch.JacobianConjecture
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/JacobianConjecture/Variant2ab09d820871ce2884313acafa9f81fb9401c88d0238140d90906c4d97abb1b6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/JacobianConjecture/Variant2ab09d820871ce2884313acafa9f81fb9401c88d0238140d90906c4d97abb1b6.lean#L70).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `07977530b786f0d87aedb052710379c9a11107aa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
