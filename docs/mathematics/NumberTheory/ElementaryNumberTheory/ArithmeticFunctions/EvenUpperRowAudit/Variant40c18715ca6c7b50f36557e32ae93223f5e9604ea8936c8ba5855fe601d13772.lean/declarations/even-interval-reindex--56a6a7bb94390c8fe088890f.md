# even_interval_reindex

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:08798586-6676-831c-6b24-6a48fbe1c756",
  "kind": "theorem",
  "lexical_name": "even_interval_reindex",
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
  "slug": "even-interval-reindex--56a6a7bb94390c8fe088890f",
  "source": {
    "blob": "45ad6b1cbd0c0b7b976401ecf17c4dc135b987a0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 48,
    "line": 22,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/EvenUpperRowAudit/Variant40c18715ca6c7b50f36557e32ae93223f5e9604ea8936c8ba5855fe601d13772.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:56a6a7bb94390c8fe088890fb522c26f35501ba2dfd3060632e44eef4f6efcb1",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/EvenUpperRowAudit/Variant40c18715ca6c7b50f36557e32ae93223f5e9604ea8936c8ba5855fe601d13772.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:08798586-6676-831c-6b24-6a48fbe1c756`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 22–48.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem even_interval_reindex (L U : ℕ) (F : ℕ → ℝ) :
    (∑ j ∈ (Ioc L U).filter (fun j ↦ ¬Nat.Coprime j 2),
      (ArithmeticFunction.moebius j : ℝ) * F j) =
      ∑ r ∈ Ioc (L / 2) (U / 2),
        (ArithmeticFunction.moebius (2 * r) : ℝ) * F (2 * r) := by
  have hdiv (j : ℕ) (hj : ¬Nat.Coprime j 2) : 2 ∣ j :=
    Nat.prime_two.dvd_iff_not_coprime.mpr (fun h ↦ hj h.symm)
  refine sum_bij' (fun j _ ↦ j / 2) (fun r _ ↦ 2 * r) ?_ ?_ ?_ ?_ ?_
  · intro j hj
    obtain ⟨hjI, hjc⟩ := mem_filter.mp hj
    have hi := mem_Ioc.mp hjI
    have he := Nat.mul_div_cancel' (hdiv j hjc)
    apply mem_Ioc.mpr
    omega
  · intro r hr
    have hi := (doubled_interval_iff L U r).mpr (mem_Ioc.mp hr)
    refine mem_filter.mpr ⟨mem_Ioc.mpr hi, ?_⟩
    intro h
    exact (Nat.prime_two.coprime_iff_not_dvd.mp h.symm) (dvd_mul_right 2 r)
  · intro j hj
    exact Nat.mul_div_cancel' (hdiv j (mem_filter.mp hj).2)
  · intro r _
    omega
  · intro j hj
    rw [Nat.mul_div_cancel' (hdiv j (mem_filter.mp hj).2)]

/-- Odd half-indices reverse the sign; the discarded even half-indices have zero Möbius value. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/EvenUpperRowAudit/Variant40c18715ca6c7b50f36557e32ae93223f5e9604ea8936c8ba5855fe601d13772.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/EvenUpperRowAudit/Variant40c18715ca6c7b50f36557e32ae93223f5e9604ea8936c8ba5855fe601d13772.lean#L22).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `45ad6b1cbd0c0b7b976401ecf17c4dc135b987a0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
