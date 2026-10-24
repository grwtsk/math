# primeLogInventory_filter_log

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3f336144-782a-595d-4ac3-2b96f114f230",
  "kind": "theorem",
  "lexical_name": "primeLogInventory_filter_log",
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
  "slug": "primeloginventory-filter-log--6b72cb3d18a0bdc7935a5f64",
  "source": {
    "blob": "74cb5fd35b264c09f8621a7c38bd130d27393855",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 67,
    "line": 55,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/WeightedPrimeAbel/Variant9c516dfa751ba852d2d717f830a61291d9a7dd1a27a250396b6dde2e1236cfc0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6b72cb3d18a0bdc7935a5f64037c349457b60bde47b15cd54a852019b1bff89e",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/WeightedPrimeAbel/Variant9c516dfa751ba852d2d717f830a61291d9a7dd1a27a250396b6dde2e1236cfc0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3f336144-782a-595d-4ac3-2b96f114f230`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–67.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem primeLogInventory_filter_log (b t : ℝ) (ht : t ≤ b) :
    (primeLogInventory b).filter (fun p : ℕ => Real.log p ≤ t) = primeLogInventory t := by
  ext p
  simp only [primeLogInventory, Finset.mem_filter, Finset.mem_Ioc]
  by_cases hp : p.Prime
  · have hp0 : 0 < (p : ℝ) := by exact_mod_cast hp.pos
    rw [Real.log_le_iff_le_exp hp0,
      Nat.le_floor_iff (Real.exp_pos b).le, Nat.le_floor_iff (Real.exp_pos t).le]
    constructor
    · exact fun h => ⟨⟨h.1.1.1, h.2⟩, h.1.2⟩
    · exact fun h => ⟨⟨⟨h.1.1, h.1.2.trans (Real.exp_le_exp.mpr ht)⟩, h.2⟩, h.1.2⟩
  · simp [hp]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/WeightedPrimeAbel/Variant9c516dfa751ba852d2d717f830a61291d9a7dd1a27a250396b6dde2e1236cfc0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/WeightedPrimeAbel/Variant9c516dfa751ba852d2d717f830a61291d9a7dd1a27a250396b6dde2e1236cfc0.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `74cb5fd35b264c09f8621a7c38bd130d27393855` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
