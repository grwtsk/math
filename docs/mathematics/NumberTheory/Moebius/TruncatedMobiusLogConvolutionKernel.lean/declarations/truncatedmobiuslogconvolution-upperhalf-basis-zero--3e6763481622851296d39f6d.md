# truncatedMobiusLogConvolution_upperHalf_basis_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:459f579c-3ecb-b4a9-3688-19d90f1fe19c",
  "kind": "theorem",
  "lexical_name": "truncatedMobiusLogConvolution_upperHalf_basis_zero",
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
  "slug": "truncatedmobiuslogconvolution-upperhalf-basis-zero--3e6763481622851296d39f6d",
  "source": {
    "blob": "b56c6e42dd7ae8890c9fc83e8f92283597c06106",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 101,
    "line": 78,
    "path": "GRWTSK/NumberTheory/Moebius/TruncatedMobiusLogConvolutionKernel.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3e6763481622851296d39f6d0bef45e275ee8f92cee717351ca1b7adcd3d5ae6",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/TruncatedMobiusLogConvolutionKernel.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:459f579c-3ecb-b4a9-3688-19d90f1fe19c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 78–101.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem truncatedMobiusLogConvolution_upperHalf_basis_zero
    {N p : ℕ}
    (ppos : 1 ≤ p)
    (_hpN : p ≤ N)
    (hp : N < 2 * p) :
    ∀ n : ℕ,
      truncatedMobiusLogConvolution N (natBasisPacket p) n = 0 := by
  intro n
  by_cases hn : 1 ≤ n ∧ n ≤ N
  · rw [truncatedMobiusLogConvolution_eq_divisorSum hn.1 hn.2]
    apply Finset.sum_eq_zero
    intro d hd
    by_cases hdp : d = p
    · subst d
      have hpdvd : p ∣ n := Nat.dvd_of_mem_divisors hd
      have hnp : n = p :=
        eq_of_upperHalf_dvd hp hn.1 hn.2 hpdvd ppos
      subst n
      simp [natBasisPacket]
    · simp [natBasisPacket, hdp]
  · simp [truncatedMobiusLogConvolution, hn]

/-- The entire upper-half coefficient subspace is invisible to the truncated
operator. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/TruncatedMobiusLogConvolutionKernel.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/TruncatedMobiusLogConvolutionKernel.lean#L78).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b56c6e42dd7ae8890c9fc83e8f92283597c06106` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
