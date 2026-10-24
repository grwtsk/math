# selected_six_atom_location

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:93ea25cc-405b-bb70-c35f-513531ffb318",
  "kind": "theorem",
  "lexical_name": "selected_six_atom_location",
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
  "slug": "selected-six-atom-location--f8784e50702599de3fe29c8d",
  "source": {
    "blob": "e220b5c43689053096efe141bae6d1de8238d9fe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 57,
    "line": 49,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ShellArithmetic/Variantedd56b4d9a836f718aae362dbe816b5787daa76a1295a6b0a7a4f8fbd8a7ffec.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f8784e50702599de3fe29c8daf8cc6aa7d127b2a72defe6b933a013e13043a49",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ShellArithmetic/Variantedd56b4d9a836f718aae362dbe816b5787daa76a1295a6b0a7a4f8fbd8a7ffec.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:93ea25cc-405b-bb70-c35f-513531ffb318`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 49–57.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem selected_six_atom_location {lo hi : ℝ} (hlo : 6 ≤ lo) (hlen : 12 ≤ hi - lo) {k : ℕ}
    (hk : k ∈ sixIndices lo hi) :
    1 ≤ k ∧ lo < (6 * k : ℕ) ∧ (6 * k : ℕ) ≤ hi := by
  obtain ⟨hkl, hku⟩ := Finset.mem_Ioc.mp hk
  have hl := (Nat.floor_lt (by linarith : 0 ≤ lo / 6)).mp hkl
  have hu := (show (k : ℝ) ≤ (⌊hi / 6⌋₊ : ℝ) by exact_mod_cast hku).trans
    (Nat.floor_le (by linarith : 0 ≤ hi / 6))
  refine ⟨by omega, ?_, ?_⟩ <;> push_cast <;> linarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ShellArithmetic/Variantedd56b4d9a836f718aae362dbe816b5787daa76a1295a6b0a7a4f8fbd8a7ffec.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ShellArithmetic/Variantedd56b4d9a836f718aae362dbe816b5787daa76a1295a6b0a7a4f8fbd8a7ffec.lean#L49).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e220b5c43689053096efe141bae6d1de8238d9fe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
