# quasiIsoEquiv_id_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ea8ef863b41de8fd3aebad677198fbc43bc89524",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 77,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/16/16233d524f75fbe2533c207eb185e2d618b5ce2c8da1fb3c925f9dce96f477dd.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1919ad8a-ebd7-3703-833d-5cee7f4bad66",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2f055ae6-6c73-dbf6-8c0f-b9860d1e4585",
  "kind": "theorem",
  "lexical_name": "quasiIsoEquiv_id_apply",
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
  "slug": "quasiisoequiv-id-apply--cfa4ea729e28b5fbfafd4db2",
  "source": {
    "blob": "ea8ef863b41de8fd3aebad677198fbc43bc89524",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 95,
    "line": 77,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Core/Variant16233d524f75fbe2533c207eb185e2d618b5ce2c8da1fb3c925f9dce96f477dd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cfa4ea729e28b5fbfafd4db29a928a756ac5337fda786b5f38427dddb096061c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ModelTheory/Core/Variant16233d524f75fbe2533c207eb185e2d618b5ce2c8da1fb3c925f9dce96f477dd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2f055ae6-6c73-dbf6-8c0f-b9860d1e4585`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 77–95.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem quasiIsoEquiv_id_apply
    (C : M.Object)
    (x : D.Line C) :
    D.quasiIsoEquiv (CertifiedQuasiIso.id M C) x = x := by
  rw [D.quasiIsoEquiv_id]
  rfl

end Theory

/-! ## A concrete rank-one finite-free model -/

namespace FiniteFreeRankOne

/--
The model of one finite-free rank-one module, viewed as a complex concentrated
in degree zero.  Morphisms and supported isomorphisms are linear
automorphisms; hence every represented morphism is a quasi-isomorphism in this
small model.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/ModelTheory/Core/Variant16233d524f75fbe2533c207eb185e2d618b5ce2c8da1fb3c925f9dce96f477dd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Core/Variant16233d524f75fbe2533c207eb185e2d618b5ce2c8da1fb3c925f9dce96f477dd.lean#L77).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ea8ef863b41de8fd3aebad677198fbc43bc89524` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
