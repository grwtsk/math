# fromZetaAut_spec

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7c1af87f1241ae94d0347e8bce693da6b1876169",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 155,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e0/e09b3a2c65a9c7b670a6d61c8a113f07166ad822c690e887d85b08316b53a71c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:83dabc87-cc1f-ae8d-3247-56fe6711079e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0a70e486-dc95-b6e6-c4f7-beca33dc7553",
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
  "slug": "fromzetaaut-spec--1616e4ac2468a8e39c71164a",
  "source": {
    "blob": "7c1af87f1241ae94d0347e8bce693da6b1876169",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 175,
    "line": 155,
    "path": "GRWTSK/Algebra/Gal/Variante09b3a2c65a9c7b670a6d61c8a113f07166ad822c690e887d85b08316b53a71c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1616e4ac2468a8e39c71164a7a51dda02eeea2ef579e74c6a9ad24a3c12d58a1",
  "verification": {
    "reference": "docs/verification/Algebra/Gal/Variante09b3a2c65a9c7b670a6d61c8a113f07166ad822c690e887d85b08316b53a71c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0a70e486-dc95-b6e6-c4f7-beca33dc7553`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 155–175.

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

[Verification target and public status](../../../../../verification/Algebra/Gal/Variante09b3a2c65a9c7b670a6d61c8a113f07166ad822c690e887d85b08316b53a71c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Gal/Variante09b3a2c65a9c7b670a6d61c8a113f07166ad822c690e887d85b08316b53a71c.lean#L155).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7c1af87f1241ae94d0347e8bce693da6b1876169` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
