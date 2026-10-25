# primrec_pappAck_step

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fbc935ef-0b04-0c35-a001-abcd6848fa7b",
  "kind": "lemma",
  "lexical_name": "primrec_pappAck_step",
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
  "slug": "primrec-pappack-step--e968f2f49e2a6c41c68666b4",
  "source": {
    "blob": "0e9e50e6aed1cc245f6e1c040646457d5beb4a2d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 370,
    "line": 364,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variantd02dac5bb72379f6f4159d71d669dad8f7eea98de9a52ac39ad7e0d85752ba5f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e968f2f49e2a6c41c68666b4ed37f778c6f8bc309625e8996976d29370dfec82",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variantd02dac5bb72379f6f4159d71d669dad8f7eea98de9a52ac39ad7e0d85752ba5f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fbc935ef-0b04-0c35-a001-abcd6848fa7b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 364–370.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma primrec_pappAck_step : Primrec pappAck.step := by
  apply_rules
    [Code.primrec₂_curry.comp, Code.primrec₂_prec.comp, Code.primrec₂_comp.comp,
      _root_.Primrec.id, Primrec.const]

set_option backward.isDefEq.respectTransparency false in
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variantd02dac5bb72379f6f4159d71d669dad8f7eea98de9a52ac39ad7e0d85752ba5f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variantd02dac5bb72379f6f4159d71d669dad8f7eea98de9a52ac39ad7e0d85752ba5f.lean#L364).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0e9e50e6aed1cc245f6e1c040646457d5beb4a2d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
