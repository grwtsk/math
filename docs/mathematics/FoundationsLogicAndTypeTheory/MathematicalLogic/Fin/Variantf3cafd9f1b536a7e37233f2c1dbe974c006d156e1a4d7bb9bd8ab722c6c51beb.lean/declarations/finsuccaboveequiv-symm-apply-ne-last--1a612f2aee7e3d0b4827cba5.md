# finSuccAboveEquiv_symm_apply_ne_last

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ab615e266ca59fb56aac328b8f4c3895456b5fae",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 256,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f3/f3cafd9f1b536a7e37233f2c1dbe974c006d156e1a4d7bb9bd8ab722c6c51beb.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ca198e66-417d-6ba9-9d4a-6e9734daf927",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:064e52be-8914-1759-be97-59552fe9dc40",
  "kind": "theorem",
  "lexical_name": "finSuccAboveEquiv_symm_apply_ne_last",
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
  "slug": "finsuccaboveequiv-symm-apply-ne-last--1a612f2aee7e3d0b4827cba5",
  "source": {
    "blob": "ab615e266ca59fb56aac328b8f4c3895456b5fae",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 263,
    "line": 256,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Fin/Variantf3cafd9f1b536a7e37233f2c1dbe974c006d156e1a4d7bb9bd8ab722c6c51beb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1a612f2aee7e3d0b4827cba509cc909d3718770346cf16afc2cd5ad3f2199081",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Fin/Variantf3cafd9f1b536a7e37233f2c1dbe974c006d156e1a4d7bb9bd8ab722c6c51beb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:064e52be-8914-1759-be97-59552fe9dc40`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 256–263.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finSuccAboveEquiv_symm_apply_ne_last {p : Fin (n + 1)} (h : p ≠ Fin.last n)
    (x : { x : Fin (n + 1) // x ≠ p }) :
    (finSuccAboveEquiv p).symm x = (p.castLT (Fin.val_lt_last h)).predAbove x := by
  rw [← Option.some_inj]
  simpa [finSuccAboveEquiv, OrderIso.symm] using finSuccEquiv'_ne_last_apply h x.property
#align fin_succ_above_equiv_symm_apply_ne_last finSuccAboveEquiv_symm_apply_ne_last

/-- `Equiv` between `Fin (n + 1)` and `Option (Fin n)` sending `Fin.last n` to `none` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Fin/Variantf3cafd9f1b536a7e37233f2c1dbe974c006d156e1a4d7bb9bd8ab722c6c51beb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Fin/Variantf3cafd9f1b536a7e37233f2c1dbe974c006d156e1a4d7bb9bd8ab722c6c51beb.lean#L256).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ab615e266ca59fb56aac328b8f4c3895456b5fae` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
