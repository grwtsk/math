# nonneg_or_nonpos_of_mul_nonneg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8b166f71-f027-099e-9c76-254ae94a98e2",
  "kind": "theorem",
  "lexical_name": "nonneg_or_nonpos_of_mul_nonneg",
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
  "slug": "nonneg-or-nonpos-of-mul-nonneg--acb322fe2eb87a28d51fb875",
  "source": {
    "blob": "97823c6cb0dcf8d4980718cb552775b67e9c6e6d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 67,
    "line": 54,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Basic/Variant117b02e97aa2d0d26b1e3c7e7f89b1e4245b9ccc826017ac07385ab00a379cae.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:acb322fe2eb87a28d51fb875bd491366a0563b788d7872dc01c34d0bfb0db8b5",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Basic/Variant117b02e97aa2d0d26b1e3c7e7f89b1e4245b9ccc826017ac07385ab00a379cae.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8b166f71-f027-099e-9c76-254ae94a98e2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 54–67.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nonneg_or_nonpos_of_mul_nonneg {a b : ℤ} : 0 ≤ a * b → 0 ≤ a ∧ 0 ≤ b ∨ a ≤ 0 ∧ b ≤ 0 := by
  intro h
  by_cases ha : 0 ≤ a <;> by_cases hb : 0 ≤ b
  · exact .inl ⟨ha, hb⟩
  · refine .inr ⟨?_, le_of_not_le hb⟩
    obtain _ | _ := Int.mul_eq_zero.mp <|
      Int.le_antisymm (Int.mul_nonpos_of_nonneg_of_nonpos ha <| le_of_not_le hb) h
    all_goals omega
  · refine .inr ⟨le_of_not_le ha, ?_⟩
    obtain _ | _ := Int.mul_eq_zero.mp <|
      Int.le_antisymm (Int.mul_nonpos_of_nonpos_of_nonneg (le_of_not_le ha) hb) h
    all_goals omega
  · exact .inr ⟨le_of_not_ge ha, le_of_not_ge hb⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/Basic/Variant117b02e97aa2d0d26b1e3c7e7f89b1e4245b9ccc826017ac07385ab00a379cae.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Basic/Variant117b02e97aa2d0d26b1e3c7e7f89b1e4245b9ccc826017ac07385ab00a379cae.lean#L54).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `97823c6cb0dcf8d4980718cb552775b67e9c6e6d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
