# ternaryComplexSign_neg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7cff5f0b-33cc-59f7-cd2e-4e65305526d4",
  "kind": "theorem",
  "lexical_name": "ternaryComplexSign_neg",
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
  "slug": "ternarycomplexsign-neg--149670fdbd4190dd80afde15",
  "source": {
    "blob": "05c69220b9c2d37aa58346bb6a7aaf01401e661f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 105,
    "line": 89,
    "path": "GRWTSK/NumberTheory/Farey/ProjectiveQuadraticChannel.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:149670fdbd4190dd80afde1574503adb824cfc013c2dd70cd248b9f6594a01da",
  "verification": {
    "reference": "docs/verification/NumberTheory/Farey/ProjectiveQuadraticChannel.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7cff5f0b-33cc-59f7-cd2e-4e65305526d4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 89–105.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ternaryComplexSign_neg (a : ZMod 3) :
    ternaryComplexSign (-a) = -ternaryComplexSign a := by
  have h0 : ternaryComplexSign (0 : ZMod 3) = 0 := by
    rw [ternaryComplexSign, if_pos rfl]
  have h1 : ternaryComplexSign (1 : ZMod 3) = 1 := by
    rw [ternaryComplexSign, if_neg (by decide), if_pos rfl]
  have h2 : ternaryComplexSign (2 : ZMod 3) = -1 := by
    rw [ternaryComplexSign, if_neg (by decide), if_neg (by decide)]
  fin_cases a
  · change ternaryComplexSign (-(0 : ZMod 3)) = -ternaryComplexSign 0
    rw [neg_zero, h0, neg_zero]
  · change ternaryComplexSign (-(1 : ZMod 3)) = -ternaryComplexSign 1
    rw [show -(1 : ZMod 3) = 2 by decide, h2, h1]
  · change ternaryComplexSign (-(2 : ZMod 3)) = -ternaryComplexSign 2
    rw [show -(2 : ZMod 3) = 1 by decide, h1, h2, neg_neg]

/-- The actual global complex readout, including the zero vector. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Farey/ProjectiveQuadraticChannel.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Farey/ProjectiveQuadraticChannel.lean#L89).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `05c69220b9c2d37aa58346bb6a7aaf01401e661f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
