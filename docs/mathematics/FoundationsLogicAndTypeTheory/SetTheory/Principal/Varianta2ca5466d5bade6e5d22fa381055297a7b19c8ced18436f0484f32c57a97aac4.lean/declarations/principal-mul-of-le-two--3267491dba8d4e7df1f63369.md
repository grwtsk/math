# principal_mul_of_le_two

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8815470b-8592-137c-e72a-538ebaf36d55",
  "kind": "theorem",
  "lexical_name": "principal_mul_of_le_two",
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
  "slug": "principal-mul-of-le-two--3267491dba8d4e7df1f63369",
  "source": {
    "blob": "68c6c8e702a156de5d956d82b17329d6fe4f232d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 277,
    "line": 269,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Principal/Varianta2ca5466d5bade6e5d22fa381055297a7b19c8ced18436f0484f32c57a97aac4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3267491dba8d4e7df1f63369cc5fb83253aef74cf388ae34d7c80cd8ce84dc3b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/Principal/Varianta2ca5466d5bade6e5d22fa381055297a7b19c8ced18436f0484f32c57a97aac4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8815470b-8592-137c-e72a-538ebaf36d55`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 269–277.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem principal_mul_of_le_two (ho : o ≤ 2) : Principal (· * ·) o := by
  rcases lt_or_eq_of_le ho with (ho | rfl)
  · rw [← succ_one, lt_succ_iff] at ho
    rcases lt_or_eq_of_le ho with (ho | rfl)
    · rw [lt_one_iff_zero.1 ho]
      exact principal_zero
    · exact principal_mul_one
  · exact principal_mul_two

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/Principal/Varianta2ca5466d5bade6e5d22fa381055297a7b19c8ced18436f0484f32c57a97aac4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Principal/Varianta2ca5466d5bade6e5d22fa381055297a7b19c8ced18436f0484f32c57a97aac4.lean#L269).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `68c6c8e702a156de5d956d82b17329d6fe4f232d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
