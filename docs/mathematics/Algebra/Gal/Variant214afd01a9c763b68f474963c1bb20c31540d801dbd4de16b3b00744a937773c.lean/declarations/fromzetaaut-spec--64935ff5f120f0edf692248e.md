# fromZetaAut_spec

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dbf17a0f-c5b9-8109-dc03-c72d7c40f1c2",
  "kind": "theorem",
  "lexical_name": "fromZetaAut_spec",
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
  "slug": "fromzetaaut-spec--64935ff5f120f0edf692248e",
  "source": {
    "blob": "1f3aebcb5b203e621a7da2cebcac931285e3c2a8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 183,
    "line": 163,
    "path": "GRWTSK/Algebra/Gal/Variant214afd01a9c763b68f474963c1bb20c31540d801dbd4de16b3b00744a937773c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:64935ff5f120f0edf692248e551bfc285aa45219ce5b88986737ca239666984e",
  "verification": {
    "reference": "docs/verification/Algebra/Gal/Variant214afd01a9c763b68f474963c1bb20c31540d801dbd4de16b3b00744a937773c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dbf17a0f-c5b9-8109-dc03-c72d7c40f1c2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 163–183.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fromZetaAut_spec : fromZetaAut hμ h (zeta n K L) = μ := by
  simp_rw [fromZetaAut, autEquivPow_symm_apply]
-- Porting note: `generalize_proofs` did not generalize the same proofs, making the proof different.
  generalize_proofs h1 h2
  nth_rewrite 4 [← (zeta_spec n K L).powerBasis_gen K]
  have := Exists.choose_spec ((zeta_spec n K L).eq_pow_of_pow_eq_one hμ.pow_eq_one n.pos)
  rw [PowerBasis.equivOfMinpoly_gen, h1.powerBasis_gen K, ZMod.coe_unitOfCoprime,
    ZMod.val_cast_of_lt this.1]
  exact this.2
#align is_cyclotomic_extension.from_zeta_aut_spec IsCyclotomicExtension.fromZetaAut_spec

end IsCyclotomicExtension

section Gal

variable [Field L] (hμ : IsPrimitiveRoot μ n) [Algebra K L] [IsCyclotomicExtension {n} K L]
  (h : Irreducible (cyclotomic n K)) {K}

/-- `IsCyclotomicExtension.autEquivPow` repackaged in terms of `gal`.
Asserts that the Galois group of `cyclotomic n K` is equivalent to `(ZMod n)ˣ`
if `cyclotomic n K` is irreducible in the base field. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Gal/Variant214afd01a9c763b68f474963c1bb20c31540d801dbd4de16b3b00744a937773c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Gal/Variant214afd01a9c763b68f474963c1bb20c31540d801dbd4de16b3b00744a937773c.lean#L163).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1f3aebcb5b203e621a7da2cebcac931285e3c2a8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
