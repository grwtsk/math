# centeredTwistedPsiHalfPlusEpsilon_inv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ecd13c21-f9b3-f7e9-99d6-08cd4963db5f",
  "kind": "theorem",
  "lexical_name": "centeredTwistedPsiHalfPlusEpsilon_inv",
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
  "slug": "centeredtwistedpsihalfplusepsilon-inv--880dbbb1784d3e745d7408db",
  "source": {
    "blob": "6dc17e10a395c47076f19ebb08bdc5d6d39da91b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 147,
    "line": 139,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CriticalSummatory/Variant053e57a8998c0d1573bbd13ed744b243af923321030d5e40d3cfd6d9eeca7191.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:880dbbb1784d3e745d7408dbe47c26af75290f0d14bcae47d86dcf93c4b5bd3b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CriticalSummatory/Variant053e57a8998c0d1573bbd13ed744b243af923321030d5e40d3cfd6d9eeca7191.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ecd13c21-f9b3-f7e9-99d6-08cd4963db5f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 139–147.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem centeredTwistedPsiHalfPlusEpsilon_inv
    {q : ℕ} {χ : DirichletCharacter ℂ q}
    (hχ : CenteredTwistedPsiHalfPlusEpsilon χ) :
    CenteredTwistedPsiHalfPlusEpsilon χ⁻¹ :=
  (centeredTwistedPsiHalfPlusEpsilon_inv_iff χ).2 hχ

/-- The countable `r + 1` critical membership is likewise invariant under
character inversion. -/
@[surface_adapter]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CriticalSummatory/Variant053e57a8998c0d1573bbd13ed744b243af923321030d5e40d3cfd6d9eeca7191.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CriticalSummatory/Variant053e57a8998c0d1573bbd13ed744b243af923321030d5e40d3cfd6d9eeca7191.lean#L139).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6dc17e10a395c47076f19ebb08bdc5d6d39da91b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
