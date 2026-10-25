# zip.go_le_size

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d29407f3-5360-a890-23f0-5fe8f3ba043c",
  "kind": "theorem",
  "lexical_name": "zip.go_le_size",
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
  "slug": "zip-go-le-size--9171304fc7c26b1489a4bd07",
  "source": {
    "blob": "1a910c39a0a156555e65469a82633885afa794d1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 126,
    "line": 114,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Zip/Variant65ce599198954d71153883388609a288f0626878cb350ec90b27f3e76416e3da.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9171304fc7c26b1489a4bd075257f3ee2d7b2334c5bf902f7671f1f45a7ed7b6",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Zip/Variant65ce599198954d71153883388609a288f0626878cb350ec90b27f3e76416e3da.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d29407f3-5360-a890-23f0-5fe8f3ba043c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 114–126.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem zip.go_le_size {aig : AIG α} (idx : Nat) (hidx) (s : RefVec aig idx)
    (lhs rhs : RefVec aig len)
    (f : (aig : AIG α) → BinaryInput aig → Entrypoint α) [LawfulOperator α BinaryInput f]
    [LawfulZipOperator α f] :
    aig.decls.size ≤ (go aig idx s hidx lhs rhs f).1.decls.size := by
  unfold go
  split
  · dsimp only
    refine Nat.le_trans ?_ (by apply zip.go_le_size)
    apply LawfulOperator.le_size
  · simp
  termination_by len - idx

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Zip/Variant65ce599198954d71153883388609a288f0626878cb350ec90b27f3e76416e3da.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Zip/Variant65ce599198954d71153883388609a288f0626878cb350ec90b27f3e76416e3da.lean#L114).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1a910c39a0a156555e65469a82633885afa794d1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
