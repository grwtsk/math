# endpoint_eq_of_windows

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:667d3670-8bdf-7988-fc15-d57c403c8508",
  "kind": "theorem",
  "lexical_name": "endpoint_eq_of_windows",
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
  "slug": "endpoint-eq-of-windows--ca056074a50d673cb59fb068",
  "source": {
    "blob": "9aa1fa70ab5d7e892f81bd719f3a95f6b800dddc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 158,
    "line": 144,
    "path": "GRWTSK/Analysis/Complex/RationalPowerIntegerSeed.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ca056074a50d673cb59fb068d65e5d788d17cee34e85319a1384904059a3e6ce",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/RationalPowerIntegerSeed.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:667d3670-8bdf-7988-fc15-d57c403c8508`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 144–158.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem endpoint_eq_of_windows (q : ℚ) (z : QComplex)
    (p : RationalPowerEvaluation.Schedule) (j : ℕ) (a : Encoding)
    (ha : Valid a) (h : Binding q z p j a)
    (hg : RationalPowerEvaluation.Admissible q z p)
    (t : Fin (p.squarings + 1) → GridState) (out : State)
    (hw : Windows p.bits a j (t 0))
    (hs : ∀ i : Fin p.squarings, StepValid p.bits (t i.castSucc) (t i.succ))
    (ho : decode p.bits (t (Fin.last p.squarings)) = out) :
    RationalPowerEvaluation.Admissible q z p ∧ RationalPowerEvaluation.compute q z p = out := by
  have ht : TraceValid p.bits (RationalPowerEvaluation.seed q z p)
      (RationalPowerEvaluation.seedError q z p) p.squarings t :=
    ⟨seed_valid q z p j a ha h (t 0) hw, hs⟩
  exact ⟨hg, (trace_refines p.bits _ _ p.squarings t ht).trans ho⟩

end GRWTSK.Analysis.Complex.RationalPowerIntegerSeed
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ComplexAnalysis/RationalPowerIntegerSeed.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Complex/RationalPowerIntegerSeed.lean#L144).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9aa1fa70ab5d7e892f81bd719f3a95f6b800dddc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
