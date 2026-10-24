# Anonymous elab_rules

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:943e691dd68752c2a42403cfc4dde4adc116d31bc93ec17ea5a86f5edf100de3",
  "kind": "elab_rules",
  "lexical_name": null,
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
  "slug": "elab-rules--9722ab33a29837b0b8b0ac78",
  "source": {
    "blob": "cf9918bff47dbabff4710d2ac122304e44370cb8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 194,
    "line": 169,
    "path": "GRWTSK/Algebra/LinearAlgebra/InitTail/Variantf8da44c7bbbdf169dbb7be59d927572f34636f4a3c7d3a9cd45b5052f655a91e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9722ab33a29837b0b8b0ac78b8f3536bad15365547b653023fe41a907addad40",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/InitTail/Variantf8da44c7bbbdf169dbb7be59d927572f34636f4a3c7d3a9cd45b5052f655a91e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `elab_rules` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:943e691dd68752c2a42403cfc4dde4adc116d31bc93ec17ea5a86f5edf100de3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 169–194.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
elab_rules : tactic
| `(tactic| init_ring $[ using $a:term]?) => withMainContext <| set_option hygiene false in do
  evalTactic <|← `(tactic|(
    rw [WittVector.ext_iff]
    intro i
    simp only [WittVector.init, WittVector.select, WittVector.coeff_mk]
    split_ifs with hi <;> try {rfl}
    ))
  if let some e := a then
    evalTactic <|← `(tactic|(
      simp only [WittVector.add_coeff, WittVector.mul_coeff, WittVector.neg_coeff,
        WittVector.sub_coeff, WittVector.nsmul_coeff, WittVector.zsmul_coeff, WittVector.pow_coeff]
      apply MvPolynomial.eval₂Hom_congr' (RingHom.ext_int _ _) _ rfl
      rintro ⟨b, k⟩ h -
      replace h := $e:term p _ h
      simp only [Finset.mem_range, Finset.mem_product, true_and, Finset.mem_univ] at h
      have hk : k < n := by omega
      fin_cases b <;> simp only [Function.uncurry, Matrix.cons_val_zero, Matrix.head_cons,
        WittVector.coeff_mk, Matrix.cons_val_one, WittVector.mk, Fin.mk_zero, Matrix.cons_val',
        Matrix.empty_val', Matrix.cons_val_fin_one, Matrix.cons_val_zero,
        hk, if_true]
    ))

-- Porting note: `by init_ring` should suffice; this patches over an issue with `split_ifs`.
-- See zulip: [https://leanprover.zulipchat.com/#narrow/stream/287929-mathlib4/topic/.60split_ifs.60.20boxes.20itself.20into.20a.20corner]
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/InitTail/Variantf8da44c7bbbdf169dbb7be59d927572f34636f4a3c7d3a9cd45b5052f655a91e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/InitTail/Variantf8da44c7bbbdf169dbb7be59d927572f34636f4a3c7d3a9cd45b5052f655a91e.lean#L169).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cf9918bff47dbabff4710d2ac122304e44370cb8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
