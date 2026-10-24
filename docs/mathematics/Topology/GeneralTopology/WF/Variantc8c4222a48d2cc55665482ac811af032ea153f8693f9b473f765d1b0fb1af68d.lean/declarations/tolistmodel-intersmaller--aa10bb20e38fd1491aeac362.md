# toListModel_interSmallerₘ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:75a3c7ef-2af0-1642-e1c1-ee4b052ff93a",
  "kind": "theorem",
  "lexical_name": "toListModel_interSmallerₘ",
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
  "slug": "tolistmodel-intersmaller--aa10bb20e38fd1491aeac362",
  "source": {
    "blob": "5bd9cc397e48742b3b59309288a83feddecbcfa8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1543,
    "line": 1528,
    "path": "GRWTSK/Topology/GeneralTopology/WF/Variantc8c4222a48d2cc55665482ac811af032ea153f8693f9b473f765d1b0fb1af68d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:aa10bb20e38fd1491aeac362948171a0d017133d1e84252a0e1d67e288284341",
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

Occurrence: `result:75a3c7ef-2af0-1642-e1c1-ee4b052ff93a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1528–1543.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem toListModel_interSmallerₘ [BEq α] [EquivBEq α] [Hashable α] [LawfulHashable α]
    (m₁ : Raw₀ α β) (m₂ : Raw α β) (hm₁ : Raw.WFImp m₁.1) :
    toListModel (m₁.interSmallerₘ m₂).1.buckets ~
      List.interSmaller (toListModel m₁.1.buckets) (toListModel m₂.buckets) := by
  rw [interSmallerₘ, Raw.fold_eq_foldl_toListModel, List.interSmaller]
  generalize toListModel m₂.buckets = l
  suffices ∀ m l', Raw.WFImp m.1 → toListModel m.1.buckets ~ l' → toListModel (foldl (fun a b => m₁.interSmallerFnₘ a b.fst) m l).val.buckets ~
      foldl (fun sofar kv => List.interSmallerFn (toListModel m₁.val.buckets) sofar kv.fst) l' l by
    simpa using this emptyWithCapacity [] wfImp_emptyWithCapacity (by simp)
  intro m l' hm hml'
  induction l generalizing m l' with
  | nil => simpa
  | cons ht tl ih =>
    rw [List.foldl_cons, List.foldl_cons]
    exact ih _ _ (wfImp_interSmallerFnₘ _ _ hm _) (toListModel_interSmallerFnₘ _ _ _ hm₁ hm _ hml')

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/WF/Variantc8c4222a48d2cc55665482ac811af032ea153f8693f9b473f765d1b0fb1af68d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/WF/Variantc8c4222a48d2cc55665482ac811af032ea153f8693f9b473f765d1b0fb1af68d.lean#L1528).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5bd9cc397e48742b3b59309288a83feddecbcfa8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
