# foldl_perm_cong

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9fdadf31-ba41-e54f-32fe-7f44eff2a4ca",
  "kind": "theorem",
  "lexical_name": "foldl_perm_cong",
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
  "slug": "foldl-perm-cong--6d96ab20e1146770ff6db515",
  "source": {
    "blob": "5bd9cc397e48742b3b59309288a83feddecbcfa8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1517,
    "line": 1504,
    "path": "GRWTSK/Topology/GeneralTopology/WF/Variantc8c4222a48d2cc55665482ac811af032ea153f8693f9b473f765d1b0fb1af68d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6d96ab20e1146770ff6db5159c9b4e2a407ccdac7db73efebb18f0001b9479b9",
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

Occurrence: `result:9fdadf31-ba41-e54f-32fe-7f44eff2a4ca`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1504–1517.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem foldl_perm_cong  [BEq α] {init₁ init₂ : List ((a : α) × β a)} {l : List ((a : α) × β a)}
    {f : List ((a : α) × β a) → ((a : α) × β a) → List ((a : α) × β a)} (h₁ : Perm init₁ init₂)
    (h₂ : ∀ h l₁ l₂, (w : DistinctKeys l₁) → Perm l₁ l₂ → Perm (f l₁ h) (f l₂ h) ∧ DistinctKeys (f l₁ h))
    (h₃ : DistinctKeys init₁)
     : Perm (List.foldl f init₁ l) (List.foldl f init₂ l) := by
  induction l generalizing init₁ init₂
  case nil =>
    simp only [foldl_nil, h₁]
  case cons h t ih =>
    simp only [foldl_cons]
    apply ih
    · exact (h₂ h init₁ init₂ h₃ h₁).1
    · exact (h₂ h init₁ init₂ h₃ h₁).2

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/WF/Variantc8c4222a48d2cc55665482ac811af032ea153f8693f9b473f765d1b0fb1af68d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/WF/Variantc8c4222a48d2cc55665482ac811af032ea153f8693f9b473f765d1b0fb1af68d.lean#L1504).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5bd9cc397e48742b3b59309288a83feddecbcfa8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
