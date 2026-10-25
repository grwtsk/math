# denote_blastRotateRight

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8a528138-15d7-9a2e-a21e-8cab8240e17b",
  "kind": "theorem",
  "lexical_name": "denote_blastRotateRight",
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
  "slug": "denote-blastrotateright--cbc874971d38a1aae3358d5c",
  "source": {
    "blob": "30a41b1ffc6dd09a25c01a261e0a9bb2de6a53fa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 129,
    "line": 105,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RotateRight/Variant874b11ebcd827288ddac1d827d9e5c638169c2053ca8d5ba068b5e334aa9ee68.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cbc874971d38a1aae3358d5cd0356a46cab6f3b94424d92bf4a4759880836250",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RotateRight/Variant874b11ebcd827288ddac1d827d9e5c638169c2053ca8d5ba068b5e334aa9ee68.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8a528138-15d7-9a2e-a21e-8cab8240e17b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 105–129.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem denote_blastRotateRight (aig : AIG α) (target : ShiftTarget aig w)
  (assign : α → Bool) :
  ∀ (idx : Nat) (hidx : idx < w),
      ⟦
        (blastRotateRight aig target).aig,
        (blastRotateRight aig target).vec.get idx hidx,
        assign
      ⟧
        =
      if hidx2 : idx < w - target.distance % w then
        ⟦aig, target.vec.get ((target.distance % w) + idx) (by omega), assign⟧
      else
        ⟦aig, target.vec.get (idx - (w - (target.distance % w))) (by omega), assign⟧
      := by
  intros
  unfold blastRotateRight
  dsimp only
  rw [blastRotateRight.go_get]
  · split <;> simp
  · omega

end bitblast
end BVExpr

end Std.Tactic.BVDecide
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RotateRight/Variant874b11ebcd827288ddac1d827d9e5c638169c2053ca8d5ba068b5e334aa9ee68.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RotateRight/Variant874b11ebcd827288ddac1d827d9e5c638169c2053ca8d5ba068b5e334aa9ee68.lean#L105).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `30a41b1ffc6dd09a25c01a261e0a9bb2de6a53fa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
