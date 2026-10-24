# inl_apply_unit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bebe0d12635fbac2ced4c41711cf983542a3b780",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 87,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f2/f2f45bcc1938b5e170e36e6216970ce22679029c283a464ac8f59cba7991fca1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3fc5ab12-4c29-2d87-630e-8202185b746c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b015727f-f847-802a-b1a4-33d17f74037f",
  "kind": "lemma",
  "lexical_name": "inl_apply_unit",
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
  "slug": "inl-apply-unit--a6c77c2d9df5d6a4ae112691",
  "source": {
    "blob": "bebe0d12635fbac2ced4c41711cf983542a3b780",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 91,
    "line": 87,
    "path": "GRWTSK/Algebra/UniversalAlgebra/ProdHom/Variantf2f45bcc1938b5e170e36e6216970ce22679029c283a464ac8f59cba7991fca1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a6c77c2d9df5d6a4ae11269178dd562edf29a56b43c2c1d55d49d9e768743f65",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/ProdHom/Variantf2f45bcc1938b5e170e36e6216970ce22679029c283a464ac8f59cba7991fca1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b015727f-f847-802a-b1a4-33d17f74037f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 87–91.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma inl_apply_unit [DecidablePred fun x : G₀ ↦ x = 0] (x : G₀ˣ) :
    inl G₀ H₀ x = ((x, (1 : H₀ˣ)) : WithZero (G₀ˣ × H₀ˣ)) := by
  simp [inl]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/ProdHom/Variantf2f45bcc1938b5e170e36e6216970ce22679029c283a464ac8f59cba7991fca1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/ProdHom/Variantf2f45bcc1938b5e170e36e6216970ce22679029c283a464ac8f59cba7991fca1.lean#L87).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bebe0d12635fbac2ced4c41711cf983542a3b780` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
