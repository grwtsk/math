# fold_induction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:242de333-e2b4-54f7-86bc-e258a663a7b8",
  "kind": "theorem",
  "lexical_name": "fold_induction",
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
  "slug": "fold-induction--8ee8ac3b1cf7020665997955",
  "source": {
    "blob": "5bd9cc397e48742b3b59309288a83feddecbcfa8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 197,
    "line": 181,
    "path": "GRWTSK/Topology/GeneralTopology/WF/Variantc8c4222a48d2cc55665482ac811af032ea153f8693f9b473f765d1b0fb1af68d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8ee8ac3b1cf7020665997955af0afdbec8b46306f4c7a10e75429a5d4454fdb3",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/WF/Variantc8c4222a48d2cc55665482ac811af032ea153f8693f9b473f765d1b0fb1af68d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:242de333-e2b4-54f7-86bc-e258a663a7b8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 181–197.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fold_induction {δ : Type w}
    {f : δ → (a : α) → β a → δ} {init : δ} {b : Raw α β} {P : δ → Prop}
    (base : P init) (step : ∀ acc a b , P acc → P (f acc a b)) :
    P (b.fold f init) := by
  simp [Raw.fold, Raw.foldM, ← Array.foldlM_toList]
  induction b.buckets.toList generalizing init with
  | nil => simp [base]
  | cons hd tl ih =>
    apply ih
    induction hd generalizing init with
    | nil => simp [AssocList.foldlM, pure, base]
    | cons hda hdb tl ih =>
      simp only [AssocList.foldlM, pure_bind]
      apply ih
      apply step
      exact base

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/WF/Variantc8c4222a48d2cc55665482ac811af032ea153f8693f9b473f765d1b0fb1af68d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/WF/Variantc8c4222a48d2cc55665482ac811af032ea153f8693f9b473f765d1b0fb1af68d.lean#L181).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5bd9cc397e48742b3b59309288a83feddecbcfa8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
