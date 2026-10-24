# range_atoms

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:83ed0d9f-801e-12cd-e8a2-c53d799419f4",
  "kind": "theorem",
  "lexical_name": "range_atoms",
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
  "slug": "range-atoms--88ab52b94a79911fb90d089c",
  "source": {
    "blob": "70e3db66dbad4ba002e76ba8532dfa4746c3250e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 95,
    "line": 81,
    "path": "GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyWeightedBasis.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:88ab52b94a79911fb90d089c4908ddc378f33b1459d24e6ee8b14c73d8b51382",
  "verification": {
    "reference": "docs/verification/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyWeightedBasis.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:83ed0d9f-801e-12cd-e8a2-c53d799419f4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 81–95.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem range_atoms (a b : K) (k : ℕ) : Set.range (atom a b k) = generators a b k := by
  ext f
  constructor
  · rintro ⟨i, rfl⟩
    cases i with
    | inl i => exact Or.inl ⟨i.val, Nat.le_of_lt_succ i.isLt, rfl⟩
    | inr j =>
      have hj : j.val + 2 ≤ k := by omega
      exact Or.inr ⟨j.val, hj, rfl⟩
  · rintro (⟨i, hi, rfl⟩ | ⟨j, hj, rfl⟩)
    · exact ⟨Sum.inl ⟨i, Nat.lt_succ_of_le hi⟩, rfl⟩
    · have hj' : j < k - 1 := by omega
      exact ⟨Sum.inr ⟨j, hj'⟩, rfl⟩

/-- The new basis spans the SAME old W_k. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyWeightedBasis.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyWeightedBasis.lean#L81).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `70e3db66dbad4ba002e76ba8532dfa4746c3250e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
