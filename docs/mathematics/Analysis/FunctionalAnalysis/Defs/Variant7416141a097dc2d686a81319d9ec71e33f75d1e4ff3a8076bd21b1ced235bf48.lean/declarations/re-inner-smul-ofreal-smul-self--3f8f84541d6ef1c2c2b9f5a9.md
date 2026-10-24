# re_inner_smul_ofReal_smul_self

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:65c6e7ce-5b97-c6da-2c95-9b2daff45fc0",
  "kind": "theorem",
  "lexical_name": "re_inner_smul_ofReal_smul_self",
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
  "slug": "re-inner-smul-ofreal-smul-self--3f8f84541d6ef1c2c2b9f5a9",
  "source": {
    "blob": "e52275982c4e008c8b44ea460ffe569b865e9705",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 320,
    "line": 314,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/Defs/Variant7416141a097dc2d686a81319d9ec71e33f75d1e4ff3a8076bd21b1ced235bf48.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3f8f84541d6ef1c2c2b9f5a9bdc45c341c74d0677a4a72d36a17317e443fd1b9",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/Defs/Variant7416141a097dc2d686a81319d9ec71e33f75d1e4ff3a8076bd21b1ced235bf48.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:65c6e7ce-5b97-c6da-2c95-9b2daff45fc0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 314–320.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem re_inner_smul_ofReal_smul_self (x : F) {t : ℝ} :
    re ⟪(t : 𝕜) • x, (t : 𝕜) • x⟫ = normSqF x * t * t := by
  apply ofReal_injective (K := 𝕜)
  simp [inner_self_ofReal_re, inner_smul_ofReal_left, inner_smul_ofReal_right, normSq]

/-- An auxiliary equality useful to prove the **Cauchy–Schwarz inequality**. Here we use the
standard argument involving the discriminant of quadratic form. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/Defs/Variant7416141a097dc2d686a81319d9ec71e33f75d1e4ff3a8076bd21b1ced235bf48.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/Defs/Variant7416141a097dc2d686a81319d9ec71e33f75d1e4ff3a8076bd21b1ced235bf48.lean#L314).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e52275982c4e008c8b44ea460ffe569b865e9705` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
