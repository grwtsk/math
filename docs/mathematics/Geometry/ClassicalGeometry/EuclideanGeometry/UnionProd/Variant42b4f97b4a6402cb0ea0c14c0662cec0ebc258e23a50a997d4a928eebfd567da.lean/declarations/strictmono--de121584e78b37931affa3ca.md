# strictMono_φ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e3dcedce-aca8-1f22-3f2b-5a0ce319f028",
  "kind": "lemma",
  "lexical_name": "strictMono_φ",
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
  "slug": "strictmono--de121584e78b37931affa3ca",
  "source": {
    "blob": "2a6de4130ba70cbcf0f16344e81638b7f98613c9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 384,
    "line": 350,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/UnionProd/Variant42b4f97b4a6402cb0ea0c14c0662cec0ebc258e23a50a997d4a928eebfd567da.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:de121584e78b37931affa3cab029e25f222669ec4575bbd83a7f2d2ea70353db",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/UnionProd/Variant42b4f97b4a6402cb0ea0c14c0662cec0ebc258e23a50a997d4a928eebfd567da.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e3dcedce-aca8-1f22-3f2b-5a0ce319f028`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 350–384.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma strictMono_φ : StrictMono (φ x hd) := by
  have hx' := (prodStdSimplex.nonDegenerate_iff_strictMono_objEquiv _).1
    (x.cast hd).nonDegenerate
  rw [Fin.strictMono_iff_lt_succ]
  intro i
  obtain hi | rfl | hi := lt_trichotomy i (min x hd)
  · obtain ⟨i, rfl⟩ := Fin.eq_castSucc_of_ne_last (Fin.ne_last_of_lt hi)
    rw [φ_of_lt _ _ _ (by grind), Fin.castPred_castSucc]
    rw [Fin.castSucc_lt_iff_succ_le] at hi
    obtain hi | hi :=  hi.lt_or_eq
    · rw [φ_of_lt _ _ _ (by grind)]
      exact hx' (Fin.lt_def.2 (by dsimp; grind))
    · rw [← Fin.castSucc_succ, hi, φ_castSucc]
      refine lt_of_le_of_ne ⟨?_, ?_⟩ ?_
      · dsimp
        rw [simplex_fst_le_castSucc_iff]
        grind
      · exact stdSimplex.monotone_apply _
          (by dsimp; rw [← hi]; exact Fin.castSucc_le_succ i)
      · intro h
        rw [Prod.ext_iff] at h
        dsimp at h
        obtain ⟨h₁, h₂⟩ := h
        apply hx _ hd i.succ
        rw [isIndex_succ]
        refine ⟨h₁, ?_, by aesop⟩
        have := φ_succAbove x hd (min x hd)
        rw [Fin.succAbove_castSucc_self] at this
        rw [← φ_succ_fst x hd, this, hi]
        dsimp
  · exact Prod.lt_of_lt_of_le (by simp) (by simp)
  · rw [φ_of_gt _ _ _ (by grind), φ_of_gt _ _ _ (by grind)]
    exact hx' (by grind)

/-- The type (I) simplex reconstructed from a type (II) simplex. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/UnionProd/Variant42b4f97b4a6402cb0ea0c14c0662cec0ebc258e23a50a997d4a928eebfd567da.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/UnionProd/Variant42b4f97b4a6402cb0ea0c14c0662cec0ebc258e23a50a997d4a928eebfd567da.lean#L350).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2a6de4130ba70cbcf0f16344e81638b7f98613c9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
