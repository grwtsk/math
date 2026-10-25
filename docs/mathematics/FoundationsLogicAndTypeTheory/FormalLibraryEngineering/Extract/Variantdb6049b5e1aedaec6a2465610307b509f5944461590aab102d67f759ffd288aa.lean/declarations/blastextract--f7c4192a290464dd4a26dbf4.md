# blastExtract

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:eaf4cb7b24b9c782e5ba10f99dbcf077a99457984b775c6d39da8babacb9f27a",
  "kind": "def",
  "lexical_name": "blastExtract",
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
  "slug": "blastextract--f7c4192a290464dd4a26dbf4",
  "source": {
    "blob": "a26160b4f0d0880a749e4829f4098b3b1a4a9dd1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 58,
    "line": 41,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Extract/Variantdb6049b5e1aedaec6a2465610307b509f5944461590aab102d67f759ffd288aa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f7c4192a290464dd4a26dbf41578831098420e1e03cd7db3731dec62685e7160",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Extract/Variantdb6049b5e1aedaec6a2465610307b509f5944461590aab102d67f759ffd288aa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:eaf4cb7b24b9c782e5ba10f99dbcf077a99457984b775c6d39da8babacb9f27a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 41–58.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def blastExtract (aig : AIG α) (target : ExtractTarget aig newWidth) :
    AIG.RefVecEntry α newWidth :=
  let ⟨input, start⟩ := target
  ⟨aig, go input start 0 (by omega) (.emptyWithCapacity newWidth)⟩
where
  go {aig : AIG α} {w : Nat} (input : AIG.RefVec aig w) (start : Nat) (curr : Nat)
      (hcurr : curr ≤ newWidth) (s : AIG.RefVec aig curr) :
      AIG.RefVec aig newWidth :=
  if h : curr < newWidth then
    let falseRef := aig.mkConstCached false
    let nextRef := input.getD (start + curr) falseRef
    let s := s.push nextRef
    go input start (curr + 1) (by omega) s
  else
    have : curr = newWidth := by omega
    this ▸ s
termination_by newWidth - curr

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Extract/Variantdb6049b5e1aedaec6a2465610307b509f5944461590aab102d67f759ffd288aa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Extract/Variantdb6049b5e1aedaec6a2465610307b509f5944461590aab102d67f759ffd288aa.lean#L41).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a26160b4f0d0880a749e4829f4098b3b1a4a9dd1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
