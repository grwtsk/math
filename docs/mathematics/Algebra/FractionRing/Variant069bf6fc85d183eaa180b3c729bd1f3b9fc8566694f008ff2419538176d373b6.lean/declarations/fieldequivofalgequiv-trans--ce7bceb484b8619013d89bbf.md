# fieldEquivOfAlgEquiv_trans

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3b9f9d58-0b41-236a-7199-e5ef638b54c8",
  "kind": "lemma",
  "lexical_name": "fieldEquivOfAlgEquiv_trans",
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
  "slug": "fieldequivofalgequiv-trans--ce7bceb484b8619013d89bbf",
  "source": {
    "blob": "d2c0d188183e955f15d59a427ae4405ad72efd52",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 618,
    "line": 600,
    "path": "GRWTSK/Algebra/FractionRing/Variant069bf6fc85d183eaa180b3c729bd1f3b9fc8566694f008ff2419538176d373b6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ce7bceb484b8619013d89bbf09cb4a6caaf8e5f82446d13b132c74c4730fb707",
  "verification": {
    "reference": "docs/verification/Algebra/FractionRing/Variant069bf6fc85d183eaa180b3c729bd1f3b9fc8566694f008ff2419538176d373b6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3b9f9d58-0b41-236a-7199-e5ef638b54c8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 600–618.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma fieldEquivOfAlgEquiv_trans (f : B ≃ₐ[A] C) (g : C ≃ₐ[A] D) :
    fieldEquivOfAlgEquiv FA FB FD (f.trans g) =
      (fieldEquivOfAlgEquiv FA FB FC f).trans (fieldEquivOfAlgEquiv FA FC FD g) := by
  ext x
  obtain ⟨x, y, -, rfl⟩ := IsFractionRing.div_surjective B x
  simp

end fieldEquivOfAlgEquiv

section fieldEquivOfAlgEquivHom

variable {A B : Type*} [CommRing A] [CommRing B] [Algebra A B]
  (K L : Type*) [Field K] [Field L]
  [Algebra A K] [Algebra B L] [IsFractionRing A K] [IsFractionRing B L]
  [Algebra A L] [IsScalarTower A B L] [Algebra K L] [IsScalarTower A K L]

/-- An algebra automorphism of a ring induces an algebra automorphism of its fraction field.

This is a bundled version of `fieldEquivOfAlgEquiv`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/FractionRing/Variant069bf6fc85d183eaa180b3c729bd1f3b9fc8566694f008ff2419538176d373b6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/FractionRing/Variant069bf6fc85d183eaa180b3c729bd1f3b9fc8566694f008ff2419538176d373b6.lean#L600).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d2c0d188183e955f15d59a427ae4405ad72efd52` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
