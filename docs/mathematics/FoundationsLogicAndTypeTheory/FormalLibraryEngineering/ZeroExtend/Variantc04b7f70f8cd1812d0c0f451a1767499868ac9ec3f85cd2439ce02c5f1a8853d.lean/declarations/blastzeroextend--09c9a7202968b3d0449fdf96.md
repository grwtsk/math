# blastZeroExtend

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cb669d4342afca391559472f83bbeb49a11428b3a09dbbcd718d78b07eb9f8c2",
  "kind": "def",
  "lexical_name": "blastZeroExtend",
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
  "slug": "blastzeroextend--09c9a7202968b3d0449fdf96",
  "source": {
    "blob": "8112b37d7d18da28b3f82c7ec5ba5cc389283fdc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 58,
    "line": 36,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ZeroExtend/Variantc04b7f70f8cd1812d0c0f451a1767499868ac9ec3f85cd2439ce02c5f1a8853d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:09c9a7202968b3d0449fdf9642a869d49aa2030aa90dd5c7ed33d0d41a758409",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ZeroExtend/Variantc04b7f70f8cd1812d0c0f451a1767499868ac9ec3f85cd2439ce02c5f1a8853d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:cb669d4342afca391559472f83bbeb49a11428b3a09dbbcd718d78b07eb9f8c2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 36–58.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def blastZeroExtend (aig : AIG α) (target : AIG.ExtendTarget aig newWidth) :
    AIG.RefVecEntry α newWidth :=
  let ⟨width, input⟩ := target
  go aig width input newWidth 0 (by omega) (.emptyWithCapacity newWidth)
where
  go (aig : AIG α) (w : Nat) (input : AIG.RefVec aig w) (newWidth : Nat) (curr : Nat)
      (hcurr : curr ≤ newWidth) (s : AIG.RefVec aig curr) :
      AIG.RefVecEntry α newWidth :=
    if hcurr1 : curr < newWidth then
      if hcurr2 : curr < w then
        let s := s.push (input.get curr hcurr2)
        go aig w input newWidth (curr + 1) (by omega) s
      else
        let zeroRef := aig.mkConstCached false
        let s := s.push zeroRef
        go aig w input newWidth (curr + 1) (by omega) s
    else
      have hcurr : curr = newWidth := by omega
      ⟨aig, hcurr ▸ s⟩
termination_by newWidth - curr

namespace blastZeroExtend

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ZeroExtend/Variantc04b7f70f8cd1812d0c0f451a1767499868ac9ec3f85cd2439ce02c5f1a8853d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ZeroExtend/Variantc04b7f70f8cd1812d0c0f451a1767499868ac9ec3f85cd2439ce02c5f1a8853d.lean#L36).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8112b37d7d18da28b3f82c7ec5ba5cc389283fdc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
