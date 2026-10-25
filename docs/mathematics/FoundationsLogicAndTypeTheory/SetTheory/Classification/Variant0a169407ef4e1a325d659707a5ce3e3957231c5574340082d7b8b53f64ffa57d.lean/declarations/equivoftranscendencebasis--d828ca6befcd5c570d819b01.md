# equivOfTranscendenceBasis

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1f91bbcf4a5d332ef3c8c97e25586bf72bc2759cb76612035d6a90241fedd1a9",
  "kind": "def",
  "lexical_name": "equivOfTranscendenceBasis",
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
  "slug": "equivoftranscendencebasis--d828ca6befcd5c570d819b01",
  "source": {
    "blob": "ea4fb551b9fb123e1a549c2c1b9e3950f4e69b17",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 149,
    "line": 122,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Classification/Variant0a169407ef4e1a325d659707a5ce3e3957231c5574340082d7b8b53f64ffa57d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d828ca6befcd5c570d819b01644c02d24efb941ec86967e84dc702ee756e2e21",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/Classification/Variant0a169407ef4e1a325d659707a5ce3e3957231c5574340082d7b8b53f64ffa57d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1f91bbcf4a5d332ef3c8c97e25586bf72bc2759cb76612035d6a90241fedd1a9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 122–149.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def equivOfTranscendenceBasis [IsAlgClosed K] [IsAlgClosed L] (e : ι ≃ κ)
    (hv : IsTranscendenceBasis R v) (hw : IsTranscendenceBasis R w) : K ≃+* L := by
  letI := isAlgClosure_of_transcendence_basis v hv
  letI := isAlgClosure_of_transcendence_basis w hw
  have e : Algebra.adjoin R (Set.range v) ≃+* Algebra.adjoin R (Set.range w)
  · refine' hv.1.aevalEquiv.symm.toRingEquiv.trans _
    refine' (AlgEquiv.ofAlgHom (MvPolynomial.rename e)
      (MvPolynomial.rename e.symm) _ _).toRingEquiv.trans _
    · ext; simp
    · ext; simp
    exact hw.1.aevalEquiv.toRingEquiv
  exact IsAlgClosure.equivOfEquiv K L e
#align is_alg_closed.equiv_of_transcendence_basis IsAlgClosed.equivOfTranscendenceBasis

end

end Classification

section Cardinal

variable {R L K : Type u} [CommRing R]

variable [Field K] [Algebra R K] [IsAlgClosed K]

variable {ι : Type u} (v : ι → K)

variable (hv : IsTranscendenceBasis R v)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/Classification/Variant0a169407ef4e1a325d659707a5ce3e3957231c5574340082d7b8b53f64ffa57d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Classification/Variant0a169407ef4e1a325d659707a5ce3e3957231c5574340082d7b8b53f64ffa57d.lean#L122).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ea4fb551b9fb123e1a549c2c1b9e3950f4e69b17` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
