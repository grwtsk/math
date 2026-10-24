# active_atom_exists

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bf6169b2-3cb7-04d6-cf1c-54800d459758",
  "kind": "theorem",
  "lexical_name": "active_atom_exists",
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
  "slug": "active-atom-exists--21760c7a65acc9ab69c1ee41",
  "source": {
    "blob": "f3ee510ea6c745e2b55c5921d7f85b055fba8521",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 33,
    "line": 25,
    "path": "GRWTSK/Topology/NodalPanelMinimality/Variantcbf69987faab15b7dd9ada1317d22979c672588bd4209685443dc4d8af9fd3a9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:21760c7a65acc9ab69c1ee41429d5e8c9e61bb8ac1f6b7e04c75e92ff416751a",
  "verification": {
    "reference": "docs/verification/Topology/NodalPanelMinimality/Variantcbf69987faab15b7dd9ada1317d22979c672588bd4209685443dc4d8af9fd3a9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bf6169b2-3cb7-04d6-cf1c-54800d459758`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 25–33.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem active_atom_exists {α γ : Type*} [Fintype γ] (f : α → ℝ) (atom : γ → α → ℝ)
    (hreconstruct : ∀ x, (∑ j, atom j x) = f x) {x : α} (hx : f x ≠ 0) :
    ∃ j, atom j x ≠ 0 := by
  by_contra hn
  push Not at hn
  have hz : (∑ j, atom j x) = 0 := Finset.sum_eq_zero (fun j _ ↦ hn j)
  rw [hreconstruct x] at hz
  exact hx hz

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Topology/NodalPanelMinimality/Variantcbf69987faab15b7dd9ada1317d22979c672588bd4209685443dc4d8af9fd3a9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/NodalPanelMinimality/Variantcbf69987faab15b7dd9ada1317d22979c672588bd4209685443dc4d8af9fd3a9.lean#L25).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f3ee510ea6c745e2b55c5921d7f85b055fba8521` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
