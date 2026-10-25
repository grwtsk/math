# blastReplicate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9e4eaf5ba8680aaa4ea992d4f5c98a9de004eede570c656790ffa6d2547f6660",
  "kind": "def",
  "lexical_name": "blastReplicate",
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
  "slug": "blastreplicate--148aa4958b7aebbf0826e58c",
  "source": {
    "blob": "2e52e1968c1af15769d1f4b88407cd890ed16360",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 49,
    "line": 34,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Replicate/Variant33973f03c2a58be42428cd2d25e50af9f98536872e817c0c769c0738836de14b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:148aa4958b7aebbf0826e58ccfd917805ba8e8f09e101ea7982f947ca123e016",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Replicate/Variant33973f03c2a58be42428cd2d25e50af9f98536872e817c0c769c0738836de14b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9e4eaf5ba8680aaa4ea992d4f5c98a9de004eede570c656790ffa6d2547f6660`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 34–49.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def blastReplicate (aig : AIG α) (target : ReplicateTarget aig newWidth) :
    AIG.RefVecEntry α newWidth :=
  let ⟨n, inner, h⟩ := target
  let ref := go n inner 0 (by omega) (.emptyWithCapacity newWidth)
  ⟨aig, h ▸ ref⟩
where
  go {aig : AIG α} {w : Nat} (n : Nat) (input : AIG.RefVec aig w) (curr : Nat) (hcurr : curr ≤ n)
      (s : AIG.RefVec aig (w * curr)) : AIG.RefVec aig (w * n) :=
    if h : curr < n then
      let s := s.append input
      go n input (curr + 1) (by omega) s
    else
      have : curr = n := by omega
      this ▸ s
  termination_by n - curr

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Replicate/Variant33973f03c2a58be42428cd2d25e50af9f98536872e817c0c769c0738836de14b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Replicate/Variant33973f03c2a58be42428cd2d25e50af9f98536872e817c0c769c0738836de14b.lean#L34).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2e52e1968c1af15769d1f4b88407cd890ed16360` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
