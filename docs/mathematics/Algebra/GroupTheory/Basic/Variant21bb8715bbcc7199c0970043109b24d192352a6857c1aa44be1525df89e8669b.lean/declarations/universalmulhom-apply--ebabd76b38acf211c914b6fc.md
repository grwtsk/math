# universalMulHom_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4a65f4afd5c3a2134a965eba1eec21a3eb7ea65b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 513,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/21/21bb8715bbcc7199c0970043109b24d192352a6857c1aa44be1525df89e8669b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:016d2f03-de3a-0326-5d75-367fd8fbf66a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6278cef7-6984-3280-5e7f-970a1aeb5bb1",
  "kind": "theorem",
  "lexical_name": "universalMulHom_apply",
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
  "slug": "universalmulhom-apply--ebabd76b38acf211c914b6fc",
  "source": {
    "blob": "4a65f4afd5c3a2134a965eba1eec21a3eb7ea65b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 517,
    "line": 513,
    "path": "GRWTSK/Algebra/GroupTheory/Basic/Variant21bb8715bbcc7199c0970043109b24d192352a6857c1aa44be1525df89e8669b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ebabd76b38acf211c914b6fc5062240842732ae5bfe06f030e39744c2b7d2a7a",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Basic/Variant21bb8715bbcc7199c0970043109b24d192352a6857c1aa44be1525df89e8669b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6278cef7-6984-3280-5e7f-970a1aeb5bb1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 513–517.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem universalMulHom_apply {r : R} {s : S} :
    universalMulHom f fS hf (r /ₒ s) = ((fS s)⁻¹ : Units T) * f r :=
  rfl

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Basic/Variant21bb8715bbcc7199c0970043109b24d192352a6857c1aa44be1525df89e8669b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Basic/Variant21bb8715bbcc7199c0970043109b24d192352a6857c1aa44be1525df89e8669b.lean#L513).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4a65f4afd5c3a2134a965eba1eec21a3eb7ea65b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
