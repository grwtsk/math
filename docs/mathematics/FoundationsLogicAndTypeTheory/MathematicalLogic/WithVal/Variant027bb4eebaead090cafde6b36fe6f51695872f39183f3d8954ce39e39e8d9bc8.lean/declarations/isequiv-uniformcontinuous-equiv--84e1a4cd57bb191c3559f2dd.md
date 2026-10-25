# IsEquiv.uniformContinuous_equiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7c24c97a27cc51165e8ced0e7be9ba365dc7e170",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 508,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/02/027bb4eebaead090cafde6b36fe6f51695872f39183f3d8954ce39e39e8d9bc8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2217e094-f7ff-870e-fae7-c6a75e1bf445",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c3774450-8ef0-688f-62a4-6c6636e6bafe",
  "kind": "theorem",
  "lexical_name": "IsEquiv.uniformContinuous_equiv",
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
  "slug": "isequiv-uniformcontinuous-equiv--84e1a4cd57bb191c3559f2dd",
  "source": {
    "blob": "7c24c97a27cc51165e8ced0e7be9ba365dc7e170",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 531,
    "line": 508,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/WithVal/Variant027bb4eebaead090cafde6b36fe6f51695872f39183f3d8954ce39e39e8d9bc8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:84e1a4cd57bb191c3559f2dd02e4d54144c1f86771c09cc0b99889725077e22a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/WithVal/Variant027bb4eebaead090cafde6b36fe6f51695872f39183f3d8954ce39e39e8d9bc8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c3774450-8ef0-688f-62a4-6c6636e6bafe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 508–531.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsEquiv.uniformContinuous_equiv [hval : Valued R Γ₀'] (hv : Valued.v = w)
    (h : v.IsEquiv w) : UniformContinuous (WithVal.equiv v) := by
  refine uniformContinuous_of_continuousAt_zero _ ?_
  simp_rw [ContinuousAt, map_zero, (Valued.hasBasis_nhds_zero _ _).tendsto_iff
    (Valued.hasBasis_nhds_zero _ _), true_and, forall_const]
  intro γ
  obtain ⟨r, s, hr₀, hs₀, hr⟩ := exists_div_eq_of_unit Valued.v γ
  use .mk0 ((instValued v).v.restrict ((WithVal.equiv v).symm r) /
    (instValued v).v.restrict ((WithVal.equiv v).symm s)) (by
    simp [Valuation.restrict_def, restrict₀_eq_zero_iff, (eq_zero h (r := r)).ne, ← hv,
      (eq_zero h (r := s)).ne, hr₀.ne', hs₀.ne'])
  intro x hx
  let y := (WithVal.equiv v) x
  have hy : toVal v y = x := rfl
  have hs0' : 0 < Valued.v.restrict (toVal v s) := by
    simp [restrict_pos_iff, h.pos_iff, ← hv, hs₀]
  have h' : v.restrict.IsEquiv w.restrict := h.restrict
  rw [← hr, equiv_apply, Set.mem_ofPred_eq, lt_div_iff₀ ((restrict_pos_iff Valued.v s).mpr hs₀), hv,
    ← map_mul, ← lt_def, ← ofVal_mul,
    ← hy, ← toVal_mul, ←  h'.orderRingIso_apply, ← h'.orderRingIso.lt_symm_apply]
  simp only [toVal_mul, orderRingIso_symm_apply, lt_def, ofVal_mul, restrict_lt_iff]
  simp only [equiv_symm_apply, Units.val_mk0, Set.mem_ofPred_eq, lt_div_iff₀ hs0'] at hx
  rwa [← map_mul, restrict_lt_iff] at hx

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/WithVal/Variant027bb4eebaead090cafde6b36fe6f51695872f39183f3d8954ce39e39e8d9bc8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/WithVal/Variant027bb4eebaead090cafde6b36fe6f51695872f39183f3d8954ce39e39e8d9bc8.lean#L508).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7c24c97a27cc51165e8ced0e7be9ba365dc7e170` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
