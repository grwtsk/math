# add_factorial_succ_lt_factorial_add_succ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8eaa5581-7f19-4b2f-5242-d3c05d1bb108",
  "kind": "theorem",
  "lexical_name": "add_factorial_succ_lt_factorial_add_succ",
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
  "slug": "add-factorial-succ-lt-factorial-add-succ--8c65b50388b023c077b923ef",
  "source": {
    "blob": "6a6f30c5287c7531b1c25913fb0174a6df3335a9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 187,
    "line": 172,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Basic/Variant89c9892addc14e70f8f2aa02ef4ef744f269371cb842ebc54ecda05f7b52b423.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8c65b50388b023c077b923ef58144a4d7858ed0a4a0190550d3261c73dfd60a0",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Basic/Variant89c9892addc14e70f8f2aa02ef4ef744f269371cb842ebc54ecda05f7b52b423.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8eaa5581-7f19-4b2f-5242-d3c05d1bb108`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 172–187.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem add_factorial_succ_lt_factorial_add_succ {i : ℕ} (n : ℕ) (hi : 2 ≤ i) :
    i + (n + 1)! < (i + n + 1)! := by
  rw [← Nat.succ_eq_add_one (i + _), factorial_succ (i + _), add_mul, one_mul]
  have : i ≤ i + n := le.intro rfl
  exact
    add_lt_add_of_lt_of_le
      (this.trans_lt
        ((lt_mul_iff_one_lt_right ((by decide : 0 < 2).trans_le (hi.trans this))).mpr
          (lt_iff_le_and_ne.mpr
            ⟨(i + n).factorial_pos, fun g =>
              Nat.not_succ_le_self 1 ((hi.trans this).trans (factorial_eq_one.mp g.symm))⟩)))
      (factorial_le
        ((le_of_eq (add_comm n 1)).trans
        ((add_le_add_iff_right n).mpr ((by decide : 1 ≤ 2).trans hi))))
#align nat.add_factorial_succ_lt_factorial_add_succ Nat.add_factorial_succ_lt_factorial_add_succ

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/Basic/Variant89c9892addc14e70f8f2aa02ef4ef744f269371cb842ebc54ecda05f7b52b423.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Basic/Variant89c9892addc14e70f8f2aa02ef4ef744f269371cb842ebc54ecda05f7b52b423.lean#L172).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6a6f30c5287c7531b1c25913fb0174a6df3335a9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
