# not_fermat_42

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "18006729ccadb7b168af90b8ad8625385a86c3f2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 288,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e3/e35c342bbd003a4e356218ef91740dd1070bffa1ffcf665606d4dd6915531e4d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e76bc5ee-5c55-d9c1-d161-7ccdfbd6afe0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1b7b739d-92df-994a-5772-2e8fda15f89e",
  "kind": "theorem",
  "lexical_name": "not_fermat_42",
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
  "slug": "not-fermat-42--cbd3bae76180a2bb9f5505a3",
  "source": {
    "blob": "18006729ccadb7b168af90b8ad8625385a86c3f2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 297,
    "line": 288,
    "path": "GRWTSK/NumberTheory/DiophantineEquations/Four/Variante35c342bbd003a4e356218ef91740dd1070bffa1ffcf665606d4dd6915531e4d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cbd3bae76180a2bb9f5505a3627c9d2f87ec28c63c25b7abc14e8d4ead3d80e1",
  "verification": {
    "reference": "docs/verification/NumberTheory/DiophantineEquations/Four/Variante35c342bbd003a4e356218ef91740dd1070bffa1ffcf665606d4dd6915531e4d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1b7b739d-92df-994a-5772-2e8fda15f89e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 288–297.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem not_fermat_42 {a b c : ℤ} (ha : a ≠ 0) (hb : b ≠ 0) : a ^ 4 + b ^ 4 ≠ c ^ 2 := by
  intro h
  obtain ⟨a0, b0, c0, ⟨hf, h2, hp⟩⟩ :=
    Fermat42.exists_pos_odd_minimal (And.intro ha (And.intro hb h))
  apply Fermat42.not_minimal hf h2 hp

/--
Fermat's Last Theorem for $n=4$: if `a b c : ℕ` are all non-zero
then `a ^ 4 + b ^ 4 ≠ c ^ 4`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/DiophantineEquations/Four/Variante35c342bbd003a4e356218ef91740dd1070bffa1ffcf665606d4dd6915531e4d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/DiophantineEquations/Four/Variante35c342bbd003a4e356218ef91740dd1070bffa1ffcf665606d4dd6915531e4d.lean#L288).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `18006729ccadb7b168af90b8ad8625385a86c3f2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
