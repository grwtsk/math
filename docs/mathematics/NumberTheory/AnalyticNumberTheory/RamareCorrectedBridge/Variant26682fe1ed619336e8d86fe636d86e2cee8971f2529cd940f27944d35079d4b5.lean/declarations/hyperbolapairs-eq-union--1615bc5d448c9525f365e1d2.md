# hyperbolaPairs_eq_union

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8d5a0a92-cebf-1c39-356c-fa4b1a86c02d",
  "kind": "theorem",
  "lexical_name": "hyperbolaPairs_eq_union",
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
  "slug": "hyperbolapairs-eq-union--1615bc5d448c9525f365e1d2",
  "source": {
    "blob": "3d0eef3f07450b8199acad938667e8229ec1654f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 77,
    "line": 48,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/RamareCorrectedBridge/Variant26682fe1ed619336e8d86fe636d86e2cee8971f2529cd940f27944d35079d4b5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1615bc5d448c9525f365e1d292482e90e446a433c99c8a33b14f292b03441540",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/RamareCorrectedBridge/Variant26682fe1ed619336e8d86fe636d86e2cee8971f2529cd940f27944d35079d4b5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8d5a0a92-cebf-1c39-356c-fa4b1a86c02d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 48–77.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem hyperbolaPairs_eq_union (N : Nat) :
    hyperbolaPairs N = hyperbolaLeft N ∪ hyperbolaRight N := by
  classical
  ext p
  simp only [hyperbolaPairs, hyperbolaLeft, hyperbolaRight,
    Finset.mem_filter, Finset.mem_product, Finset.mem_Icc,
    Finset.mem_union]
  constructor
  · intro hp
    rcases hp with ⟨⟨⟨hp1, hp1N⟩, ⟨hp2, hp2N⟩⟩, hprod⟩
    by_cases hleft : p.1 <= Nat.sqrt N
    · exact Or.inl ⟨⟨⟨hp1, hleft⟩, ⟨hp2, hp2N⟩⟩, hprod⟩
    · have hp1s : Nat.sqrt N + 1 <= p.1 := by omega
      by_cases hright : p.2 <= Nat.sqrt N
      · exact Or.inr ⟨⟨⟨hp1, hp1N⟩, ⟨hp2, hright⟩⟩, hprod⟩
      · have hp2s : Nat.sqrt N + 1 <= p.2 := by omega
        have hsprod : (Nat.sqrt N + 1) * (Nat.sqrt N + 1) <=
            p.1 * p.2 := Nat.mul_le_mul hp1s hp2s
        have hlt : N < (Nat.sqrt N + 1) * (Nat.sqrt N + 1) := by
          simpa [Nat.succ_eq_add_one] using Nat.lt_succ_sqrt N
        omega
  · intro hp
    rcases hp with hp | hp
    · rcases hp with ⟨⟨⟨hp1, hp1s⟩, ⟨hp2, hp2N⟩⟩, hprod⟩
      have hp1N : p.1 <= N := hp1s.trans (Nat.sqrt_le_self N)
      exact ⟨⟨⟨hp1, hp1N⟩, ⟨hp2, hp2N⟩⟩, hprod⟩
    · rcases hp with ⟨⟨⟨hp1, hp1N⟩, ⟨hp2, hp2s⟩⟩, hprod⟩
      have hp2N : p.2 <= N := hp2s.trans (Nat.sqrt_le_self N)
      exact ⟨⟨⟨hp1, hp1N⟩, ⟨hp2, hp2N⟩⟩, hprod⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/RamareCorrectedBridge/Variant26682fe1ed619336e8d86fe636d86e2cee8971f2529cd940f27944d35079d4b5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/RamareCorrectedBridge/Variant26682fe1ed619336e8d86fe636d86e2cee8971f2529cd940f27944d35079d4b5.lean#L48).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3d0eef3f07450b8199acad938667e8229ec1654f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
