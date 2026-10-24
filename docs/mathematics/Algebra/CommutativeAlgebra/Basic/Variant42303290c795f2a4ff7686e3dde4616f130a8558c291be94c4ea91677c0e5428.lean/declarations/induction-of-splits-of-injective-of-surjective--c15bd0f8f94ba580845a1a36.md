# induction_of_Splits_of_injective_of_surjective.

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:626903b8-c515-1ce6-d426-140b10b08022",
  "kind": "lemma",
  "lexical_name": "induction_of_Splits_of_injective_of_surjective.",
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
  "slug": "induction-of-splits-of-injective-of-surjective--c15bd0f8f94ba580845a1a36",
  "source": {
    "blob": "3ed264ee72c569807fee84ec7696bcf5a010dfb7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 562,
    "line": 540,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Basic/Variant42303290c795f2a4ff7686e3dde4616f130a8558c291be94c4ea91677c0e5428.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c15bd0f8f94ba580845a1a36013bebaa438c2b1cc21b4e9991a11c4f84d185a3",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Basic/Variant42303290c795f2a4ff7686e3dde4616f130a8558c291be94c4ea91677c0e5428.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:626903b8-c515-1ce6-d426-140b10b08022`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 540–562.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
nonrec lemma induction_of_Splits_of_injective_of_surjective.{u}
    {R : Type u} [CommRing R] (p : R[X])
    (P : ∀ {R : Type u} [CommRing R], R[X] → Prop)
    (Splits : ∀ (R : Type u) [Field R] (p : R[X]) (hp : p.Splits), P p)
    (injective : ∀ (R S : Type u) [CommRing R] [CommRing S]
      (φ : R →+* S) (hφ : Function.Injective φ) (p : R[X]) (IH : P (p.map φ)), P p)
    (surjective : ∀ (R S : Type u) [CommRing R] [CommRing S]
      (φ : R →+* S) (hφ : Function.Surjective φ) (p : S[X]) (IH : ∀ q : R[X], P q), P p) : P p := by
  wlog hR : IsDomain R generalizing R
  · exact surjective _ _ (MvPolynomial.eval₂Hom (algebraMap ℤ R) id)
      (fun x ↦ ⟨.X x, by simp [MvPolynomial.eval₂Hom]⟩) p
      (fun _ ↦ this _ inferInstance)
  wlog hR : IsField R generalizing R
  · exact injective _ _ _ (FaithfulSMul.algebraMap_injective R (FractionRing R)) _
      (this _ inferInstance (Field.toIsField _))
  wlog hp : p.Splits generalizing R
  · let inst := hR.toField
    exact injective _ _ _ (algebraMap R p.SplittingField).injective _
      (this _ inferInstance (Field.toIsField _) (SplittingField.splits _))
  let inst := hR.toField
  exact Splits _ _ hp

/-- `Res(f, g₁ * g₂) = Res(f, g₁) * Res(f, g₂)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Basic/Variant42303290c795f2a4ff7686e3dde4616f130a8558c291be94c4ea91677c0e5428.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Basic/Variant42303290c795f2a4ff7686e3dde4616f130a8558c291be94c4ea91677c0e5428.lean#L540).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3ed264ee72c569807fee84ec7696bcf5a010dfb7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
