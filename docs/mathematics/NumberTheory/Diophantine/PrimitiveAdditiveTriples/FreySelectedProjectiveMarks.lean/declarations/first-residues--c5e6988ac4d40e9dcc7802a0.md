# first_residues

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c72ef6ac-d3b7-04d5-4377-5dccde680873",
  "kind": "theorem",
  "lexical_name": "first_residues",
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
  "slug": "first-residues--c5e6988ac4d40e9dcc7802a0",
  "source": {
    "blob": "9922cac2f02e593d85c17d16a5b968b7e044efea",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 217,
    "line": 198,
    "path": "GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreySelectedProjectiveMarks.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c5e6988ac4d40e9dcc7802a063ce64ff6f05db47f4624017c1b1720c40777172",
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

Occurrence: `result:c72ef6ac-d3b7-04d5-4377-5dccde680873`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 198–217.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem first_residues (t : PrimitiveAdditiveTriple) (hf : t.a%4=1 ∧ 16 ∣ t.c) :
    reduced t 0 = ![0,1,0] ∧ reduced t 1 = ![0,0,1] ∧
      reduced t 2 = ![0,0,1] := by
  have hd : Descends t := Or.inl hf
  have ha : ¬ (2 : ℤ) ∣ -(t.a : ℤ) := by omega
  have hc : (16 : ℤ) ∣ -(t.c : ℤ) := by
    apply dvd_neg.mpr
    exact_mod_cast hf.2
  have hs : (t.a : ℤ)+(t.b : ℤ)=(t.c : ℤ) := by exact_mod_cast t.sum_eq
  have h0 : displacement t 0 = -(t.a : ℤ) := by simp [displacement,sourceX,anchor,hf]
  have h1 : displacement t 1 = 0 := by simp [displacement,sourceX,anchor,hf]
  have h2 : displacement t 2 = -(t.c : ℤ) := by
    simp only [displacement,sourceX,anchor,if_pos hf,Matrix.cons_val_two]
    omega
  simp only [reduced,coordinates,if_pos hd,h0,h1,h2]
  exact ⟨mark_binary_of_odd _ ha,mark_binary_of_divisible 0 (dvd_zero 16),
    mark_binary_of_divisible _ hc⟩

/-- Second-chamber labels: the ODD summand goes to infinity, while T0
and the even summand collide at the affine origin. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreySelectedProjectiveMarks.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreySelectedProjectiveMarks.lean#L198).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9922cac2f02e593d85c17d16a5b968b7e044efea` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
