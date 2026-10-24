# OrdinateExactLanguageSuppliers.grh_critical_and_transcendental

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f3bcbe83-5ea7-995c-0258-06412433118b",
  "kind": "theorem",
  "lexical_name": "OrdinateExactLanguageSuppliers.grh_critical_and_transcendental",
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
  "slug": "ordinateexactlanguagesuppliers-grh-critical-and-transcendental--696079f91aa74fced0e16e4c",
  "source": {
    "blob": "9b41af8b4b4e7e1b2caf7abfe30b741dd95ff8e9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 420,
    "line": 402,
    "path": "GRWTSK/NumberTheory/Farey/DynamicSoficExactLanguageBoundary.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:696079f91aa74fced0e16e4c047bfa4738d77931d45c0ba7d3f1ff1584c65c1f",
  "verification": {
    "reference": "docs/verification/NumberTheory/Farey/DynamicSoficExactLanguageBoundary.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f3bcbe83-5ea7-995c-0258-06412433118b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 402–420.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem OrdinateExactLanguageSuppliers.grh_critical_and_transcendental
    {Zero : Type w} {Height : Type v}
    {Label : Type u} [Fintype Label]
    (S : OrdinateExactLanguageSuppliers Zero Height Label)
    (hGRH : GRHFor S.isZero S.onCriticalLine) :
    ∀ z, S.isZero z →
      IsIrrational S.arithmetic (S.height z) ∧
        S.onCriticalLine z ∧
        IsTranscendental S.arithmetic (S.height z) := by
  intro z hz
  have hi := S.irrational_without_grh z hz
  have hl : S.onCriticalLine z := hGRH z hz
  have ht : IsTranscendental S.arithmetic (S.height z) := by
    intro ha
    exact S.trace_not_eventually_exact z hz
      (S.algebraic_on_line_to_exact z hz hl ha)
  exact ⟨hi, hl, ht⟩

end GRWTSK.NumberTheory.Farey.DynamicSoficExactLanguageBoundary
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Farey/DynamicSoficExactLanguageBoundary.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Farey/DynamicSoficExactLanguageBoundary.lean#L402).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9b41af8b4b4e7e1b2caf7abfe30b741dd95ff8e9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
