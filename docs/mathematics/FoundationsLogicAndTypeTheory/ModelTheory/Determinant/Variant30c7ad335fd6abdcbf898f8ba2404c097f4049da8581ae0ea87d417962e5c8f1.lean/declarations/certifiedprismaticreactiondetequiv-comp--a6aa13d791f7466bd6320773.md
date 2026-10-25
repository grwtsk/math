# certifiedPrismaticReactionDetEquiv_comp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c313c43b15813d085ab2fa572b33ec18d42016d2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 104,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/30/30c7ad335fd6abdcbf898f8ba2404c097f4049da8581ae0ea87d417962e5c8f1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9dff5b55-e5ae-ae81-59e9-233df386b9c7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ebb0a648-76c6-c039-a47b-3a7f7aca6727",
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
  "slug": "certifiedprismaticreactiondetequiv-comp--a6aa13d791f7466bd6320773",
  "source": {
    "blob": "c313c43b15813d085ab2fa572b33ec18d42016d2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 123,
    "line": 104,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Determinant/Variant30c7ad335fd6abdcbf898f8ba2404c097f4049da8581ae0ea87d417962e5c8f1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a6aa13d791f7466bd63207734552d4237d9ae2429d7e9656d66536514e2a8265",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ModelTheory/Determinant/Variant30c7ad335fd6abdcbf898f8ba2404c097f4049da8581ae0ea87d417962e5c8f1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ebb0a648-76c6-c039-a47b-3a7f7aca6727`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 104–123.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/ModelTheory/Determinant/Variant30c7ad335fd6abdcbf898f8ba2404c097f4049da8581ae0ea87d417962e5c8f1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Determinant/Variant30c7ad335fd6abdcbf898f8ba2404c097f4049da8581ae0ea87d417962e5c8f1.lean#L104).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c313c43b15813d085ab2fa572b33ec18d42016d2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
