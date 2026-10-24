# isBoundedAtImInfty_serreDerivative

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:547cabf8-a83d-6275-6521-c513e5b50276",
  "kind": "theorem",
  "lexical_name": "isBoundedAtImInfty_serreDerivative",
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
  "slug": "isboundedatiminfty-serrederivative--9ec93ac45d22ede8cc99b434",
  "source": {
    "blob": "01573ec68cb07af47909f04352ee6d894ad8232a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 315,
    "line": 306,
    "path": "GRWTSK/NumberTheory/AutomorphicForms/ModularForms/Derivative/Variant13f586249f543a3088e38abe238b3a4d866ed87e9da7eb5f911b8079da5ec134.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9ec93ac45d22ede8cc99b4342c9ce73007d042eefc518ab87b3b6595abee1914",
  "verification": {
    "reference": "docs/verification/NumberTheory/AutomorphicForms/ModularForms/Derivative/Variant13f586249f543a3088e38abe238b3a4d866ed87e9da7eb5f911b8079da5ec134.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:547cabf8-a83d-6275-6521-c513e5b50276`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 306–315.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isBoundedAtImInfty_serreDerivative {F : ℍ → ℂ} (k : ℂ) (hF : MDiff F)
    (hb : IsBoundedAtImInfty F) : IsBoundedAtImInfty (serreDerivative k F) :=
  Asymptotics.IsBigO.sub (isBoundedAtImInfty_normalizedDerivOfComplex hF hb) <|
    ((Filter.const_boundedAtFilter atImInfty (k * 12⁻¹)).mul
      EisensteinSeries.isBoundedAtImInfty_E2).mul hb

/--
The Serre derivative preserves modularity: if `f` is a modular form of weight `k` for a subgroup
`Γ` of `SL(2, ℤ)`, then `∂ₖ f` is a modular form of weight `k + 2` for `Γ`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AutomorphicForms/ModularForms/Derivative/Variant13f586249f543a3088e38abe238b3a4d866ed87e9da7eb5f911b8079da5ec134.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AutomorphicForms/ModularForms/Derivative/Variant13f586249f543a3088e38abe238b3a4d866ed87e9da7eb5f911b8079da5ec134.lean#L306).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `01573ec68cb07af47909f04352ee6d894ad8232a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
