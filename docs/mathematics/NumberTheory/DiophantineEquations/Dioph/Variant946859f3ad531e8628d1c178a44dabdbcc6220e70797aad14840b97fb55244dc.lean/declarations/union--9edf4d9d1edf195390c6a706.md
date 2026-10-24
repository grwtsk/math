# union

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:041b7e6c-2b8c-468b-9538-f13bbaa6d362",
  "kind": "theorem",
  "lexical_name": "union",
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
  "slug": "union--9edf4d9d1edf195390c6a706",
  "source": {
    "blob": "4b34c2e2932e388df7b4717a063c3a344dd54ed5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 345,
    "line": 329,
    "path": "GRWTSK/NumberTheory/DiophantineEquations/Dioph/Variant946859f3ad531e8628d1c178a44dabdbcc6220e70797aad14840b97fb55244dc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9edf4d9d1edf195390c6a706c155f8b14a344670f65ab5ea8425a3c4cd47e1ed",
  "verification": {
    "reference": "docs/verification/NumberTheory/DiophantineEquations/Dioph/Variant946859f3ad531e8628d1c178a44dabdbcc6220e70797aad14840b97fb55244dc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:041b7e6c-2b8c-468b-9538-f13bbaa6d362`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 329–345.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem union : ∀ (_ : Dioph S) (_ : Dioph S'), Dioph (S ∪ S')
  | ⟨β, p, pe⟩, ⟨γ, q, qe⟩ =>
    ⟨β ⊕ γ, p.map (inl ⊗ inr ∘ inl) * q.map (inl ⊗ inr ∘ inr), fun v => by
      refine
        Iff.trans (or_congr ((pe v).trans ?_) ((qe v).trans ?_))
          (exists_or.symm.trans
            (exists_congr fun t =>
              (@mul_eq_zero _ _ _ (p ((v ⊗ t) ∘ (inl ⊗ inr ∘ inl)))
                  (q ((v ⊗ t) ∘ (inl ⊗ inr ∘ inr)))).symm))
      · -- Porting note: putting everything on the same line fails
        refine inject_dummies_lem _ (some ⊗ fun _ => none) ?_ _ _
        exact fun _ => by simp only [elim_inl]
      · -- Porting note: putting everything on the same line fails
        refine inject_dummies_lem _ ((fun _ => none) ⊗ some) ?_ _ _
        exact fun _ => by simp only [elim_inr]⟩

/-- A partial function is Diophantine if its graph is Diophantine. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/DiophantineEquations/Dioph/Variant946859f3ad531e8628d1c178a44dabdbcc6220e70797aad14840b97fb55244dc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/DiophantineEquations/Dioph/Variant946859f3ad531e8628d1c178a44dabdbcc6220e70797aad14840b97fb55244dc.lean#L329).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4b34c2e2932e388df7b4717a063c3a344dd54ed5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
