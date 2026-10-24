# powQuotPowSuccLinearEquivMapMkPowSuccPow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5e67b75b04b66ed0ddfd54ef94ae7ef8779a453382cebed39a744edbd71759e5",
  "kind": "def",
  "lexical_name": "powQuotPowSuccLinearEquivMapMkPowSuccPow",
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
  "slug": "powquotpowsucclinearequivmapmkpowsuccpow--74e70fd7efeecefe1c563237",
  "source": {
    "blob": "f629b058eaee4a3ae1a63b2725a63a0a0ab6d0fd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1086,
    "line": 1061,
    "path": "GRWTSK/Algebra/Operations/Variante18903bb420e80c43302a9c23b676795804d8fd0628da38eb58eb182bdec04a2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:74e70fd7efeecefe1c563237614b918d44bf8cc64ba3ebe9c3daa16685682667",
  "verification": {
    "reference": "docs/verification/Algebra/Operations/Variante18903bb420e80c43302a9c23b676795804d8fd0628da38eb58eb182bdec04a2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5e67b75b04b66ed0ddfd54ef94ae7ef8779a453382cebed39a744edbd71759e5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1061–1086.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def powQuotPowSuccLinearEquivMapMkPowSuccPow :
    ((I ^ n : Ideal R) ⧸ (I • ⊤ : Submodule R (I ^ n : Ideal R))) ≃ₗ[R]
    Ideal.map (Ideal.Quotient.mk (I ^ (n + 1))) (I ^ n) := by
  refine { LinearMap.codRestrict
    (Submodule.restrictScalars _ (Ideal.map (Ideal.Quotient.mk (I ^ (n + 1))) (I ^ n)))
    (Submodule.mapQ (I • ⊤) (I ^ (n + 1)) (Submodule.subtype (I ^ n)) ?_) ?_,
    Equiv.ofBijective _ ⟨?_, ?_⟩ with }
  · intro
    simp [Submodule.mem_smul_top_iff, pow_succ']
  · intro x
    obtain ⟨⟨y, hy⟩, rfl⟩ := Submodule.Quotient.mk_surjective _ x
    simp [Ideal.mem_sup_left hy]
  · intro a b
    obtain ⟨⟨x, hx⟩, rfl⟩ := Submodule.Quotient.mk_surjective _ a
    obtain ⟨⟨y, hy⟩, rfl⟩ := Submodule.Quotient.mk_surjective _ b
    simp [Ideal.Quotient.eq, Submodule.Quotient.eq, Submodule.mem_smul_top_iff, pow_succ']
  · intro ⟨x, hx⟩
    rw [Ideal.mem_map_iff_of_surjective _ Ideal.Quotient.mk_surjective] at hx
    obtain ⟨y, hy, rfl⟩ := hx
    refine ⟨Submodule.Quotient.mk ⟨y, hy⟩, ?_⟩
    simp

/-- `I ^ n ⧸ I ^ (n + 1)` can be viewed as a quotient module and as ideal of `R ⧸ I ^ (n + 1)`.
This definition gives the equivalence between the two, instead of the `R`-linear equivalence,
to bypass typeclass synthesis issues on complex `Module` goals. -/
noncomputable
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Operations/Variante18903bb420e80c43302a9c23b676795804d8fd0628da38eb58eb182bdec04a2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Operations/Variante18903bb420e80c43302a9c23b676795804d8fd0628da38eb58eb182bdec04a2.lean#L1061).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f629b058eaee4a3ae1a63b2725a63a0a0ab6d0fd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
