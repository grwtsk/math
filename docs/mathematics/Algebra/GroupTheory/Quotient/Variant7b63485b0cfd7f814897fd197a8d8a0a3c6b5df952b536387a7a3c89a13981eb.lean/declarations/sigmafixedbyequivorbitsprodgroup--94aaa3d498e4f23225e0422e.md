# sigmaFixedByEquivOrbitsProdGroup

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ace22f6f75d1bd5233278b7a185d0cc7ac48f8497accd8bda5175873432f7865",
  "kind": "def",
  "lexical_name": "sigmaFixedByEquivOrbitsProdGroup",
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
  "slug": "sigmafixedbyequivorbitsprodgroup--94aaa3d498e4f23225e0422e",
  "source": {
    "blob": "a2a28ccbb664f5e94ddd571ea66f9e8be14ec04c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 275,
    "line": 250,
    "path": "GRWTSK/Algebra/GroupTheory/Quotient/Variant7b63485b0cfd7f814897fd197a8d8a0a3c6b5df952b536387a7a3c89a13981eb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:94aaa3d498e4f23225e0422eef5ebab36678f6fe8d14e26ac14157a62e379426",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Quotient/Variant7b63485b0cfd7f814897fd197a8d8a0a3c6b5df952b536387a7a3c89a13981eb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ace22f6f75d1bd5233278b7a185d0cc7ac48f8497accd8bda5175873432f7865`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 250–275.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def sigmaFixedByEquivOrbitsProdGroup : (Σ g : G, fixedBy X g) ≃ Ω × G :=
  calc
    (Σ g : G, fixedBy X g) ≃ { ab : G × X // ab.1 • ab.2 = ab.2 } :=
      (Equiv.subtypeProdEquivSigmaSubtype _).symm
    _ ≃ { ba : X × G // ba.2 • ba.1 = ba.1 } := (Equiv.prodComm G X).subtypeEquiv fun _ => Iff.rfl
    _ ≃ Σ b : X, stabilizer G b :=
      Equiv.subtypeProdEquivSigmaSubtype fun (b : X) a => a ∈ stabilizer G b
    _ ≃ Σ ωb : Σ ω : Ω, orbit G ω.out, stabilizer G (ωb.2 : X) :=
      (selfEquivSigmaOrbits G X).sigmaCongrLeft'
    _ ≃ Σ ω : Ω, Σ b : orbit G ω.out, stabilizer G (b : X) :=
      Equiv.sigmaAssoc fun (ω : Ω) (b : orbit G ω.out) => stabilizer G (b : X)
    _ ≃ Σ ω : Ω, Σ _ : orbit G ω.out, stabilizer G ω.out :=
      Equiv.sigmaCongrRight fun _ =>
        Equiv.sigmaCongrRight fun ⟨_, hb⟩ => (stabilizerEquivStabilizerOfOrbitRel hb).toEquiv
    _ ≃ Σ ω : Ω, orbit G ω.out × stabilizer G ω.out :=
      Equiv.sigmaCongrRight fun _ => Equiv.sigmaEquivProd _ _
    _ ≃ Σ _ : Ω, G := Equiv.sigmaCongrRight fun ω => orbitProdStabilizerEquivGroup G ω.out
    _ ≃ Ω × G := Equiv.sigmaEquivProd Ω G

/-- **Burnside's lemma** : given a finite group `G` acting on a type `X`, the sum the orders of the
stabilisers coincides with the number of orbits multiplied by the order of `G`. -/
@[to_additive (attr := wikidata Q1330377)
      AddAction.sum_card_fixedBy_eq_card_orbits_mul_card_addGroup
      /-- **Burnside's lemma** : given a finite additive group `G` acting on a type `X`,
      the sum the orders of the stabilisers coincides with the number of orbits multiplied by the
      order of `G`. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Quotient/Variant7b63485b0cfd7f814897fd197a8d8a0a3c6b5df952b536387a7a3c89a13981eb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Quotient/Variant7b63485b0cfd7f814897fd197a8d8a0a3c6b5df952b536387a7a3c89a13981eb.lean#L250).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a2a28ccbb664f5e94ddd571ea66f9e8be14ec04c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
