# isLittleO_const_mul_left_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "72efa0b21efda005b9e1aae2e9dd6babe22768c0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1183,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/cb/cb033f4581bc0bb2731f18c310d99363acefda092db32e80afa6c8cc63825ab0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ae0fc4d5-6d59-ef4a-f469-b9c0703bc97f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:43b30a37-0093-4a58-c896-b59435adb315",
  "kind": "theorem",
  "lexical_name": "isLittleO_const_mul_left_iff",
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
  "slug": "islittleo-const-mul-left-iff--3fe5a2eeb59520166f9fc60a",
  "source": {
    "blob": "72efa0b21efda005b9e1aae2e9dd6babe22768c0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1186,
    "line": 1183,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Defs/Variantcb033f4581bc0bb2731f18c310d99363acefda092db32e80afa6c8cc63825ab0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3fe5a2eeb59520166f9fc60a74cd357c598d4b896c3e1932d8ab08fec760656a",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Defs/Variantcb033f4581bc0bb2731f18c310d99363acefda092db32e80afa6c8cc63825ab0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:43b30a37-0093-4a58-c896-b59435adb315`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1183–1186.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isLittleO_const_mul_left_iff {f : α → S} {c : S} (hc : c ≠ 0) :
    (fun x => c * f x) =o[l] g ↔ f =o[l] g :=
  ⟨(isBigO_self_const_mul hc f l).trans_isLittleO, (isBigO_const_mul_self c f l).trans_isLittleO⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Defs/Variantcb033f4581bc0bb2731f18c310d99363acefda092db32e80afa6c8cc63825ab0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Defs/Variantcb033f4581bc0bb2731f18c310d99363acefda092db32e80afa6c8cc63825ab0.lean#L1183).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `72efa0b21efda005b9e1aae2e9dd6babe22768c0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
