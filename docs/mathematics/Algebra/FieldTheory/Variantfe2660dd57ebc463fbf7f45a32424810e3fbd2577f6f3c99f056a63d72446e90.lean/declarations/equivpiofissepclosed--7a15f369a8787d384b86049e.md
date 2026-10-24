# equivPiOfIsSepClosed

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:946828b270b32e352ad4980b3b2686bf1c103c361491033b606391b24ea7b653",
  "kind": "def",
  "lexical_name": "equivPiOfIsSepClosed",
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
  "slug": "equivpiofissepclosed--7a15f369a8787d384b86049e",
  "source": {
    "blob": "a91dac631599d4754c822503fc46fec84c792281",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 231,
    "line": 217,
    "path": "GRWTSK/Algebra/Field/Variantfe2660dd57ebc463fbf7f45a32424810e3fbd2577f6f3c99f056a63d72446e90.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7a15f369a8787d384b86049e5a166169ec3d073bb1d562af983b53267d856c06",
  "verification": {
    "reference": "docs/verification/Algebra/FieldTheory/Variantfe2660dd57ebc463fbf7f45a32424810e3fbd2577f6f3c99f056a63d72446e90.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:946828b270b32e352ad4980b3b2686bf1c103c361491033b606391b24ea7b653`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 217–231.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def equivPiOfIsSepClosed [EssFiniteType K A] [FormallyEtale K A] [IsSepClosed K] :
    A ≃ₐ[K] PrimeSpectrum A → K :=
  haveI := Algebra.FormallyUnramified.finite_of_free K A
  haveI : IsArtinianRing A := isArtinian_of_tower K inferInstance
  haveI := FormallyUnramified.isReduced_of_field K A
  letI _ (m : MaximalSpectrum A) : Field (A ⧸ m.asIdeal) :=
    Ideal.Quotient.field m.asIdeal
  ((IsArtinianRing.equivPi _).restrictScalars K).trans <|
    (AlgEquiv.piCongrRight fun _ ↦ (AlgEquiv.ofBijective (Algebra.ofId K _)
      (IsSepClosed.algebraMap_bijective _ _)).symm).trans <|
    (AlgEquiv.piCongrLeft _ (fun _ ↦ K) IsArtinianRing.primeSpectrumEquivMaximalSpectrum).symm

variable {K} in
set_option backward.defeqAttrib.useBackward true in
set_option backward.isDefEq.respectTransparency false in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/FieldTheory/Variantfe2660dd57ebc463fbf7f45a32424810e3fbd2577f6f3c99f056a63d72446e90.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Field/Variantfe2660dd57ebc463fbf7f45a32424810e3fbd2577f6f3c99f056a63d72446e90.lean#L217).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a91dac631599d4754c822503fc46fec84c792281` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
