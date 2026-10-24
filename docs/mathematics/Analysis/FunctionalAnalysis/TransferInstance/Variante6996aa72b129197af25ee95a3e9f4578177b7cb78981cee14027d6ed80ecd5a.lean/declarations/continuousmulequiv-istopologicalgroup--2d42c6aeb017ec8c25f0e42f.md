# ContinuousMulEquiv.isTopologicalGroup

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ea9530e6-946b-c91e-4ac7-1d4cd9e5f64f",
  "kind": "lemma",
  "lexical_name": "ContinuousMulEquiv.isTopologicalGroup",
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
  "slug": "continuousmulequiv-istopologicalgroup--2d42c6aeb017ec8c25f0e42f",
  "source": {
    "blob": "495b04dafa8a6ddd8b38b11f17caf340f47b72cd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 97,
    "line": 85,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/TransferInstance/Variante6996aa72b129197af25ee95a3e9f4578177b7cb78981cee14027d6ed80ecd5a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2d42c6aeb017ec8c25f0e42f17b7b9acb95092c6abb4b6cdcceb1a43e45736cb",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/TransferInstance/Variante6996aa72b129197af25ee95a3e9f4578177b7cb78981cee14027d6ed80ecd5a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ea9530e6-946b-c91e-4ac7-1d4cd9e5f64f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 85–97.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma ContinuousMulEquiv.isTopologicalGroup
    [TopologicalSpace β] [Group β] [IsTopologicalGroup β] [TopologicalSpace α] [Group α]
    (e : α ≃ₜ* β) : IsTopologicalGroup α where
  continuous_mul := by
    let f := (fun q ↦ q.1 * q.2 : β × β → β)
    have : Continuous (fun p ↦ e.symm <| f (e p.1, e p.2) : (α × α → α)) := by fun_prop
    exact this.congr <| fun p ↦ by simp [f]
  continuous_inv := by
    have : Continuous (e.symm ∘ (fun q ↦ q⁻¹) ∘ e) := by fun_prop
    exact this.congr (fun p ↦ by simp)

/-- Given a continuous linear equivalence `e : α ≃L[R] β`, if scalar multiplication on `β` is
continuous, then so is it for `α`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/TransferInstance/Variante6996aa72b129197af25ee95a3e9f4578177b7cb78981cee14027d6ed80ecd5a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/TransferInstance/Variante6996aa72b129197af25ee95a3e9f4578177b7cb78981cee14027d6ed80ecd5a.lean#L85).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `495b04dafa8a6ddd8b38b11f17caf340f47b72cd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
