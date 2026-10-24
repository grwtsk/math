# equivPiOfIsSepClosed_comap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a91dac631599d4754c822503fc46fec84c792281",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 246,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fe/fe2660dd57ebc463fbf7f45a32424810e3fbd2577f6f3c99f056a63d72446e90.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:fad95a7f-18db-e744-8e2e-3dc6e0165b61",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0b98a172-9735-298e-e518-c6c7905802e1",
  "kind": "lemma",
  "lexical_name": "equivPiOfIsSepClosed_comap",
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
  "slug": "equivpiofissepclosed-comap--9fcc34a3fc4ff58625bc8b1e",
  "source": {
    "blob": "a91dac631599d4754c822503fc46fec84c792281",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 270,
    "line": 246,
    "path": "GRWTSK/Algebra/Field/Variantfe2660dd57ebc463fbf7f45a32424810e3fbd2577f6f3c99f056a63d72446e90.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9fcc34a3fc4ff58625bc8b1e20db522cf078fe7d68be103beeee770c4ff53f29",
  "verification": {
    "reference": "docs/verification/Algebra/FieldTheory/Variantfe2660dd57ebc463fbf7f45a32424810e3fbd2577f6f3c99f056a63d72446e90.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0b98a172-9735-298e-e518-c6c7905802e1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 246–270.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma equivPiOfIsSepClosed_comap {B : Type*} [CommRing B] [EssFiniteType K A] [FormallyEtale K A]
    [Algebra K B] [EssFiniteType K B] [FormallyEtale K B] [IsSepClosed K]
    (f : A →ₐ[K] B) (x : A) (p : PrimeSpectrum B) :
    equivPiOfIsSepClosed K A x (p.comap f) = equivPiOfIsSepClosed K B (f x) p := by
  dsimp [equivPiOfIsSepClosed]
  simp only [Equiv.piCongrLeft_symm_apply, AlgEquiv.piCongrRight_apply,
    IsArtinianRing.primeSpectrumEquivMaximalSpectrum_apply_asIdeal, PrimeSpectrum.comap_asIdeal,
    IsArtinianRing.equivPi_apply]
  have heq : ofId K (B ⧸ p.asIdeal) = (Ideal.quotientMapₐ p.asIdeal f le_rfl).comp (ofId _ _) := by
    simp
  suffices h : Ideal.quotientMapₐ p.asIdeal f le_rfl x = f x by
    apply FaithfulSMul.algebraMap_injective K (B ⧸ p.asIdeal)
    rw [← ofId_apply, ← ofId_apply]
    nth_rw 1 [heq]
    simp only [AlgHom.coe_comp, Function.comp_apply, AlgEquiv.ofBijective_apply_symm_apply]
    convert h
    apply AlgEquiv.ofBijective_apply_symm_apply
  simp

end Algebra.FormallyEtale

/--
`A` is étale over a field `K` if and only if
`A` is a finite product of finite separable field extensions.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/FieldTheory/Variantfe2660dd57ebc463fbf7f45a32424810e3fbd2577f6f3c99f056a63d72446e90.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Field/Variantfe2660dd57ebc463fbf7f45a32424810e3fbd2577f6f3c99f056a63d72446e90.lean#L246).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a91dac631599d4754c822503fc46fec84c792281` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
