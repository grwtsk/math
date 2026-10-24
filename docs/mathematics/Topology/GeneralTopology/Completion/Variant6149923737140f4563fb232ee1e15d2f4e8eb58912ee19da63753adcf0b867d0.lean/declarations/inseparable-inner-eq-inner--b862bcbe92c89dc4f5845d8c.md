# Inseparable.inner_eq_inner

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6662bab85be51d1e7b3c4be39ca3971571f4fc98",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 25,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/61/6149923737140f4563fb232ee1e15d2f4e8eb58912ee19da63753adcf0b867d0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d99b0b71-a47c-855c-502a-ba38f46b3528",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:020130de-2cc9-93ea-67fc-b6546fc6bc58",
  "kind": "theorem",
  "lexical_name": "Inseparable.inner_eq_inner",
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
  "slug": "inseparable-inner-eq-inner--b862bcbe92c89dc4f5845d8c",
  "source": {
    "blob": "6662bab85be51d1e7b3c4be39ca3971571f4fc98",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 31,
    "line": 25,
    "path": "GRWTSK/Topology/GeneralTopology/Completion/Variant6149923737140f4563fb232ee1e15d2f4e8eb58912ee19da63753adcf0b867d0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b862bcbe92c89dc4f5845d8c474c35f14fba54512c44c4c1d08942cd63a5e182",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Completion/Variant6149923737140f4563fb232ee1e15d2f4e8eb58912ee19da63753adcf0b867d0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:020130de-2cc9-93ea-67fc-b6546fc6bc58`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 25–31.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Inseparable.inner_eq_inner {x₁ x₂ y₁ y₂ : E}
    (hx : Inseparable x₁ x₂) (hy : Inseparable y₁ y₂) :
    ⟪x₁, y₁⟫ = ⟪x₂, y₂⟫ :=
  ((hx.prod hy).map continuous_inner).eq

namespace SeparationQuotient

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Completion/Variant6149923737140f4563fb232ee1e15d2f4e8eb58912ee19da63753adcf0b867d0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Completion/Variant6149923737140f4563fb232ee1e15d2f4e8eb58912ee19da63753adcf0b867d0.lean#L25).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6662bab85be51d1e7b3c4be39ca3971571f4fc98` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
