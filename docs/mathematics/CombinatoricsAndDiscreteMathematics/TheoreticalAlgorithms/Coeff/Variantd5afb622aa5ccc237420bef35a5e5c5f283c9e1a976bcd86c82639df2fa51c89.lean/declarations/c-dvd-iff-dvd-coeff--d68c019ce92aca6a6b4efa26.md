# C_dvd_iff_dvd_coeff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b0ce4acd7f4bc86afc2c5618f92174c2994fbf81",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 327,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d5/d5afb622aa5ccc237420bef35a5e5c5f283c9e1a976bcd86c82639df2fa51c89.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5b2db5bb-ff69-b840-8569-f69229b8ca06",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d1e721e3-96ac-df8f-5474-a7c099efb1b5",
  "kind": "theorem",
  "lexical_name": "C_dvd_iff_dvd_coeff",
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
  "slug": "c-dvd-iff-dvd-coeff--d68c019ce92aca6a6b4efa26",
  "source": {
    "blob": "b0ce4acd7f4bc86afc2c5618f92174c2994fbf81",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 347,
    "line": 327,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Coeff/Variantd5afb622aa5ccc237420bef35a5e5c5f283c9e1a976bcd86c82639df2fa51c89.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d68c019ce92aca6a6b4efa26c6aa3670775e4e4dd68b8d73bc083f2a732578f8",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Coeff/Variantd5afb622aa5ccc237420bef35a5e5c5f283c9e1a976bcd86c82639df2fa51c89.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d1e721e3-96ac-df8f-5474-a7c099efb1b5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 327–347.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem C_dvd_iff_dvd_coeff (r : R) (φ : R[X]) : C r ∣ φ ↔ ∀ i, r ∣ φ.coeff i := by
  constructor
  · rintro ⟨φ, rfl⟩ c
    rw [coeff_C_mul]
    apply dvd_mul_right
  · intro h
    choose c hc using h
    classical
      let c' : ℕ → R := fun i => if i ∈ φ.support then c i else 0
      let ψ : R[X] := ∑ i in φ.support, monomial i (c' i)
      use ψ
      ext i
      simp only [coeff_C_mul, mem_support_iff, coeff_monomial, finset_sum_coeff,
        Finset.sum_ite_eq']
      split_ifs with hi
      · rw [hc]
      · rw [Classical.not_not] at hi
        rwa [mul_zero]
#align polynomial.C_dvd_iff_dvd_coeff Polynomial.C_dvd_iff_dvd_coeff

set_option linter.deprecated false in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Coeff/Variantd5afb622aa5ccc237420bef35a5e5c5f283c9e1a976bcd86c82639df2fa51c89.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Coeff/Variantd5afb622aa5ccc237420bef35a5e5c5f283c9e1a976bcd86c82639df2fa51c89.lean#L327).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b0ce4acd7f4bc86afc2c5618f92174c2994fbf81` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
