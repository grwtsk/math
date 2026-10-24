# bounded_section_certificate_implies_global_membership

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8a2e8879-b9e4-aa58-21b7-b0aa6b0692be",
  "kind": "theorem",
  "lexical_name": "bounded_section_certificate_implies_global_membership",
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
  "slug": "bounded-section-certificate-implies-global-membership--ab181a9dbc22020697cbd9ee",
  "source": {
    "blob": "a5b9cdcb141a3442bf3651990223de37c09c8591",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 288,
    "line": 278,
    "path": "GRWTSK/Algebra/LinearAlgebra/BoundedAnalyticCertificate/Variantcb2bcc4ffe57ac84e063bae2ff22304949b51694f7cc3245b3268d7fc4888d08.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ab181a9dbc22020697cbd9eed65ffb55347437eef28f37c69ca2812f3b673e61",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/BoundedAnalyticCertificate/Variantcb2bcc4ffe57ac84e063bae2ff22304949b51694f7cc3245b3268d7fc4888d08.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8a2e8879-b9e4-aa58-21b7-b0aa6b0692be`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 278–288.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem bounded_section_certificate_implies_global_membership
    (M : BoundedSectionCertificateMechanism (K := K)
      (Global := Global) (Local := Local) (Coeff := Coeff)
      (Overlap := Overlap) (I := I) (Data := Data))
    {F : Global}
    (h : BoundedSectionCertificate M F) :
    F ∈ M.globalAnalyticSubspace := by
  rcases h with ⟨_d, _hd, hfiber⟩
  exact M.compatible_local_representatives_imply_global_membership hfiber

/-- Expanded positive meaning: a bounded certificate gives a compatible identifying section. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/BoundedAnalyticCertificate/Variantcb2bcc4ffe57ac84e063bae2ff22304949b51694f7cc3245b3268d7fc4888d08.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/BoundedAnalyticCertificate/Variantcb2bcc4ffe57ac84e063bae2ff22304949b51694f7cc3245b3268d7fc4888d08.lean#L278).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a5b9cdcb141a3442bf3651990223de37c09c8591` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
