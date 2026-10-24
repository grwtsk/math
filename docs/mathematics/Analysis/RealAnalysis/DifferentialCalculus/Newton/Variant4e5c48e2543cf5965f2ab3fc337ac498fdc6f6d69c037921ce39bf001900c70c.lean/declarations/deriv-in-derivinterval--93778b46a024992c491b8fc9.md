# deriv_in_derivInterval

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:158d54f3-60bb-acf0-dd6f-4bca4899cdcb",
  "kind": "theorem",
  "lexical_name": "deriv_in_derivInterval",
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
  "slug": "deriv-in-derivinterval--93778b46a024992c491b8fc9",
  "source": {
    "blob": "ec9d246d4125bc4d43ddcf3493084911838ef0be",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 199,
    "line": 193,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Newton/Variant4e5c48e2543cf5965f2ab3fc337ac498fdc6f6d69c037921ce39bf001900c70c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:93778b46a024992c491b8fc9ab985078f3adb3a1363c20ae316f3e1e0313e8d0",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Newton/Variant4e5c48e2543cf5965f2ab3fc337ac498fdc6f6d69c037921ce39bf001900c70c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:158d54f3-60bb-acf0-dd6f-4bca4899cdcb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 193–199.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem deriv_in_derivInterval (e : Expr) (hsupp : ExprSupported e) (hvar0 : UsesOnlyVar0 e)
    (I : IntervalRat) (ξ : ℝ) (hξ : ξ ∈ I) :
    deriv (evalFunc1 e) ξ ∈ derivInterval e (fun _ => I) 0 :=
  derivInterval_correct_single e hsupp hvar0 I ξ hξ

/-- Mean Value Theorem application: for differentiable f, f(x) - f(c) = f'(ξ)(x - c)
    for some ξ between c and x. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Newton/Variant4e5c48e2543cf5965f2ab3fc337ac498fdc6f6d69c037921ce39bf001900c70c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Newton/Variant4e5c48e2543cf5965f2ab3fc337ac498fdc6f6d69c037921ce39bf001900c70c.lean#L193).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ec9d246d4125bc4d43ddcf3493084911838ef0be` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
