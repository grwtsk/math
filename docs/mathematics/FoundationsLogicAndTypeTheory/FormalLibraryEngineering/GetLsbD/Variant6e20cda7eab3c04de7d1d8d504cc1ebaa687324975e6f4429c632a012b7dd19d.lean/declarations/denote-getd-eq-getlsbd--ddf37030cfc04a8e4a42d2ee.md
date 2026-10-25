# denote_getD_eq_getLsbD

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "24e5b66806fdc4b1a08221f76479e8e2883b7dc8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 29,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6e/6e20cda7eab3c04de7d1d8d504cc1ebaa687324975e6f4429c632a012b7dd19d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:68776493-61bc-47e4-defb-c97036f3c41e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:121a6114-ba79-e8d4-6898-5bd4ae373ffd",
  "kind": "theorem",
  "lexical_name": "denote_getD_eq_getLsbD",
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
  "slug": "denote-getd-eq-getlsbd--ddf37030cfc04a8e4a42d2ee",
  "source": {
    "blob": "24e5b66806fdc4b1a08221f76479e8e2883b7dc8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 43,
    "line": 29,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GetLsbD/Variant6e20cda7eab3c04de7d1d8d504cc1ebaa687324975e6f4429c632a012b7dd19d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ddf37030cfc04a8e4a42d2ee99b147a2a595f840dd6f937855755ce993eb5f88",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GetLsbD/Variant6e20cda7eab3c04de7d1d8d504cc1ebaa687324975e6f4429c632a012b7dd19d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:121a6114-ba79-e8d4-6898-5bd4ae373ffd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 29–43.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem denote_getD_eq_getLsbD (aig : AIG α) (assign : α → Bool) (x : BitVec w)
    (xv : AIG.RefVec aig w) (falseRef : AIG.Ref aig)
    (hx : ∀ idx hidx, ⟦aig, xv.get idx hidx, assign⟧ = x.getLsbD idx)
    (hfalse : ⟦aig, falseRef, assign⟧ = false) :
    ∀ idx, ⟦aig, xv.getD idx falseRef, assign⟧ = x.getLsbD idx := by
  intro idx
  rw [AIG.RefVec.getD]
  split
  · rw [hx]
  · rw [hfalse]
    symm
    apply BitVec.getLsbD_of_ge
    omega

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GetLsbD/Variant6e20cda7eab3c04de7d1d8d504cc1ebaa687324975e6f4429c632a012b7dd19d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GetLsbD/Variant6e20cda7eab3c04de7d1d8d504cc1ebaa687324975e6f4429c632a012b7dd19d.lean#L29).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `24e5b66806fdc4b1a08221f76479e8e2883b7dc8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
