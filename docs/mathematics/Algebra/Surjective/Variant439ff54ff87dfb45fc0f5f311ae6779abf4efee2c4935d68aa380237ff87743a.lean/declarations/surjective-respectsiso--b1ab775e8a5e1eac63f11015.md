# surjective_respectsIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d68bb0a8-f04b-246f-c86c-13e09243994f",
  "kind": "theorem",
  "lexical_name": "surjective_respectsIso",
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
  "slug": "surjective-respectsiso--b1ab775e8a5e1eac63f11015",
  "source": {
    "blob": "198b1e9d5be3352a8d0402c27b681a128bc9fa40",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 43,
    "line": 38,
    "path": "GRWTSK/Algebra/Surjective/Variant439ff54ff87dfb45fc0f5f311ae6779abf4efee2c4935d68aa380237ff87743a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b1ab775e8a5e1eac63f11015c970ac3091ca502ee3f5015dd6e5127ab96ed5dd",
  "verification": {
    "reference": "docs/verification/Algebra/Surjective/Variant439ff54ff87dfb45fc0f5f311ae6779abf4efee2c4935d68aa380237ff87743a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d68bb0a8-f04b-246f-c86c-13e09243994f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 38–43.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem surjective_respectsIso : RespectsIso surjective := by
  apply surjective_stableUnderComposition.respectsIso
  intros _ _ _ _ e
  exact e.surjective
#align ring_hom.surjective_respects_iso RingHom.surjective_respectsIso

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Surjective/Variant439ff54ff87dfb45fc0f5f311ae6779abf4efee2c4935d68aa380237ff87743a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Surjective/Variant439ff54ff87dfb45fc0f5f311ae6779abf4efee2c4935d68aa380237ff87743a.lean#L38).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `198b1e9d5be3352a8d0402c27b681a128bc9fa40` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
