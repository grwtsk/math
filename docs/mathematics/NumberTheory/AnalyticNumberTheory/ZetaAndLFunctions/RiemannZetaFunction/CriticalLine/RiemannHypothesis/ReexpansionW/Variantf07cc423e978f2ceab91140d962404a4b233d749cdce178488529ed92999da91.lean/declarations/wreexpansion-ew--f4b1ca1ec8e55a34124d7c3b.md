# wReexpansion_eW

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c9461383-3dba-53c6-4b3e-31f71cc7d6fc",
  "kind": "theorem",
  "lexical_name": "wReexpansion_eW",
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
  "slug": "wreexpansion-ew--f4b1ca1ec8e55a34124d7c3b",
  "source": {
    "blob": "6ee539ef73d8e16e484e7bff25a2268233265d58",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 59,
    "line": 46,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ReexpansionW/Variantf07cc423e978f2ceab91140d962404a4b233d749cdce178488529ed92999da91.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f4b1ca1ec8e55a34124d7c3bf08e4c066c6aaff2eb252441293425f7c848f70a",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ReexpansionW/Variantf07cc423e978f2ceab91140d962404a4b233d749cdce178488529ed92999da91.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c9461383-3dba-53c6-4b3e-31f71cc7d6fc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 46–59.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem wReexpansion_eW : ∃ ρ₀ A T₀ : ℝ, 0 ≤ ρ₀ ∧ ReexpansionW wCoeffFamily eW ρ₀ A T₀ := by
  refine ⟨4, CF, T0re, by norm_num, ?_⟩
  exact
    { expand := fun T hT δ hδ N => by
        have hl := l_ge_of_T0re_le hT
        have hKe : 0 ≤ 128 * Real.exp 1 * KM := mul_nonneg (by positivity) KM_nonneg
        have h := eGen_expand halfL halfL_re (T := T) (by linarith) hδ N
        simpa [eW, halfL, wCoeffFamily] using h
      e_one := fun T r => eGen_one halfL T r
      H1 := fun T hT r _ x hx2 hxl => eGen_H1 halfL halfL_re hT r hx2 hxl
      H2 := fun T hT r _ x hx2 hxl => eGen_H2 halfL halfL_re hT r hx2 hxl
      H3 := fun T hT r _ x hx2 hxl => eGen_H3 halfL halfL_re hT r hx2 hxl }

/-- **ReexpansionW for the Z′ coefficient family**, ∃-e form (the sentence InputsW.lean asks for). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ReexpansionW/Variantf07cc423e978f2ceab91140d962404a4b233d749cdce178488529ed92999da91.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ReexpansionW/Variantf07cc423e978f2ceab91140d962404a4b233d749cdce178488529ed92999da91.lean#L46).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6ee539ef73d8e16e484e7bff25a2268233265d58` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
