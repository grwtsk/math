# goldbachLogMass_pos_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fc1e06a5-1232-ac70-fe98-9fbf97c1536e",
  "kind": "theorem",
  "lexical_name": "goldbachLogMass_pos_iff",
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
  "slug": "goldbachlogmass-pos-iff--ca948b75f873b7b3ebcfd311",
  "source": {
    "blob": "16fd561be8520e94d9b040206628017b6706c3d8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 119,
    "line": 101,
    "path": "GRWTSK/NumberTheory/Primes/GoldbachWeighted.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ca948b75f873b7b3ebcfd3113337389ee6ebaf4a81e68aabfe6a31876e49ea2c",
  "verification": {
    "reference": "docs/verification/NumberTheory/Primes/GoldbachWeighted.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fc1e06a5-1232-ac70-fe98-9fbf97c1536e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 101–119.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem goldbachLogMass_pos_iff (N : ℕ) :
    0 < goldbachLogMass N ↔
      ∃ p q : ℕ, Nat.Prime p ∧ Nat.Prime q ∧ p + q = N := by
  unfold goldbachLogMass
  have hnonneg :
      ∀ uv ∈ goldbachBox N, 0 ≤ goldbachLogTerm N uv :=
    fun uv _ => goldbachLogTerm_nonneg N uv
  rw [Finset.sum_pos_iff_of_nonneg hnonneg]
  constructor
  · rintro ⟨⟨p, q⟩, _, hterm⟩
    exact ⟨p, q, (goldbachLogTerm_pos_iff N p q).mp hterm⟩
  · rintro ⟨p, q, hp, hq, hsum⟩
    have hpN : p ≤ N := by omega
    have hqN : q ≤ N := by omega
    exact ⟨(p, q), (mem_goldbachBox).2 ⟨hpN, hqN⟩,
      (goldbachLogTerm_pos_iff N p q).2 ⟨hp, hq, hsum⟩⟩

/-- The logarithmic mass and the existing exact count have identical
positivity, without identifying their numerical values. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Primes/GoldbachWeighted.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Primes/GoldbachWeighted.lean#L101).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `16fd561be8520e94d9b040206628017b6706c3d8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
