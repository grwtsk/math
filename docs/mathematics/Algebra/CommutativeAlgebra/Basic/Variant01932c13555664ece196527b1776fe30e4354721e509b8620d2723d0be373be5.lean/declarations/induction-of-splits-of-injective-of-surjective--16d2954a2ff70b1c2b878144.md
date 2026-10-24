# induction_of_Splits_of_injective_of_surjective.

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9c6f0e8f-4a2f-06f9-3f58-fd7333e947bc",
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
  "slug": "induction-of-splits-of-injective-of-surjective--16d2954a2ff70b1c2b878144",
  "source": {
    "blob": "5af96ec828f2fbad992039b9ff6e5febc791c3d2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 554,
    "line": 532,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Basic/Variant01932c13555664ece196527b1776fe30e4354721e509b8620d2723d0be373be5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:16d2954a2ff70b1c2b878144f8f62a865fc751655ee2219e50e1b2178eaaaed2",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Basic/Variant01932c13555664ece196527b1776fe30e4354721e509b8620d2723d0be373be5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9c6f0e8f-4a2f-06f9-3f58-fd7333e947bc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 532–554.

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

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Basic/Variant01932c13555664ece196527b1776fe30e4354721e509b8620d2723d0be373be5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Basic/Variant01932c13555664ece196527b1776fe30e4354721e509b8620d2723d0be373be5.lean#L532).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5af96ec828f2fbad992039b9ff6e5febc791c3d2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
