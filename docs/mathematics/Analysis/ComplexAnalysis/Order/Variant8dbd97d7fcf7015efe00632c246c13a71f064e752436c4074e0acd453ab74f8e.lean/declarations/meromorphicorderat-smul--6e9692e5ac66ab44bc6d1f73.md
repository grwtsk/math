# meromorphicOrderAt_smul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f5fa27be-a156-fe2e-c291-56e5d0645fb8",
  "kind": "theorem",
  "lexical_name": "meromorphicOrderAt_smul",
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
  "slug": "meromorphicorderat-smul--6e9692e5ac66ab44bc6d1f73",
  "source": {
    "blob": "ace2447fe9662ea6c0b2f7078d2d3402604e1035",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 401,
    "line": 377,
    "path": "GRWTSK/Analysis/ComplexAnalysis/Order/Variant8dbd97d7fcf7015efe00632c246c13a71f064e752436c4074e0acd453ab74f8e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6e9692e5ac66ab44bc6d1f73daac3c6a0cab34ad3c9a4c0bad16778013914c4d",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/Order/Variant8dbd97d7fcf7015efe00632c246c13a71f064e752436c4074e0acd453ab74f8e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f5fa27be-a156-fe2e-c291-56e5d0645fb8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 377–401.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem meromorphicOrderAt_smul {f : 𝕜 → 𝕜} {g : 𝕜 → E}
    (hf : MeromorphicAt f x) (hg : MeromorphicAt g x) :
    meromorphicOrderAt (f • g) x = meromorphicOrderAt f x + meromorphicOrderAt g x := by
  -- Trivial cases: one of the functions vanishes around z₀
  cases h₂f : meromorphicOrderAt f x with
  | top =>
    simp only [top_add, meromorphicOrderAt_eq_top_iff] at h₂f ⊢
    filter_upwards [h₂f] with z hz using by simp [hz]
  | coe m =>
    cases h₂g : meromorphicOrderAt g x with
    | top =>
      simp only [add_top, meromorphicOrderAt_eq_top_iff] at h₂g ⊢
      filter_upwards [h₂g] with z hz using by simp [hz]
    | coe n => -- Non-trivial case: both functions do not vanish around z₀
      rw [← WithTop.coe_add, meromorphicOrderAt_eq_int_iff (hf.smul hg)]
      obtain ⟨F, h₁F, h₂F, h₃F⟩ := (meromorphicOrderAt_eq_int_iff hf).1 h₂f
      obtain ⟨G, h₁G, h₂G, h₃G⟩ := (meromorphicOrderAt_eq_int_iff hg).1 h₂g
      use F • G, h₁F.smul h₁G, by simp [h₂F, h₂G]
      filter_upwards [self_mem_nhdsWithin, h₃F, h₃G] with a ha hfa hga
      simp [hfa, hga, smul_comm (F a), zpow_add₀ (sub_ne_zero.mpr ha), mul_smul]

@[deprecated (since := "2025-05-22")]
alias MeromorphicAt.order_smul := meromorphicOrderAt_smul

/-- The order is additive when multiplying meromorphic functions. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/Order/Variant8dbd97d7fcf7015efe00632c246c13a71f064e752436c4074e0acd453ab74f8e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/Order/Variant8dbd97d7fcf7015efe00632c246c13a71f064e752436c4074e0acd453ab74f8e.lean#L377).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ace2447fe9662ea6c0b2f7078d2d3402604e1035` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
