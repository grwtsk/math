# empiricalVsUniformTV_triangle

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f2cf4e1b-f35d-3381-da06-1175996736e5",
  "kind": "theorem",
  "lexical_name": "empiricalVsUniformTV_triangle",
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
  "slug": "empiricalvsuniformtv-triangle--7adb4946be4d62dd7f1c083f",
  "source": {
    "blob": "4a4be79226cbaf3133038e1c2564a076e1be8bbd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 219,
    "line": 172,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/CyclicBernoulliComparison.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7adb4946be4d62dd7f1c083f7ffca35b4503ba670ea31cae16c75f8b2c8e826a",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/CyclicBernoulliComparison.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f2cf4e1b-f35d-3381-da06-1175996736e5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 172–219.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem empiricalVsUniformTV_triangle
    (roots : Finset ℕ) (hroots : 0 < roots.card)
    (x y : ℕ → ι → Bool) :
    empiricalVsUniformTV roots hroots y ≤
      finiteEventTV roots x y + empiricalVsUniformTV roots hroots x := by
  classical
  have hevent (event : (ι → Bool) → Bool) :
      |uniformPatternEventDeviation roots hroots y event| ≤
        finiteEventTV roots x y + empiricalVsUniformTV roots hroots x := by
    have hxy :
        |empiricalEvent roots y event - empiricalEvent roots x event| ≤
          finiteEventTV roots x y := by
      calc
        |empiricalEvent roots y event - empiricalEvent roots x event| =
          |empiricalEvent roots x event - empiricalEvent roots y event| :=
            abs_sub_comm _ _
        _ ≤ finiteEventTV roots x y := by
          unfold finiteEventTV
          exact Finset.le_sup'
            (fun e : (ι → Bool) → Bool =>
              |empiricalEvent roots x e - empiricalEvent roots y e|)
            (Finset.mem_univ event)
    have hx :
        |uniformPatternEventDeviation roots hroots x event| ≤
          empiricalVsUniformTV roots hroots x := by
      unfold empiricalVsUniformTV
      exact Finset.le_sup'
        (fun e : (ι → Bool) → Bool =>
          |uniformPatternEventDeviation roots hroots x e|)
        (Finset.mem_univ event)
    calc
      |uniformPatternEventDeviation roots hroots y event| =
        |(empiricalEvent roots y event - empiricalEvent roots x event) +
          uniformPatternEventDeviation roots hroots x event| := by
            rw [uniformPatternEventDeviation_eq_rooted roots hroots x event,
                uniformPatternEventDeviation_eq_rooted roots hroots y event]
            ring
      _ ≤ |empiricalEvent roots y event - empiricalEvent roots x event| +
            |uniformPatternEventDeviation roots hroots x event| := abs_add_le _ _
      _ ≤ finiteEventTV roots x y + empiricalVsUniformTV roots hroots x :=
        add_le_add hxy hx
  unfold empiricalVsUniformTV
  apply Finset.sup'_le
  intro event he
  exact hevent event

/-- Exact ordinary selected-source label, on the finite coordinate subtype
given by the user-supplied shift set. Source indices remain original Nat. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/CyclicBernoulliComparison.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/CyclicBernoulliComparison.lean#L172).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4a4be79226cbaf3133038e1c2564a076e1be8bbd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
