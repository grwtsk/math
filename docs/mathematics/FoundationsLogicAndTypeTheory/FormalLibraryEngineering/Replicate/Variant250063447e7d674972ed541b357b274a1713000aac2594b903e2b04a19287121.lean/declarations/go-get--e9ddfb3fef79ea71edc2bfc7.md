# go_get

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:932aa0c0-51d2-769f-3395-0128318586a8",
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
  "slug": "go-get--e9ddfb3fef79ea71edc2bfc7",
  "source": {
    "blob": "5e4075aaec69460ff1d1a320e62fa61b68ac039e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 117,
    "line": 83,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Replicate/Variant250063447e7d674972ed541b357b274a1713000aac2594b903e2b04a19287121.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e9ddfb3fef79ea71edc2bfc75179385dd0aaf0d13c273f52c0699d1956af2b7b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Replicate/Variant250063447e7d674972ed541b357b274a1713000aac2594b903e2b04a19287121.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:932aa0c0-51d2-769f-3395-0128318586a8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 83–117.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem go_get (aig : AIG α) (n : Nat) (curr : Nat) (hcurr : curr ≤ n)
    (input : AIG.RefVec aig w) (s : AIG.RefVec aig (w * curr)) :
    ∀ (idx : Nat) (hidx1 : idx < w * n),
        w * curr ≤ idx
          →
        (go n input curr hcurr s).get idx hidx1
          =
        input.get (idx % w) (aux2 hidx1) := by
  intro idx hidx1 hidx2
  unfold go
  dsimp only
  split
  · cases Nat.lt_or_ge idx (w * (curr + 1)) with
    | inl h =>
      rw [go_get_aux]
      rw [AIG.RefVec.get_append]
      · have : ¬ (idx < w * curr) := by omega
        simp only [this, ↓reduceDIte]
        congr 1
        rw [← Nat.sub_mul_mod (k := curr)]
        · rw [Nat.mod_eq_of_lt]
          apply Nat.sub_lt_left_of_lt_add <;> assumption
        · assumption
      · simpa using h
    | inr h =>
      rw [go_get]
      assumption
  · have : curr = n := by omega
    rw [this] at hidx2
    omega
termination_by n - curr

end blastReplicate

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Replicate/Variant250063447e7d674972ed541b357b274a1713000aac2594b903e2b04a19287121.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Replicate/Variant250063447e7d674972ed541b357b274a1713000aac2594b903e2b04a19287121.lean#L83).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5e4075aaec69460ff1d1a320e62fa61b68ac039e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
