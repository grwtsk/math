# _root_.GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ExistsMargin.Varianta2645788dacf04cf9802d81142946077d6271d6abe4bfd91c6d8c6e4ca6d4aad.Zeta23.XiPrime.familyHyps_atV_quartic

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:257f3ed9-9cce-d27a-307e-29ab5d55da6c",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ExistsMargin.Varianta2645788dacf04cf9802d81142946077d6271d6abe4bfd91c6d8c6e4ca6d4aad.Zeta23.XiPrime.familyHyps_atV_quartic",
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
  "slug": "root-grwtsk-numbertheory-analyticnumbertheory-zetaandlfunctions-riemannz--4e7cfe7a820a50aa7bd70a37",
  "source": {
    "blob": "8c77408fe6586397e3c57ff94be7d415317d1d7b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 348,
    "line": 342,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FamilyHypsV/Variant26dad586a2797fe0498823694e21ceab6aa355e3898b0b1abe425cf333a66e4a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4e7cfe7a820a50aa7bd70a37bcb6261312c0770ba71b583c5024213e35492ebf",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FamilyHypsV/Variant26dad586a2797fe0498823694e21ceab6aa355e3898b0b1abe425cf333a66e4a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:257f3ed9-9cce-d27a-307e-29ab5d55da6c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 342–348.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ExistsMargin.Varianta2645788dacf04cf9802d81142946077d6271d6abe4bfd91c6d8c6e4ca6d4aad.Zeta23.XiPrime.familyHyps_atV_quartic {P : Params} (hP : P.Valid) (hlam : P.lam < 1)
    (hv : WindowProfile vQuartic) : FamilyHyps (P.atV vQuartic) :=
  familyHyps_atV hP hlam hv

end FamilyHypsV
end XiPrime
end Zeta23
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FamilyHypsV/Variant26dad586a2797fe0498823694e21ceab6aa355e3898b0b1abe425cf333a66e4a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FamilyHypsV/Variant26dad586a2797fe0498823694e21ceab6aa355e3898b0b1abe425cf333a66e4a.lean#L342).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8c77408fe6586397e3c57ff94be7d415317d1d7b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
