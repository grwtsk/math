# viaEmbedding_apply_of_notMem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:59d090fd-ea9b-de90-f8d7-989b5e558429",
  "kind": "theorem",
  "lexical_name": "viaEmbedding_apply_of_notMem",
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
  "slug": "viaembedding-apply-of-notmem--e777bc39b7918dfe9ae8db57",
  "source": {
    "blob": "27bb199e7959bf9cdd50a401962efea240b7d48a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 48,
    "line": 41,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ViaEmbedding/Variant68d6631ffed719e7f10628076546da47492ff86e8d3fcf8e3a1751dfa391ea17.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e777bc39b7918dfe9ae8db57c33f6d7eb82810cd38a35719c0648f0954829a19",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/ViaEmbedding/Variant68d6631ffed719e7f10628076546da47492ff86e8d3fcf8e3a1751dfa391ea17.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:59d090fd-ea9b-de90-f8d7-989b5e558429`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 41–48.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem viaEmbedding_apply_of_notMem (x : β) (hx : x ∉ Set.range ι) : e.viaEmbedding ι x = x :=
  extendDomain_apply_not_subtype e (ofInjective ι.1 ι.2) hx

@[deprecated (since := "2025-05-23")]
alias viaEmbedding_apply_of_not_mem := viaEmbedding_apply_of_notMem

open scoped Classical in
/-- `viaEmbedding` as a group homomorphism -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/ViaEmbedding/Variant68d6631ffed719e7f10628076546da47492ff86e8d3fcf8e3a1751dfa391ea17.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ViaEmbedding/Variant68d6631ffed719e7f10628076546da47492ff86e8d3fcf8e3a1751dfa391ea17.lean#L41).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `27bb199e7959bf9cdd50a401962efea240b7d48a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
