# certifiedPrismaticReactionDetEquiv_comp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cb0d297c-bfef-f338-8fc0-5077475105b8",
  "kind": "theorem",
  "lexical_name": "certifiedPrismaticReactionDetEquiv_comp",
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
  "slug": "certifiedprismaticreactiondetequiv-comp--ebcb1e09090aa5ecb0042d43",
  "source": {
    "blob": "58fa0b523e0cd9dbce2594e88285d951cad2ed00",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 131,
    "line": 112,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Determinant/Variant2e68ba85728e14765bbe805b3888a7f63089e609acc2628a3f1607b806cbb08d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ebcb1e09090aa5ecb0042d435e84d5a4a112a80a9c356f39fe39765dee4bcbc3",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ModelTheory/Determinant/Variant2e68ba85728e14765bbe805b3888a7f63089e609acc2628a3f1607b806cbb08d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cb0d297c-bfef-f338-8fc0-5077475105b8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 112–131.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem certifiedPrismaticReactionDetEquiv_comp
    {P : Theory}
    {T : TotalizationTheory P.Target}
    (Q : PerfectPrismaticTotalization.{uCert, uObj, uHom, uIso} P T)
    {R : CoefficientContext.{uCoeff}}
    (D : DAF.Determinant.Theory.{uObj, uHom, uIso, uCoeff, uLine}
      Q.model R)
    {X Y Z : SimplicialObject P.DerivedAlg}
    {f : X ⟶ Y}
    {g : Y ⟶ Z}
    (hf : Q.ReactionCertificate f)
    (hg : Q.ReactionCertificate g) :
    certifiedPrismaticReactionDetEquiv Q D (f ≫ g)
        (Q.composeCertificate hf hg) =
      (certifiedPrismaticReactionDetEquiv Q D g hg).trans
        (certifiedPrismaticReactionDetEquiv Q D f hf) := by
  rw [certifiedPrismaticReactionDetEquiv, Q.reactionQuasiIso_comp]
  exact DAF.Determinant.CertifiedQuasiIso.detEquiv_comp D _ _

end DAF.Prismatic
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/ModelTheory/Determinant/Variant2e68ba85728e14765bbe805b3888a7f63089e609acc2628a3f1607b806cbb08d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Determinant/Variant2e68ba85728e14765bbe805b3888a7f63089e609acc2628a3f1607b806cbb08d.lean#L112).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `58fa0b523e0cd9dbce2594e88285d951cad2ed00` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
