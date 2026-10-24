# ofComp_kerCompPreimage

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c83dbbd3-f55b-1c69-c59a-5b4de0262ecb",
  "kind": "lemma",
  "lexical_name": "ofComp_kerCompPreimage",
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
  "slug": "ofcomp-kercomppreimage--27571ebbaa771280ea3589ab",
  "source": {
    "blob": "1bc38c074ab0787fce0fc6bfe038df33d6828931",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 612,
    "line": 598,
    "path": "GRWTSK/Algebra/Generators/Variant6634545fef83c114c23cc918d3014d91587c808f74b21a12e1566bce99eff0a5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:27571ebbaa771280ea3589ab1438629ab4a086cbc5dd6e927cb9efabf6652f11",
  "verification": {
    "reference": "docs/verification/Algebra/Generators/Variant6634545fef83c114c23cc918d3014d91587c808f74b21a12e1566bce99eff0a5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c83dbbd3-f55b-1c69-c59a-5b4de0262ecb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 598–612.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma ofComp_kerCompPreimage (Q : Generators S T) (P : Generators R S) (x : Q.ker) :
    (Q.ofComp P).toAlgHom (kerCompPreimage Q P x) = x := by
  conv_rhs => rw [← x.1.support_sum_monomial_coeff]
  rw [kerCompPreimage, map_finsuppSum, Finsupp.sum]
  refine Finset.sum_congr rfl fun j _ ↦ ?_
  simp only [AlgHom.toLinearMap_apply, map_mul, Hom.toAlgHom_monomial]
  rw [one_smul, Finsupp.prod_mapDomain_index_inj Sum.inl_injective]
  rw [rename, ← AlgHom.comp_apply, comp_aeval]
  simp only [ofComp_val, Sum.elim_inr, Function.comp_apply, self_val, id_eq,
    Sum.elim_inl, monomial_eq, Hom.toAlgHom_X]
  congr 1
  rw [aeval_def, IsScalarTower.algebraMap_eq R S, ← MvPolynomial.algebraMap_eq,
    ← coe_eval₂Hom, ← map_aeval, P.aeval_val_σ]
  simp [coeff]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Generators/Variant6634545fef83c114c23cc918d3014d91587c808f74b21a12e1566bce99eff0a5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Generators/Variant6634545fef83c114c23cc918d3014d91587c808f74b21a12e1566bce99eff0a5.lean#L598).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1bc38c074ab0787fce0fc6bfe038df33d6828931` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
