# iterate_map_smul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e25c870536d65d843441f9e7fc0cef200cb4af14",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 99,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1c/1cf082fa888036eb555a9ecae59d1e6a19f6481ffa4b887ff0898bd4868114ac.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c72a139e-0522-d45c-c1b3-a799d368e269",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8c7346a6-81a9-f1de-6af4-c39646d491fb",
  "kind": "theorem",
  "lexical_name": "iterate_map_smul",
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
  "slug": "iterate-map-smul--09578c06ffa818b1f5d42002",
  "source": {
    "blob": "e25c870536d65d843441f9e7fc0cef200cb4af14",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 105,
    "line": 99,
    "path": "GRWTSK/Algebra/GroupTheory/Iterate/Variant1cf082fa888036eb555a9ecae59d1e6a19f6481ffa4b887ff0898bd4868114ac.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:09578c06ffa818b1f5d42002f3eec3ad88adb67eb17020ebd3586a91b7064c7d",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Iterate/Variant1cf082fa888036eb555a9ecae59d1e6a19f6481ffa4b887ff0898bd4868114ac.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8c7346a6-81a9-f1de-6af4-c39646d491fb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 99–105.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem iterate_map_smul (f : M →+ M) (n m : ℕ) (x : M) : f^[n] (m • x) = m • f^[n] x :=
  f.toMultiplicative.iterate_map_pow n x m
#align add_monoid_hom.iterate_map_smul AddMonoidHom.iterate_map_smul

attribute [to_additive (reorder := 5 6)] MonoidHom.iterate_map_pow
#align add_monoid_hom.iterate_map_nsmul AddMonoidHom.iterate_map_nsmul

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Iterate/Variant1cf082fa888036eb555a9ecae59d1e6a19f6481ffa4b887ff0898bd4868114ac.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Iterate/Variant1cf082fa888036eb555a9ecae59d1e6a19f6481ffa4b887ff0898bd4868114ac.lean#L99).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e25c870536d65d843441f9e7fc0cef200cb4af14` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
