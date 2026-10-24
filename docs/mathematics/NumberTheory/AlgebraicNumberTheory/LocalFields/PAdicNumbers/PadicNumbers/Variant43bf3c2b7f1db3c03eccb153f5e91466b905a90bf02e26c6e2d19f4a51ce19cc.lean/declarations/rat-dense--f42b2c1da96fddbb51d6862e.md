# rat_dense'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6b30895e58da5478ca46e4335cd69399ec4de965",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 657,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/43/43bf3c2b7f1db3c03eccb153f5e91466b905a90bf02e26c6e2d19f4a51ce19cc.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0d48453c-f6a1-70d7-7ea8-ebe479465b0d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3907445a-790e-b1a1-9641-213b7e40b4c7",
  "kind": "theorem",
  "lexical_name": "rat_dense'",
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
  "slug": "rat-dense--f42b2c1da96fddbb51d6862e",
  "source": {
    "blob": "6b30895e58da5478ca46e4335cd69399ec4de965",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 679,
    "line": 657,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNumbers/Variant43bf3c2b7f1db3c03eccb153f5e91466b905a90bf02e26c6e2d19f4a51ce19cc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f42b2c1da96fddbb51d6862ebdf9e1d8d86e6f2cbff0a2c68822c75ac2f38ea6",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNumbers/Variant43bf3c2b7f1db3c03eccb153f5e91466b905a90bf02e26c6e2d19f4a51ce19cc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3907445a-790e-b1a1-9641-213b7e40b4c7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 657–679.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rat_dense' (q : ℚ_[p]) {ε : ℚ} (hε : 0 < ε) : ∃ r : ℚ, padicNormE (q - r : ℚ_[p]) < ε :=
  Quotient.inductionOn q fun q' ↦
    have : ∃ N, ∀ (m) (_ : m ≥ N) (n) (_ : n ≥ N), padicNorm p (q' m - q' n) < ε := cauchy₂ _ hε
    let ⟨N, hN⟩ := this
    ⟨q' N, by
      dsimp [padicNormE]
      -- Porting note: `change` → `convert_to` (`change` times out!)
      -- and add `PadicSeq p` type annotation
      convert_to PadicSeq.norm (q' - const _ (q' N) : PadicSeq p) < ε
      cases' Decidable.em (q' - const (padicNorm p) (q' N) ≈ 0) with heq hne'
      · simpa only [heq, PadicSeq.norm, dif_pos]
      · simp only [PadicSeq.norm, dif_neg hne']
        change padicNorm p (q' _ - q' _) < ε
        cases' Decidable.em (stationaryPoint hne' ≤ N) with hle hle
        · -- Porting note: inlined `stationaryPoint_spec` invocation.
          have := (stationaryPoint_spec hne' le_rfl hle).symm
          simp only [const_apply, sub_apply, padicNorm.zero, sub_self] at this
          simpa only [this]
        · exact hN _ (lt_of_not_ge hle).le _ le_rfl⟩
#align padic.rat_dense' Padic.rat_dense'

open Classical

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNumbers/Variant43bf3c2b7f1db3c03eccb153f5e91466b905a90bf02e26c6e2d19f4a51ce19cc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNumbers/Variant43bf3c2b7f1db3c03eccb153f5e91466b905a90bf02e26c6e2d19f4a51ce19cc.lean#L657).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6b30895e58da5478ca46e4335cd69399ec4de965` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
