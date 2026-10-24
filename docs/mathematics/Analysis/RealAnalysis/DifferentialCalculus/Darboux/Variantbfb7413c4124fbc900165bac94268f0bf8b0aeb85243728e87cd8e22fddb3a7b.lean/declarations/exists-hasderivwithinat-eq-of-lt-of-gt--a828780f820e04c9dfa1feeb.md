# exists_hasDerivWithinAt_eq_of_lt_of_gt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8c8ab626-7f1a-9bd3-2114-52ccd2ab1f5c",
  "kind": "theorem",
  "lexical_name": "exists_hasDerivWithinAt_eq_of_lt_of_gt",
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
  "slug": "exists-hasderivwithinat-eq-of-lt-of-gt--a828780f820e04c9dfa1feeb",
  "source": {
    "blob": "b30c4c4c85d81f5ae1e15ed98521362068d6646a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 83,
    "line": 74,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Darboux/Variantbfb7413c4124fbc900165bac94268f0bf8b0aeb85243728e87cd8e22fddb3a7b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a828780f820e04c9dfa1feebd7e5289a1e426ebbf2f042338348aa49deef69c1",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Darboux/Variantbfb7413c4124fbc900165bac94268f0bf8b0aeb85243728e87cd8e22fddb3a7b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8c8ab626-7f1a-9bd3-2114-52ccd2ab1f5c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 74–83.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_hasDerivWithinAt_eq_of_lt_of_gt (hab : a ≤ b)
    (hf : ∀ x ∈ Icc a b, HasDerivWithinAt f (f' x) (Icc a b) x) {m : ℝ} (hma : m < f' a)
    (hmb : f' b < m) : m ∈ f' '' Ioo a b :=
  let ⟨c, cmem, hc⟩ :=
    exists_hasDerivWithinAt_eq_of_gt_of_lt hab (fun x hx => (hf x hx).neg) (neg_lt_neg hma)
      (neg_lt_neg hmb)
  ⟨c, cmem, neg_injective hc⟩

/-- **Darboux's theorem**: the image of a `Set.OrdConnected` set under `f'` is a `Set.OrdConnected`
set, `HasDerivWithinAt` version. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Darboux/Variantbfb7413c4124fbc900165bac94268f0bf8b0aeb85243728e87cd8e22fddb3a7b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Darboux/Variantbfb7413c4124fbc900165bac94268f0bf8b0aeb85243728e87cd8e22fddb3a7b.lean#L74).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b30c4c4c85d81f5ae1e15ed98521362068d6646a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
