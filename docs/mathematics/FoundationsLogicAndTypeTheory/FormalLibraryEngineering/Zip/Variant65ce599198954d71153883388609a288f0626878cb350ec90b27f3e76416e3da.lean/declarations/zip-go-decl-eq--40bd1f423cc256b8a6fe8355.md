# zip.go_decl_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f8dd7b78-79ba-7212-be30-fbdba9c2895b",
  "kind": "theorem",
  "lexical_name": "zip.go_decl_eq",
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
  "slug": "zip-go-decl-eq--40bd1f423cc256b8a6fe8355",
  "source": {
    "blob": "1a910c39a0a156555e65469a82633885afa794d1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 154,
    "line": 134,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Zip/Variant65ce599198954d71153883388609a288f0626878cb350ec90b27f3e76416e3da.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:40bd1f423cc256b8a6fe8355a987752f274d993b584f23f964ec53c9c1f2af99",
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

Occurrence: `result:f8dd7b78-79ba-7212-be30-fbdba9c2895b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 134–154.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem zip.go_decl_eq {aig : AIG α} (i) (hi) (lhs rhs : RefVec aig len)
    (s : RefVec aig i) (f : (aig : AIG α) → BinaryInput aig → Entrypoint α)
    [LawfulOperator α BinaryInput f] [LawfulZipOperator α f] :
    ∀ (idx : Nat) (h1) (h2), (go aig i s hi lhs rhs f).1.decls[idx]'h2 = aig.decls[idx]'h1 := by
  generalize hgo : go aig i s hi lhs rhs f = res
  unfold go at hgo
  split at hgo
  · dsimp only at hgo
    rw [← hgo]
    intros
    intros
    rw [go_decl_eq]
    rw [LawfulOperator.decl_eq]
    apply LawfulOperator.lt_size_of_lt_aig_size
    assumption
  · dsimp only at hgo
    rw [← hgo]
    intros
    simp
termination_by len - i

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Zip/Variant65ce599198954d71153883388609a288f0626878cb350ec90b27f3e76416e3da.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Zip/Variant65ce599198954d71153883388609a288f0626878cb350ec90b27f3e76416e3da.lean#L134).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1a910c39a0a156555e65469a82633885afa794d1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
