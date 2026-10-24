# padicNormE_lim_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d0845d13-4e59-23ff-f032-5cabcc7b65fc",
  "kind": "theorem",
  "lexical_name": "padicNormE_lim_le",
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
  "slug": "padicnorme-lim-le--3e6527425f26c85ae923f0ec",
  "source": {
    "blob": "03992962c56bade9f45eae6542bea6aa3fcdf176",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1017,
    "line": 999,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNumbers/Variant4aad69b2185ec5c5dfcf317cd673cb636ff838f8f7ece23af2a937d8ee50ecf8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3e6527425f26c85ae923f0ecad3a57e9c61a1d7cf1f41d4a39c4a06380ed2adb",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNumbers/Variant4aad69b2185ec5c5dfcf317cd673cb636ff838f8f7ece23af2a937d8ee50ecf8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d0845d13-4e59-23ff-f032-5cabcc7b65fc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 999–1017.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem padicNormE_lim_le {f : CauSeq ℚ_[p] norm} {a : ℝ} (ha : 0 < a) (hf : ∀ i, ‖f i‖ ≤ a) :
    ‖f.lim‖ ≤ a := by
  -- Porting note: `Setoid.symm` cannot work out which `Setoid` to use, so instead swap the order
  -- now, I use a rewrite to swap it later
  obtain ⟨N, hN⟩ := (CauSeq.equiv_lim f) _ ha
  rw [←sub_add_cancel f.lim (f N)]
  refine le_trans (padicNormE.nonarchimedean _ _) ?_
  rw [norm_sub_rev]
  exact max_le (le_of_lt (hN _ le_rfl)) (hf _)
  -- Porting note: the following nice `calc` block does not work
  -- exact calc
  --   ‖f.lim‖ = ‖f.lim - f N + f N‖ := sorry
  --   ‖f.lim - f N + f N‖ ≤ max ‖f.lim - f N‖ ‖f N‖ := sorry -- (padicNormE.nonarchimedean _ _)
  --   max ‖f.lim - f N‖ ‖f N‖ = max ‖f N - f.lim‖ ‖f N‖ := sorry -- by congr; rw [norm_sub_rev]
  --   max ‖f N - f.lim‖ ‖f N‖ ≤ a := sorry -- max_le (le_of_lt (hN _ le_rfl)) (hf _)
#align padic.padic_norm_e_lim_le Padic.padicNormE_lim_le

open Filter Set

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNumbers/Variant4aad69b2185ec5c5dfcf317cd673cb636ff838f8f7ece23af2a937d8ee50ecf8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNumbers/Variant4aad69b2185ec5c5dfcf317cd673cb636ff838f8f7ece23af2a937d8ee50ecf8.lean#L999).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `03992962c56bade9f45eae6542bea6aa3fcdf176` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
