# loopInv_run

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:452f0cdf-1085-f393-4d01-fc2c558ca6a6",
  "kind": "lemma",
  "lexical_name": "loopInv_run",
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
  "slug": "loopinv-run--3ccaa55d3ca996d577465605",
  "source": {
    "blob": "f3a761c50704f71cc60e17e6edc7cc0a2d3e94f7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 260,
    "line": 250,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NumericCert/Variant228d1bb3a5879cfded8a49524ebcb6ba8f6a07c5abd87ea3a27742b8926f1e45.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3ccaa55d3ca996d5774656059f9a4ad98251d8835f1ac5bc880fb74763352c35",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NumericCert/Variant228d1bb3a5879cfded8a49524ebcb6ba8f6a07c5abd87ea3a27742b8926f1e45.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:452f0cdf-1085-f393-4d01-fc2c558ca6a6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 250–260.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma loopInv_run (hN : 0 < N) {l : List (ℤ × ℤ)} : ∀ {s : St}, LoopInv S N K s → EnclOK K S s.j l → (run N K l s).ok = true →
    LoopInv S N K (run N K l s) := by
  induction l with
  | nil => intro s h _ _; exact h
  | cons e l ih =>
    intro s h hencl hok
    have hstep : LoopInv S N K (step N K s e) := loopInv_step hN h hencl.1
    have hj : (step N K s e).j = s.j + 1 := rfl
    exact ih hstep (hj ▸ hencl.2) hok

/-- **soundness of the checker.** -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NumericCert/Variant228d1bb3a5879cfded8a49524ebcb6ba8f6a07c5abd87ea3a27742b8926f1e45.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NumericCert/Variant228d1bb3a5879cfded8a49524ebcb6ba8f6a07c5abd87ea3a27742b8926f1e45.lean#L250).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f3a761c50704f71cc60e17e6edc7cc0a2d3e94f7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
