# bounded_divisor_sum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3033c5b4-e61c-f0b2-ce8a-1464dbefc2d6",
  "kind": "theorem",
  "lexical_name": "bounded_divisor_sum",
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
  "slug": "bounded-divisor-sum--77188dec036e9181957f21a7",
  "source": {
    "blob": "465e59296192cb9b3d4a93180454e888fcbd1803",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 233,
    "line": 217,
    "path": "GRWTSK/NumberTheory/SourceKapitzaFiniteFilter/Variant54000af16e5b9e56d1c17bc7e0b3835bddc23ebbd1bd7a8bce79c6959f15b07f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:77188dec036e9181957f21a7a830063bda6800e3288e54918b26b3c654fc4433",
  "verification": {
    "reference": "docs/verification/NumberTheory/SourceKapitzaFiniteFilter/Variant54000af16e5b9e56d1c17bc7e0b3835bddc23ebbd1bd7a8bce79c6959f15b07f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3033c5b4-e61c-f0b2-ce8a-1464dbefc2d6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 217–233.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem bounded_divisor_sum (n N : ℕ) (hn : 1 ≤ n) (hnN : n ≤ N) :
    (∑ d ∈ Finset.Icc 1 N, if d ∣ n then ArithmeticFunction.vonMangoldt d else 0) =
      Real.log n := by
  classical
  rw [← Finset.sum_filter]
  have he : (Finset.Icc 1 N).filter (fun d => d ∣ n) = n.divisors := by
    ext d
    simp only [Finset.mem_filter, Finset.mem_Icc, Nat.mem_divisors]
    constructor
    · rintro ⟨⟨hd1, hdN⟩, hdn⟩
      exact ⟨hdn, by omega⟩
    · rintro ⟨hdn, hn0⟩
      exact ⟨⟨Nat.pos_of_mem_divisors (Nat.mem_divisors.mpr ⟨hdn, hn0⟩),
        (Nat.le_of_dvd (by omega : 0 < n) hdn).trans hnN⟩, hdn⟩
  rw [he, ArithmeticFunction.vonMangoldt_sum]

/-- Complete finite divisor-product interchange, with no infinite limiting argument. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/SourceKapitzaFiniteFilter/Variant54000af16e5b9e56d1c17bc7e0b3835bddc23ebbd1bd7a8bce79c6959f15b07f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/SourceKapitzaFiniteFilter/Variant54000af16e5b9e56d1c17bc7e0b3835bddc23ebbd1bd7a8bce79c6959f15b07f.lean#L217).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `465e59296192cb9b3d4a93180454e888fcbd1803` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
