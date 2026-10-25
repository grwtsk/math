# go_get

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:01d3b1e1-6923-d282-3bcb-19b12c3a8c08",
  "kind": "theorem",
  "lexical_name": "go_get",
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
  "slug": "go-get--deede2fb991bd3226f4e93f0",
  "source": {
    "blob": "30a41b1ffc6dd09a25c01a261e0a9bb2de6a53fa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 104,
    "line": 62,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RotateRight/Variant874b11ebcd827288ddac1d827d9e5c638169c2053ca8d5ba068b5e334aa9ee68.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:deede2fb991bd3226f4e93f0e5726f82e357e7a50bcef07f74c1283ef170c216",
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

Occurrence: `result:01d3b1e1-6923-d282-3bcb-19b12c3a8c08`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 62–104.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem go_get (aig : AIG α) (distance : Nat) (input : AIG.RefVec aig w)
    (curr : Nat) (hcurr : curr ≤ w) (s : AIG.RefVec aig curr) :
    ∀ (idx : Nat) (hidx1 : idx < w),
        curr ≤ idx
          →
        (go input distance curr hcurr s).get idx hidx1
          =
        if hidx3 : idx < w - distance % w then
          input.get ((distance % w) + idx) (by omega)
        else
          input.get (idx - (w - (distance % w))) (by omega)
        := by
  intro idx hidx1 hidx2
  unfold go
  split
  · dsimp only
    cases Nat.eq_or_lt_of_le hidx2 with
    | inl heq =>
      split
      · split
        · rw [go_get_aux]; case hidx => omega
          rw [AIG.RefVec.get_push_ref_eq']
          · simp [heq]
          · omega
        · omega
      · split
        · omega
        · rw [go_get_aux]; case hidx => omega
          rw [AIG.RefVec.get_push_ref_eq']
          · simp [heq]
          · omega
    | inr heq =>
      split
      · rw [go_get]
        omega
      · rw [go_get]
        omega
  · omega
termination_by w - curr

end blastRotateRight

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RotateRight/Variant874b11ebcd827288ddac1d827d9e5c638169c2053ca8d5ba068b5e334aa9ee68.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RotateRight/Variant874b11ebcd827288ddac1d827d9e5c638169c2053ca8d5ba068b5e334aa9ee68.lean#L62).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `30a41b1ffc6dd09a25c01a261e0a9bb2de6a53fa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
