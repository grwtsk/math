# Gamma_add_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1f1a3f77dd9f70a1716cdd40600573cde925ca09",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 309,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/30/309ed56ad43ea584eaff8f968f6d8e013305db3b2cfd5d3dde07995d4d89e52b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ac14e762-dcb0-4848-302b-0a3fd9116587",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:afd8e35c-241f-12aa-63f7-4465abbd157f",
  "kind": "theorem",
  "lexical_name": "Gamma_add_one",
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
  "slug": "gamma-add-one--4dbf2c1e91bb7cc8832c2c78",
  "source": {
    "blob": "1f1a3f77dd9f70a1716cdd40600573cde925ca09",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 315,
    "line": 309,
    "path": "GRWTSK/Analysis/SpecialFunctions/Basic/Variant309ed56ad43ea584eaff8f968f6d8e013305db3b2cfd5d3dde07995d4d89e52b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4dbf2c1e91bb7cc8832c2c78b6275079e6b454859fb97db97f9d51491978502d",
  "verification": {
    "reference": "docs/verification/Analysis/SpecialFunctions/Basic/Variant309ed56ad43ea584eaff8f968f6d8e013305db3b2cfd5d3dde07995d4d89e52b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:afd8e35c-241f-12aa-63f7-4465abbd157f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 309–315.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Gamma_add_one (s : ℂ) (h2 : s ≠ 0) : Gamma (s + 1) = s * Gamma s := by
  let n := ⌊1 - s.re⌋₊
  have t1 : -s.re < n := by simpa only [sub_sub_cancel_left] using Nat.sub_one_lt_floor (1 - s.re)
  have t2 : -(s + 1).re < n := by rw [add_re, one_re]; linarith
  rw [Gamma_eq_GammaAux s n t1, Gamma_eq_GammaAux (s + 1) n t2, GammaAux_recurrence1 s n t1]
  field_simp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/SpecialFunctions/Basic/Variant309ed56ad43ea584eaff8f968f6d8e013305db3b2cfd5d3dde07995d4d89e52b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SpecialFunctions/Basic/Variant309ed56ad43ea584eaff8f968f6d8e013305db3b2cfd5d3dde07995d4d89e52b.lean#L309).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1f1a3f77dd9f70a1716cdd40600573cde925ca09` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
