# quotientiInfSubgroupOfEmbedding_apply_mk

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bdb062e7-7dd3-268f-04d8-e87f4547f561",
  "kind": "theorem",
  "lexical_name": "quotientiInfSubgroupOfEmbedding_apply_mk",
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
  "slug": "quotientiinfsubgroupofembedding-apply-mk--2c3063701d03955efba283ba",
  "source": {
    "blob": "00eee1062e6dedca68fa00a1a740953746bc13c8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 493,
    "line": 487,
    "path": "GRWTSK/Algebra/GroupTheory/Basic/Variant690a00ec07a8b0350d8f30cbd7b45761061584f9451d6c707f88dc87bed65856.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2c3063701d03955efba283ba57d2abf10a1747cd2a4f00f79deaf286ae3c79a3",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Basic/Variant690a00ec07a8b0350d8f30cbd7b45761061584f9451d6c707f88dc87bed65856.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bdb062e7-7dd3-268f-04d8-e87f4547f561`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 487–493.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem quotientiInfSubgroupOfEmbedding_apply_mk {ι : Type*} (f : ι → Subgroup α) (H : Subgroup α)
    (g : H) (i : ι) :
    quotientiInfSubgroupOfEmbedding f H (QuotientGroup.mk g) i = QuotientGroup.mk g :=
  rfl

/-- The natural embedding `α ⧸ (⨅ i, f i) ↪ Π i, α ⧸ f i`. -/
@[to_additive (attr := simps) "The natural embedding `α ⧸ (⨅ i, f i) ↪ Π i, α ⧸ f i`."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Basic/Variant690a00ec07a8b0350d8f30cbd7b45761061584f9451d6c707f88dc87bed65856.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Basic/Variant690a00ec07a8b0350d8f30cbd7b45761061584f9451d6c707f88dc87bed65856.lean#L487).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `00eee1062e6dedca68fa00a1a740953746bc13c8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
