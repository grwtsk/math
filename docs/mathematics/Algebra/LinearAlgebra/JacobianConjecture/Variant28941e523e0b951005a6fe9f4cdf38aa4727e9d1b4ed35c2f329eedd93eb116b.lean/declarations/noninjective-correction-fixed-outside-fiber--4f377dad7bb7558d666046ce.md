# noninjective_correction_fixed_outside_fiber

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c600631393af81423189d19912f8f31703d0d14f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 65,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/28/28941e523e0b951005a6fe9f4cdf38aa4727e9d1b4ed35c2f329eedd93eb116b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1c53610d-4731-3bff-9c88-6b648291df84",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1f697c94-545b-6f2c-6434-a9fb3d6a4d0a",
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
  "slug": "noninjective-correction-fixed-outside-fiber--4f377dad7bb7558d666046ce",
  "source": {
    "blob": "c600631393af81423189d19912f8f31703d0d14f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 74,
    "line": 65,
    "path": "GRWTSK/Algebra/LinearAlgebra/JacobianConjecture/Variant28941e523e0b951005a6fe9f4cdf38aa4727e9d1b4ed35c2f329eedd93eb116b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4f377dad7bb7558d666046ce2d69bb9e9243ea292d07d27e6468c935dea273b5",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/JacobianConjecture/Variant28941e523e0b951005a6fe9f4cdf38aa4727e9d1b4ed35c2f329eedd93eb116b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1f697c94-545b-6f2c-6434-a9fb3d6a4d0a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 65–74.

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

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/JacobianConjecture/Variant28941e523e0b951005a6fe9f4cdf38aa4727e9d1b4ed35c2f329eedd93eb116b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/JacobianConjecture/Variant28941e523e0b951005a6fe9f4cdf38aa4727e9d1b4ed35c2f329eedd93eb116b.lean#L65).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c600631393af81423189d19912f8f31703d0d14f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
