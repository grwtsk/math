# mk_le_mk_iff_denselyOrdered

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2b1b9d79-9cb1-d368-792d-b0de6a8a97a8",
  "kind": "theorem",
  "lexical_name": "mk_le_mk_iff_denselyOrdered",
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
  "slug": "mk-le-mk-iff-denselyordered--0e2a2bf4bb72f4d2a2aa32a0",
  "source": {
    "blob": "eeb8747a23a15fec7675af7603cd8faa39f8789c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 285,
    "line": 261,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Archimedean/Variant49cbfc0ef1a94f64be8e34758da644a39ff3019b80e4c3e4d1ffcf68b0ebe799.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0e2a2bf4bb72f4d2a2aa32a0613754f939817c2e94f0249963b8244d16338ac2",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Archimedean/Variant49cbfc0ef1a94f64be8e34758da644a39ff3019b80e4c3e4d1ffcf68b0ebe799.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2b1b9d79-9cb1-d368-792d-b0de6a8a97a8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 261–285.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mk_le_mk_iff_denselyOrdered [Ring S] [IsStrictOrderedRing S]
    [DenselyOrdered R] [Archimedean R] {x y : S} (f : R →+* S) (hf : StrictMono f) :
    mk x ≤ mk y ↔ ∃ q : R, 0 < f q ∧ f q * |y| ≤ |x| := by
  have H {q} : 0 < f q ↔ 0 < q := by simpa using hf.lt_iff_lt (a := 0)
  constructor
  · rintro ⟨(_ | n), hn⟩
    · simp_all [exists_zero_lt]
    · obtain ⟨q, hq₀, hq⟩ := exists_nsmul_lt_of_pos (one_pos (α := R)) (n + 1)
      refine ⟨q, H.2 hq₀, le_of_mul_le_mul_left ?_ n.cast_add_one_pos⟩
      simpa [← mul_assoc] using mul_le_mul (hf hq).le hn (abs_nonneg y) (by simp)
  · rintro ⟨q, hq₀, hq⟩
    have hq₀' := H.1 hq₀
    obtain ⟨n, hn⟩ := exists_lt_nsmul hq₀' 1
    refine ⟨n, le_of_mul_le_mul_left ?_ hq₀⟩
    have h : 0 ≤ f (n • q) := by
      rw [← f.map_zero]
      exact hf.monotone (nsmul_nonneg hq₀'.le n)
    simpa [mul_comm, mul_assoc] using mul_le_mul (hf hn).le hq (mul_nonneg hq₀.le (abs_nonneg y)) h

end IsStrictOrderedRing
end Ring

section Field
variable [Field R] [IsOrderedRing R]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Archimedean/Variant49cbfc0ef1a94f64be8e34758da644a39ff3019b80e4c3e4d1ffcf68b0ebe799.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Archimedean/Variant49cbfc0ef1a94f64be8e34758da644a39ff3019b80e4c3e4d1ffcf68b0ebe799.lean#L261).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eeb8747a23a15fec7675af7603cd8faa39f8789c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
