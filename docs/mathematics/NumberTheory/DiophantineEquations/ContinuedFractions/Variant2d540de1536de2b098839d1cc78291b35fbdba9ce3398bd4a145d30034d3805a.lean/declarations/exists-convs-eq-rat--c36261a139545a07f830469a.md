# exists_convs_eq_rat

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:86dcbdb4-b5c3-e70c-cf12-6abeec5d422f",
  "kind": "theorem",
  "lexical_name": "exists_convs_eq_rat",
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
  "slug": "exists-convs-eq-rat--c36261a139545a07f830469a",
  "source": {
    "blob": "8eb79b5421d71fbb966192d7c4ed91ea8a331bad",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 69,
    "line": 64,
    "path": "GRWTSK/NumberTheory/DiophantineEquations/ContinuedFractions/Variant2d540de1536de2b098839d1cc78291b35fbdba9ce3398bd4a145d30034d3805a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c36261a139545a07f830469ac0a592c8fc203a1b473fe47824f94a30825ee17b",
  "verification": {
    "reference": "docs/verification/NumberTheory/DiophantineEquations/ContinuedFractions/Variant2d540de1536de2b098839d1cc78291b35fbdba9ce3398bd4a145d30034d3805a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:86dcbdb4-b5c3-e70c-cf12-6abeec5d422f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 64–69.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_convs_eq_rat {q : ℚ}
    (h : |ξ - q| < 1 / (2 * (q.den : ℝ) ^ 2)) : ∃ n, (GenContFract.of ξ).convs n = q := by
  obtain ⟨n, hn⟩ := exists_rat_eq_convergent h
  exact ⟨n, hn.symm ▸ convs_eq_convergent ξ n⟩

end Real
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/DiophantineEquations/ContinuedFractions/Variant2d540de1536de2b098839d1cc78291b35fbdba9ce3398bd4a145d30034d3805a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/DiophantineEquations/ContinuedFractions/Variant2d540de1536de2b098839d1cc78291b35fbdba9ce3398bd4a145d30034d3805a.lean#L64).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8eb79b5421d71fbb966192d7c4ed91ea8a331bad` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
