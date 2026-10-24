# IsIntegralClosure.comap_ne_bot

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7b519251123fc5ad17f47dd71d4752e9801793db",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 232,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/80/806bcfca9dc5ad60fb4af27e5892943bd28c8ab31e5ba79f4d78cce9f50325e1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:38ca445b-6b3b-a79f-690d-877c49a45147",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:918fcac6-5eed-9737-a58b-06877942a78c",
  "kind": "theorem",
  "lexical_name": "IsIntegralClosure.comap_ne_bot",
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
  "slug": "isintegralclosure-comap-ne-bot--1356509db68649d1f16a5e2a",
  "source": {
    "blob": "7b519251123fc5ad17f47dd71d4752e9801793db",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 236,
    "line": 232,
    "path": "GRWTSK/Algebra/GoingUp/Variant806bcfca9dc5ad60fb4af27e5892943bd28c8ab31e5ba79f4d78cce9f50325e1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1356509db68649d1f16a5e2a7a6a88d7cf7bfd76a1093982e96d2c1e899f17e7",
  "verification": {
    "reference": "docs/verification/Algebra/GoingUp/Variant806bcfca9dc5ad60fb4af27e5892943bd28c8ab31e5ba79f4d78cce9f50325e1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:918fcac6-5eed-9737-a58b-06877942a78c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 232–236.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsIntegralClosure.comap_ne_bot [Nontrivial R] {I : Ideal A} (I_ne_bot : I ≠ ⊥) :
    I.comap (algebraMap R A) ≠ ⊥ :=
  let ⟨x, x_mem, x_ne_zero⟩ := I.ne_bot_iff.mp I_ne_bot
  comap_ne_bot_of_integral_mem x_ne_zero x_mem (IsIntegralClosure.isIntegral R S x)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/GoingUp/Variant806bcfca9dc5ad60fb4af27e5892943bd28c8ab31e5ba79f4d78cce9f50325e1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GoingUp/Variant806bcfca9dc5ad60fb4af27e5892943bd28c8ab31e5ba79f4d78cce9f50325e1.lean#L232).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7b519251123fc5ad17f47dd71d4752e9801793db` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
