# unpair_pair

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f1567ac5-939b-3ef6-d8ab-05021003e51d",
  "kind": "theorem",
  "lexical_name": "unpair_pair",
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
  "slug": "unpair-pair--d7b64cd187d8725ddafbc52c",
  "source": {
    "blob": "5788b5936155a0261302463a11ca9973d63d2ca7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 86,
    "line": 73,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Pairing/Variant7234c11728f1ffd48d4eeab6c0772e23116861b4f205a0aba753a320fe1cfba3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d7b64cd187d8725ddafbc52c4e115f63bdf82a22949cfa5f25ffaa59293708a7",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Pairing/Variant7234c11728f1ffd48d4eeab6c0772e23116861b4f205a0aba753a320fe1cfba3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f1567ac5-939b-3ef6-d8ab-05021003e51d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 73–86.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem unpair_pair (a b : ℕ) : unpair (pair a b) = (a, b) := by
  dsimp only [pair]; split_ifs with h
  · show unpair (b * b + a) = (a, b)
    have be : sqrt (b * b + a) = b := sqrt_add_eq _ (le_trans (le_of_lt h) (Nat.le_add_left _ _))
    simp [unpair, be, add_tsub_cancel_right, h]
  · show unpair (a * a + a + b) = (a, b)
    have ae : sqrt (a * a + (a + b)) = a := by
      rw [sqrt_add_eq]
      exact add_le_add_left (le_of_not_gt h) _
    simp [unpair, ae, Nat.not_lt_zero, add_assoc]
#align nat.unpair_mkpair Nat.unpair_pair

/-- An equivalence between `ℕ × ℕ` and `ℕ`. -/
@[simps (config := { fullyApplied := false })]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/Pairing/Variant7234c11728f1ffd48d4eeab6c0772e23116861b4f205a0aba753a320fe1cfba3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Pairing/Variant7234c11728f1ffd48d4eeab6c0772e23116861b4f205a0aba753a320fe1cfba3.lean#L73).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5788b5936155a0261302463a11ca9973d63d2ca7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
