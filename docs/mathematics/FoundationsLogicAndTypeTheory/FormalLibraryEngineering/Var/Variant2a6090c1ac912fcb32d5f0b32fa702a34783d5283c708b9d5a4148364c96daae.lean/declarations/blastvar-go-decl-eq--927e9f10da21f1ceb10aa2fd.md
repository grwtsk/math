# blastVar.go_decl_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "da5ddd8c072f69d4b64c7c6dec127ed56ad83e8d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 58,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2a/2a6090c1ac912fcb32d5f0b32fa702a34783d5283c708b9d5a4148364c96daae.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:481f5b9f-5c13-c6ff-ffe6-eaaa19f1b9a0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b64f3f76-cb97-7012-b673-4ec888513bfc",
  "kind": "theorem",
  "lexical_name": "blastVar.go_decl_eq",
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
  "slug": "blastvar-go-decl-eq--927e9f10da21f1ceb10aa2fd",
  "source": {
    "blob": "da5ddd8c072f69d4b64c7c6dec127ed56ad83e8d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 76,
    "line": 58,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Var/Variant2a6090c1ac912fcb32d5f0b32fa702a34783d5283c708b9d5a4148364c96daae.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:927e9f10da21f1ceb10aa2fd773d63e7f55bc9be5527d2e33ca459e86fcf50cc",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Var/Variant2a6090c1ac912fcb32d5f0b32fa702a34783d5283c708b9d5a4148364c96daae.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b64f3f76-cb97-7012-b673-4ec888513bfc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 58–76.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem blastVar.go_decl_eq {aig : AIG BVBit} (curr : Nat) (s : AIG.RefVec aig curr) (a : Nat)
    (hcurr : curr ≤ w) :
    ∀ (idx : Nat) (h1) (h2), (go aig w a curr s hcurr).aig.decls[idx]'h2 = aig.decls[idx]'h1 := by
  generalize hgo : go aig w a curr s hcurr = res
  unfold go at hgo
  split at hgo
  · dsimp only at hgo
    rw [← hgo]
    intro curr h1 h2
    rw [blastVar.go_decl_eq]
    rw [AIG.LawfulOperator.decl_eq (f := AIG.mkAtomCached)]
    apply AIG.LawfulOperator.lt_size_of_lt_aig_size (f := AIG.mkAtomCached)
    assumption
  · dsimp only at hgo
    rw [← hgo]
    intros
    simp
termination_by w - curr

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Var/Variant2a6090c1ac912fcb32d5f0b32fa702a34783d5283c708b9d5a4148364c96daae.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Var/Variant2a6090c1ac912fcb32d5f0b32fa702a34783d5283c708b9d5a4148364c96daae.lean#L58).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `da5ddd8c072f69d4b64c7c6dec127ed56ad83e8d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
