# iff_quotient_mvPolynomial

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1aa69815-34eb-5a08-ecf1-44c331bf2fbf",
  "kind": "theorem",
  "lexical_name": "iff_quotient_mvPolynomial",
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
  "slug": "iff-quotient-mvpolynomial--132ad8b0809fd4714e8e3bf9",
  "source": {
    "blob": "5aaebd9b44398ed558f2a772d0b165990e08ef09",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 161,
    "line": 146,
    "path": "GRWTSK/Algebra/FiniteType/Variantd8768ae97c625eece0314c0a865f88bcf1f6d5f54de18971957eedf21d19e372.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:132ad8b0809fd4714e8e3bf97a6078992970fc3bdeb38e8259f9b6910a2ba5dc",
  "verification": {
    "reference": "docs/verification/Algebra/FiniteType/Variantd8768ae97c625eece0314c0a865f88bcf1f6d5f54de18971957eedf21d19e372.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1aa69815-34eb-5a08-ecf1-44c331bf2fbf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 146–161.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem iff_quotient_mvPolynomial :
    FiniteType R S ↔
      ∃ (s : Finset S) (f : MvPolynomial { x // x ∈ s } R →ₐ[R] S), Surjective f := by
  constructor
  · rintro ⟨s, hs⟩
    use s, MvPolynomial.aeval (↑)
    intro x
    have hrw : (↑s : Set S) = fun x : S => x ∈ s.val := rfl
    rw [← Set.mem_range, ← AlgHom.coe_range, ← adjoin_eq_range]
    simp_rw [← hrw, hs]
    exact Set.mem_univ x
  · rintro ⟨s, ⟨f, hsur⟩⟩
    exact FiniteType.of_surjective (FiniteType.mvPolynomial R { x // x ∈ s }) f hsur

/-- An algebra is finitely generated if and only if it is a quotient
of a polynomial ring whose variables are indexed by a fintype. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/FiniteType/Variantd8768ae97c625eece0314c0a865f88bcf1f6d5f54de18971957eedf21d19e372.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/FiniteType/Variantd8768ae97c625eece0314c0a865f88bcf1f6d5f54de18971957eedf21d19e372.lean#L146).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5aaebd9b44398ed558f2a772d0b165990e08ef09` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
