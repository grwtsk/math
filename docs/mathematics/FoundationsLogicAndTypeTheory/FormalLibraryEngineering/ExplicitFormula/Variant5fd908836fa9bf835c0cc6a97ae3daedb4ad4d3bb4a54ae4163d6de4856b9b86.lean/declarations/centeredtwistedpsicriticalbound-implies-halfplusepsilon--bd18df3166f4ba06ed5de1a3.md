# centeredTwistedPsiCriticalBound_implies_halfPlusEpsilon

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "15416067faa420ed099dd88edb1049f3767a7826",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 99,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5f/5fd908836fa9bf835c0cc6a97ae3daedb4ad4d3bb4a54ae4163d6de4856b9b86.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1b460977-79e8-6341-f490-16cdb19a9d55",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:15b32cbe-7877-e88e-d868-1d484cc7a16e",
  "kind": "theorem",
  "lexical_name": "centeredTwistedPsiCriticalBound_implies_halfPlusEpsilon",
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
  "slug": "centeredtwistedpsicriticalbound-implies-halfplusepsilon--bd18df3166f4ba06ed5de1a3",
  "source": {
    "blob": "15416067faa420ed099dd88edb1049f3767a7826",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 120,
    "line": 99,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExplicitFormula/Variant5fd908836fa9bf835c0cc6a97ae3daedb4ad4d3bb4a54ae4163d6de4856b9b86.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bd18df3166f4ba06ed5de1a379903d9643a7cf3491d3c6176e5686fced844fdc",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExplicitFormula/Variant5fd908836fa9bf835c0cc6a97ae3daedb4ad4d3bb4a54ae4163d6de4856b9b86.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:15b32cbe-7877-e88e-d868-1d484cc7a16e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 99–120.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem centeredTwistedPsiCriticalBound_implies_halfPlusEpsilon
    {q : ℕ} [NeZero q] {χ : DirichletCharacter ℂ q}
    (hCritical : CenteredTwistedPsiCriticalBound χ) :
    CenteredTwistedPsiHalfPlusEpsilon χ := by
  rintro ε hε
  obtain ⟨C, hC, hBound⟩ := hCritical
  let K : ℝ := (4 / ε ^ 2) * (q : ℝ) ^ ε
  refine ⟨C * K, by positivity, ?_⟩
  intro x hx
  calc
    ‖centeredTwistedPsi χ x‖ ≤
        C * centeredTwistedPsiCriticalRate q x := hBound x hx
    _ ≤ C * (K * (x : ℝ) ^ (1 / 2 + ε)) := by
      exact mul_le_mul_of_nonneg_left
        (centeredTwistedPsiCriticalRate_le_halfPlusEpsilon q hε x hx) hC
    _ = (C * K) * (x : ℝ) ^ (1 / 2 + ε) := by ring

/-- Checked endpoint expected from the completed explicit formula, zero
counting, gamma/trivial-zero estimates, contour control, and de-smoothing.

The structure contains the reverse analytic implication only; it contains no
forward GRH proof and has no inhabitant in this module. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExplicitFormula/Variant5fd908836fa9bf835c0cc6a97ae3daedb4ad4d3bb4a54ae4163d6de4856b9b86.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExplicitFormula/Variant5fd908836fa9bf835c0cc6a97ae3daedb4ad4d3bb4a54ae4163d6de4856b9b86.lean#L99).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `15416067faa420ed099dd88edb1049f3767a7826` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
