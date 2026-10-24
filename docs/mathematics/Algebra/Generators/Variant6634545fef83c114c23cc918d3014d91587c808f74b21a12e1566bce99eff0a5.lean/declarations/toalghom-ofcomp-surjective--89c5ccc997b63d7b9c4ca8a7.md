# toAlgHom_ofComp_surjective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:db2a4a98-f4da-5c8e-57e3-f36b24ab9f84",
  "kind": "lemma",
  "lexical_name": "toAlgHom_ofComp_surjective",
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
  "slug": "toalghom-ofcomp-surjective--89c5ccc997b63d7b9c4ca8a7",
  "source": {
    "blob": "1bc38c074ab0787fce0fc6bfe038df33d6828931",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 467,
    "line": 444,
    "path": "GRWTSK/Algebra/Generators/Variant6634545fef83c114c23cc918d3014d91587c808f74b21a12e1566bce99eff0a5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:89c5ccc997b63d7b9c4ca8a7859b2ae447316b52bed73568e29229663e61e462",
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

Occurrence: `result:db2a4a98-f4da-5c8e-57e3-f36b24ab9f84`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 444–467.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma toAlgHom_ofComp_surjective (Q : Generators S T) (P : Generators R S) :
    Function.Surjective (Q.ofComp P).toAlgHom := by
  intro p
  induction p using MvPolynomial.induction_on with
  | C a =>
      use MvPolynomial.rename Sum.inr (P.σ a)
      simp only [Hom.toAlgHom, ofComp, Generators.comp, MvPolynomial.aeval_rename,
        Sum.elim_comp_inr]
      simp_rw [Function.comp_def, ← MvPolynomial.algebraMap_eq, ← IsScalarTower.toAlgHom_apply R,
        ← MvPolynomial.comp_aeval]
      simp
  | add p q hp hq =>
      obtain ⟨p, rfl⟩ := hp
      obtain ⟨q, rfl⟩ := hq
      use p + q
      simp
  | mul_X p i hp =>
      obtain ⟨(p : MvPolynomial (Q.vars ⊕ P.vars) R), rfl⟩ := hp
      use p * MvPolynomial.X (R := R) (Sum.inl i)
      simp [Algebra.Generators.ofComp, Algebra.Generators.Hom.toAlgHom]

/-- Given families of generators `X ⊆ T`, there is a map `R[X] → S[X]`. -/
@[simps]
noncomputable
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Generators/Variant6634545fef83c114c23cc918d3014d91587c808f74b21a12e1566bce99eff0a5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Generators/Variant6634545fef83c114c23cc918d3014d91587c808f74b21a12e1566bce99eff0a5.lean#L444).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1bc38c074ab0787fce0fc6bfe038df33d6828931` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
