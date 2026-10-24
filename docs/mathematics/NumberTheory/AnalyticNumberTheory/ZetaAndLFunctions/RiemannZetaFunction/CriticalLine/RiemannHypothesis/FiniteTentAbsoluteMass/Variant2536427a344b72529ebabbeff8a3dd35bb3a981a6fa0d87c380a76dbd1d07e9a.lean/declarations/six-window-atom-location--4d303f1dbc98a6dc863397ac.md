# six_window_atom_location

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f4319a61-c659-d773-d6ab-e67b26aa56f2",
  "kind": "theorem",
  "lexical_name": "six_window_atom_location",
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
  "slug": "six-window-atom-location--4d303f1dbc98a6dc863397ac",
  "source": {
    "blob": "38bfda76cc340b3fae3b045d23d22935425ac848",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 97,
    "line": 89,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FiniteTentAbsoluteMass/Variant2536427a344b72529ebabbeff8a3dd35bb3a981a6fa0d87c380a76dbd1d07e9a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4d303f1dbc98a6dc863397ac9fe62d46edee88b2246adf5af18f22da1860d2b3",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FiniteTentAbsoluteMass/Variant2536427a344b72529ebabbeff8a3dd35bb3a981a6fa0d87c380a76dbd1d07e9a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f4319a61-c659-d773-d6ab-e67b26aa56f2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 89–97.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem six_window_atom_location {x : ℝ} (hx : 6 ≤ x) {k : ℕ}
    (hk : k ∈ sixWindow x) :
    1 ≤ k ∧ 2 * x < (6 * k : ℕ) ∧ (6 * k : ℕ) ≤ 4 * x := by
  obtain ⟨hlo, hhi⟩ := Finset.mem_Ioc.mp hk
  have hkr : x / 3 < (k : ℝ) := (Nat.floor_lt (by linarith : 0 ≤ x / 3)).mp hlo
  have hu := (show (k : ℝ) ≤ (⌊2 * x / 3⌋₊ : ℝ) by exact_mod_cast hhi).trans
    (Nat.floor_le (by linarith : 0 ≤ 2 * x / 3))
  refine ⟨by omega, ?_, ?_⟩ <;> push_cast <;> linarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FiniteTentAbsoluteMass/Variant2536427a344b72529ebabbeff8a3dd35bb3a981a6fa0d87c380a76dbd1d07e9a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FiniteTentAbsoluteMass/Variant2536427a344b72529ebabbeff8a3dd35bb3a981a6fa0d87c380a76dbd1d07e9a.lean#L89).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `38bfda76cc340b3fae3b045d23d22935425ac848` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
