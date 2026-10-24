# displacement_domain

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b39e3776-d9c9-11d7-5daf-4abe20345af6",
  "kind": "theorem",
  "lexical_name": "displacement_domain",
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
  "slug": "displacement-domain--cd34cb431f0410c9d45721da",
  "source": {
    "blob": "9922cac2f02e593d85c17d16a5b968b7e044efea",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 107,
    "line": 75,
    "path": "GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreySelectedProjectiveMarks.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cd34cb431f0410c9d45721da1162462bf3125187d52e0614bbd516a8448a444d",
  "verification": {
    "reference": "docs/verification/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreySelectedProjectiveMarks.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b39e3776-d9c9-11d7-5daf-4abe20345af6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 75–107.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem displacement_domain (t : PrimitiveAdditiveTriple) (hd : Descends t)
    (i : Fin 3) : (16 : ℤ) ∣ displacement t i ∨ ¬ (2 : ℤ) ∣ displacement t i := by
  by_cases hf : t.a%4=1 ∧ 16 ∣ t.c
  · have ha : ¬ (2 : ℤ) ∣ (t.a : ℤ) := by omega
    have hc : (16 : ℤ) ∣ (t.c : ℤ) := by exact_mod_cast hf.2
    have hs : (t.a : ℤ)+(t.b : ℤ)=(t.c : ℤ) := by exact_mod_cast t.sum_eq
    fin_cases i
    · right
      simpa [displacement, sourceX, anchor, hf] using ha
    · left
      simp [displacement, sourceX, anchor, hf]
    · left
      have he : displacement t 2 = -(t.c : ℤ) := by
        simp only [displacement,sourceX,anchor,if_pos hf,Matrix.cons_val_two]
        omega
      rw [he]
      exact dvd_neg.mpr hc
  · have he := hd.resolve_left hf
    rcases even_distribution t he.2 with ⟨ha,hb⟩ | ⟨ha,hb⟩
    · have ha' : (16 : ℤ) ∣ (t.a : ℤ) := by exact_mod_cast ha
      have hb' : ¬ (2 : ℤ) ∣ (t.b : ℤ) := by exact_mod_cast hb
      fin_cases i
      · left; simp [displacement,sourceX,anchor,hf]
      · left; simpa [displacement,sourceX,anchor,hf] using ha'
      · right; simpa [displacement,sourceX,anchor,hf] using hb'
    · have ha' : ¬ (2 : ℤ) ∣ (t.a : ℤ) := by exact_mod_cast ha
      have hb' : (16 : ℤ) ∣ (t.b : ℤ) := by exact_mod_cast hb
      fin_cases i
      · left; simp [displacement,sourceX,anchor,hf]
      · right; simpa [displacement,sourceX,anchor,hf] using ha'
      · left; simpa [displacement,sourceX,anchor,hf] using dvd_neg.mpr hb'

/-- All three rational representatives lie on the SAME old selectedCurve. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreySelectedProjectiveMarks.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreySelectedProjectiveMarks.lean#L75).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9922cac2f02e593d85c17d16a5b968b7e044efea` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
