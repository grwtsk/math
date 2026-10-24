# exists_odd_minimal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5b114839-f786-a539-f33c-8087dd348883",
  "kind": "theorem",
  "lexical_name": "exists_odd_minimal",
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
  "slug": "exists-odd-minimal--997e1805e2b671bde5aa5050",
  "source": {
    "blob": "0ee92ef1ec8c5716d7667065593062873a64a973",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 147,
    "line": 131,
    "path": "GRWTSK/NumberTheory/DiophantineEquations/Fermat4/Varianta5ffbcd77b99cda51daed295cec8e22eabc2a7240c3c2a72d66a1b0415bcff46.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:997e1805e2b671bde5aa5050564c08a38ec72daeb2e12cd67d688c1af93314b5",
  "verification": {
    "reference": "docs/verification/NumberTheory/DiophantineEquations/Fermat4/Varianta5ffbcd77b99cda51daed295cec8e22eabc2a7240c3c2a72d66a1b0415bcff46.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5b114839-f786-a539-f33c-8087dd348883`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 131–147.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_odd_minimal {a b c : ℤ} (h : Fermat42 a b c) :
    ∃ a0 b0 c0, Minimal a0 b0 c0 ∧ a0 % 2 = 1 := by
  obtain ⟨a0, b0, c0, hf⟩ := exists_minimal h
  cases' Int.emod_two_eq_zero_or_one a0 with hap hap
  · cases' Int.emod_two_eq_zero_or_one b0 with hbp hbp
    · exfalso
      have h1 : 2 ∣ (Int.gcd a0 b0 : ℤ) :=
        Int.dvd_gcd (Int.dvd_of_emod_eq_zero hap) (Int.dvd_of_emod_eq_zero hbp)
      rw [Int.gcd_eq_one_iff_coprime.mpr (coprime_of_minimal hf)] at h1
      revert h1
      norm_num
    · exact ⟨b0, ⟨a0, ⟨c0, minimal_comm hf, hbp⟩⟩⟩
  exact ⟨a0, ⟨b0, ⟨c0, hf, hap⟩⟩⟩
#align fermat_42.exists_odd_minimal Fermat42.exists_odd_minimal

/-- We can assume that a minimal solution to `a ^ 4 + b ^ 4 = c ^ 2` has
`a` odd and `c` positive. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/DiophantineEquations/Fermat4/Varianta5ffbcd77b99cda51daed295cec8e22eabc2a7240c3c2a72d66a1b0415bcff46.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/DiophantineEquations/Fermat4/Varianta5ffbcd77b99cda51daed295cec8e22eabc2a7240c3c2a72d66a1b0415bcff46.lean#L131).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0ee92ef1ec8c5716d7667065593062873a64a973` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
