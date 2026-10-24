# rh_of_h0_selfadjoint_realization

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3ed76cc6-4860-e3c9-b955-92227e926c58",
  "kind": "theorem",
  "lexical_name": "rh_of_h0_selfadjoint_realization",
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
  "slug": "rh-of-h0-selfadjoint-realization--afdfbd32d68a4ffe354ca0d1",
  "source": {
    "blob": "f739e590ddc417848947edc1696ac478d4123542",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 55,
    "line": 40,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ConditionalCriteria/Variant8ae60e8f7bdd3b7b595484c957f11eaaa3b83467672822d9921de8943fa12bd9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:afdfbd32d68a4ffe354ca0d1ff2917c05962311e1a5c3ca04ae98a7d6aefc7ac",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ConditionalCriteria/Variant8ae60e8f7bdd3b7b595484c957f11eaaa3b83467672822d9921de8943fa12bd9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3ed76cc6-4860-e3c9-b955-92227e926c58`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 40–55.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rh_of_h0_selfadjoint_realization
    (O : Folder.RH.RHOperatorData)
    (hsa : Folder.RH.IsSelfAdjoint O.D)
    (hcompact : Folder.RH.HasCompactResolvent O.D)
    (hzero :
      ∀ z : ℂ,
        Folder.RH.H0Zero z ↔
          ∃ mu ∈ Folder.RH.RHSpectrum O.D, Folder.RH.spectralParameter mu = z)
    (hreal :
      ∀ mu ∈ Folder.RH.RHSpectrum O.D,
        Folder.RH.H0ZeroIsReal (Folder.RH.spectralParameter mu))
    (htranslate : Folder.RH.RiemannHypothesis ↔ Folder.RH.H0RealZeros) :
    Folder.RH.RiemannHypothesis :=
  Folder.RH.rh_of_h0_selfadjoint_realization
    O hsa hcompact hzero hreal htranslate

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ConditionalCriteria/Variant8ae60e8f7bdd3b7b595484c957f11eaaa3b83467672822d9921de8943fa12bd9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ConditionalCriteria/Variant8ae60e8f7bdd3b7b595484c957f11eaaa3b83467672822d9921de8943fa12bd9.lean#L40).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f739e590ddc417848947edc1696ac478d4123542` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
