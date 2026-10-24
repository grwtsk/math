# isAdicCompleteIdealSpanP

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c51881236d02e5848b7b8636db2b6a5f282b22cfdffdd23927ea5d51e0f1edf5",
  "kind": "instance",
  "lexical_name": "isAdicCompleteIdealSpanP",
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
  "slug": "isadiccompleteidealspanp--da50c97d03a710bac97454d0",
  "source": {
    "blob": "4d9e6319aa11826ea01a7333de0ea287b130d76a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 121,
    "line": 100,
    "path": "GRWTSK/Algebra/Complete/Variant1f88bba805038fb849c7c5b72eadb68e5f3b67203a39756acc27a73357fb8402.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:da50c97d03a710bac97454d041eb8814dbfef4d5e0b68fa7452750bdfd5f4eac",
  "verification": {
    "reference": "docs/verification/Algebra/Complete/Variant1f88bba805038fb849c7c5b72eadb68e5f3b67203a39756acc27a73357fb8402.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c51881236d02e5848b7b8636db2b6a5f282b22cfdffdd23927ea5d51e0f1edf5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 100–121.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance isAdicCompleteIdealSpanP : IsAdicComplete (Ideal.span {(p : 𝕎 k)}) (𝕎 k) where
  haus' := by
    intro _ h
    ext n
    simp only [smul_eq_mul, Ideal.mul_top] at h
    have := h (n + 1)
    simp only [Ideal.span_singleton_pow, smul_eq_mul, Ideal.mul_top, SModEq.zero,
        mem_span_p_pow_iff_le_coeff_eq_zero] at this
    simpa using this n
  prec' := by
    intro x h
    -- construct the limit Witt vector w diagonally
    use .mk p (fun n ↦ (x (n + 1)).coeff n)
    intro n
    simp only [Ideal.span_singleton_pow, smul_eq_mul, Ideal.mul_top, SModEq.sub_mem,
      mem_span_p_pow_iff_le_coeff_eq_zero, ← le_coeff_eq_iff_le_sub_coeff_eq_zero] at h ⊢
    intro i hi
    exact (h hi i (Nat.lt_succ_self i)).symm

end PerfectRing

end WittVector
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Complete/Variant1f88bba805038fb849c7c5b72eadb68e5f3b67203a39756acc27a73357fb8402.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Complete/Variant1f88bba805038fb849c7c5b72eadb68e5f3b67203a39756acc27a73357fb8402.lean#L100).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4d9e6319aa11826ea01a7333de0ea287b130d76a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
