# lift_mk

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "de4c7bfc2bd58ef8c3ecc82a0f1ec57a0f771fb2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 79,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/96/966df179f029a391e6a7cad26a9e221a2645819567ffde169fbf4ed0a060d223.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b039636e-a175-cea9-e2f8-828504f0f5c5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:581300bd-fe59-01a8-6085-d8038a75bdae",
  "kind": "lemma",
  "lexical_name": "lift_mk",
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
  "slug": "lift-mk--cab5e9d2bfe335854965d95d",
  "source": {
    "blob": "de4c7bfc2bd58ef8c3ecc82a0f1ec57a0f771fb2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 85,
    "line": 79,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant966df179f029a391e6a7cad26a9e221a2645819567ffde169fbf4ed0a060d223.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cab5e9d2bfe335854965d95d1e84209bd31cd160b55d53724f69eb2a92c65e74",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variant966df179f029a391e6a7cad26a9e221a2645819567ffde169fbf4ed0a060d223.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:581300bd-fe59-01a8-6085-d8038a75bdae`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 79–85.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected lemma lift_mk {α : Type*} (f : { v : V // v ≠ 0 } → α)
    (hf : ∀ (a b : { v : V // v ≠ 0 }) (t : K), a = t • (b : V) → f a = f b)
    (v : V) (hv : v ≠ 0) :
    Projectivization.lift f hf (mk K v hv) = f ⟨v, hv⟩ :=
  rfl

/-- Choose a representative of `v : Projectivization K V` in `V`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variant966df179f029a391e6a7cad26a9e221a2645819567ffde169fbf4ed0a060d223.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variant966df179f029a391e6a7cad26a9e221a2645819567ffde169fbf4ed0a060d223.lean#L79).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `de4c7bfc2bd58ef8c3ecc82a0f1ec57a0f771fb2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
