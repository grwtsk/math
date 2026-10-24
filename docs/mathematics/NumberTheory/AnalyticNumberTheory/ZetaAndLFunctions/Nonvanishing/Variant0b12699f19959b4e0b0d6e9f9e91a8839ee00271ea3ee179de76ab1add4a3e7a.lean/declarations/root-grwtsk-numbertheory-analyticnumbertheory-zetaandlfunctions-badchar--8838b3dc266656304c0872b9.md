# _root_.GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.BadChar.Variantfee46ff7be0a1b5ff606753682294b362c0ffa4bc97e5d8d43eece8be11b7026.riemannZeta_ne_zero_of_one_le_re

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d0a93901-da00-3116-84b9-32cfa3f1cd17",
  "kind": "lemma",
  "lexical_name": "_root_.GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.BadChar.Variantfee46ff7be0a1b5ff606753682294b362c0ffa4bc97e5d8d43eece8be11b7026.riemannZeta_ne_zero_of_one_le_re",
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
  "slug": "root-grwtsk-numbertheory-analyticnumbertheory-zetaandlfunctions-badchar--8838b3dc266656304c0872b9",
  "source": {
    "blob": "a231254a2c4cd89d6baf8133f9e55e4267fa5eec",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 425,
    "line": 417,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Nonvanishing/Variant0b12699f19959b4e0b0d6e9f9e91a8839ee00271ea3ee179de76ab1add4a3e7a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8838b3dc266656304c0872b9ba58334b045f0cb0b0ba8162647f7147a4f0d063",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Nonvanishing/Variant0b12699f19959b4e0b0d6e9f9e91a8839ee00271ea3ee179de76ab1add4a3e7a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d0a93901-da00-3116-84b9-32cfa3f1cd17`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 417–425.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma _root_.GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.BadChar.Variantfee46ff7be0a1b5ff606753682294b362c0ffa4bc97e5d8d43eece8be11b7026.riemannZeta_ne_zero_of_one_le_re ⦃s : ℂ⦄ (hs : 1 ≤ s.re) :
    riemannZeta s ≠ 0 := by
  rcases eq_or_ne s 1 with rfl | hs₀
  · exact riemannZeta_one_ne_zero
  · exact LFunction_modOne_eq (χ := 1) ▸ LFunction_ne_zero_of_one_le_re _ (.inr hs₀) hs

end nonvanishing

end DirichletCharacter
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Nonvanishing/Variant0b12699f19959b4e0b0d6e9f9e91a8839ee00271ea3ee179de76ab1add4a3e7a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Nonvanishing/Variant0b12699f19959b4e0b0d6e9f9e91a8839ee00271ea3ee179de76ab1add4a3e7a.lean#L417).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a231254a2c4cd89d6baf8133f9e55e4267fa5eec` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
