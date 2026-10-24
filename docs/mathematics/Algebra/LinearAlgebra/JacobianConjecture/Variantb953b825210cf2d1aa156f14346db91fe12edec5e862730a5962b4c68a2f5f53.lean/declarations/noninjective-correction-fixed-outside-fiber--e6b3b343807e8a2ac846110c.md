# noninjective_correction_fixed_outside_fiber

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:56e02b91-2767-0c26-c684-d3ca2c046861",
  "kind": "theorem",
  "lexical_name": "noninjective_correction_fixed_outside_fiber",
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
  "slug": "noninjective-correction-fixed-outside-fiber--e6b3b343807e8a2ac846110c",
  "source": {
    "blob": "22312e548a8b559a3ce3e66893250ff4c33311d9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 82,
    "line": 73,
    "path": "GRWTSK/Algebra/LinearAlgebra/JacobianConjecture/Variantb953b825210cf2d1aa156f14346db91fe12edec5e862730a5962b4c68a2f5f53.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e6b3b343807e8a2ac846110c1683c1f6a3f372db349bad29e3d51e39e8f1bc6a",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/JacobianConjecture/Variantb953b825210cf2d1aa156f14346db91fe12edec5e862730a5962b4c68a2f5f53.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:56e02b91-2767-0c26-c684-d3ca2c046861`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 73–82.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem noninjective_correction_fixed_outside_fiber :
    ¬ Function.Injective (0 : ℚ →ₗ[ℚ] ℚ) ∧
      Function.IsFixedPt
        (fixedPointTransform (0 : ℚ →ₗ[ℚ] ℚ) (fun _ ↦ 1) 0) 0 ∧
      (fun _ : ℚ ↦ 1) 0 ≠ 0 := by
  refine ⟨?_, fixed_point_transform_zero _ _ _, one_ne_zero⟩
  intro h
  exact zero_ne_one (h (show (0 : ℚ →ₗ[ℚ] ℚ) 0 = (0 : ℚ →ₗ[ℚ] ℚ) 1 from rfl))

end FormalResearch.JacobianConjecture
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/JacobianConjecture/Variantb953b825210cf2d1aa156f14346db91fe12edec5e862730a5962b4c68a2f5f53.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/JacobianConjecture/Variantb953b825210cf2d1aa156f14346db91fe12edec5e862730a5962b4c68a2f5f53.lean#L73).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `22312e548a8b559a3ce3e66893250ff4c33311d9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
