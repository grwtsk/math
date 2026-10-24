# RespectsIso.cancel_left_isIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c4b24167-84e3-6a2c-8d09-61850f164ad2",
  "kind": "theorem",
  "lexical_name": "RespectsIso.cancel_left_isIso",
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
  "slug": "respectsiso-cancel-left-isiso--c0d521af57393c2411fa60f8",
  "source": {
    "blob": "27506276bc4056f71e8d0f4ad267cdead01a9723",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 64,
    "line": 58,
    "path": "GRWTSK/Algebra/RingHomProperties/Variantf740986712b37b1eb63436a6c80fc2ee62acdd73baaae7f90cf59a2be74c073d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c0d521af57393c2411fa60f87fcd54890e6495efae905b1a23acecf2d48f97e0",
  "verification": {
    "reference": "docs/verification/Algebra/RingHomProperties/Variantf740986712b37b1eb63436a6c80fc2ee62acdd73baaae7f90cf59a2be74c073d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c4b24167-84e3-6a2c-8d09-61850f164ad2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 58–64.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem RespectsIso.cancel_left_isIso (hP : RespectsIso @P) {R S T : CommRingCat} (f : R ⟶ S)
    (g : S ⟶ T) [IsIso f] : P (f ≫ g) ↔ P g :=
  ⟨fun H => by
    convert hP.2 (f ≫ g) (asIso f).symm.commRingCatIsoToRingEquiv H
    exact (IsIso.inv_hom_id_assoc _ _).symm, hP.2 g (asIso f).commRingCatIsoToRingEquiv⟩
#align ring_hom.respects_iso.cancel_left_is_iso RingHom.RespectsIso.cancel_left_isIso

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/RingHomProperties/Variantf740986712b37b1eb63436a6c80fc2ee62acdd73baaae7f90cf59a2be74c073d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/RingHomProperties/Variantf740986712b37b1eb63436a6c80fc2ee62acdd73baaae7f90cf59a2be74c073d.lean#L58).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `27506276bc4056f71e8d0f4ad267cdead01a9723` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
