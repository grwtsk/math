# insertMany_eq_insertListₘ_toListModel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4ba18c25-f336-275d-3f5d-1c3cc0802cb4",
  "kind": "theorem",
  "lexical_name": "insertMany_eq_insertListₘ_toListModel",
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
  "slug": "insertmany-eq-insertlist-tolistmodel--4336677e36eccce8ba28c0a6",
  "source": {
    "blob": "5bd9cc397e48742b3b59309288a83feddecbcfa8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1162,
    "line": 1146,
    "path": "GRWTSK/Topology/GeneralTopology/WF/Variantc8c4222a48d2cc55665482ac811af032ea153f8693f9b473f765d1b0fb1af68d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4336677e36eccce8ba28c0a684471a2d42f6281db4c4a8e951636da93c56c3c0",
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

Occurrence: `result:4ba18c25-f336-275d-3f5d-1c3cc0802cb4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1146–1162.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem insertMany_eq_insertListₘ_toListModel [BEq α] [Hashable α] (m m₂ : Raw₀ α β) :
    insertMany m m₂.1 = insertListₘ m (toListModel m₂.1.buckets) := by
  simp only [insertMany, bind_pure]
  simp only [ForIn.forIn]
  simp only [Raw.forIn_eq_forIn_toListModel, forIn_pure_yield_eq_foldl, Id.run_pure]
  generalize toListModel m₂.val.buckets = l
  suffices ∀ (t : { m' // ∀ (P : Raw₀ α β → Prop),
    (∀ {m'' : Raw₀ α β} {a : α} {b : β a}, P m'' → P (m''.insert a b)) → P m → P m' }),
      (List.foldl (fun m' p => ⟨m'.val.insert p.1 p.2, fun P h₁ h₂ => h₁ (m'.2 _ h₁ h₂)⟩) t l).val =
    t.val.insertListₘ l from this _
  intro t
  induction l generalizing m with
  | nil => simp [insertListₘ]
  | cons hd tl ih =>
    simp only [List.foldl_cons, insertListₘ]
    apply ih

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/WF/Variantc8c4222a48d2cc55665482ac811af032ea153f8693f9b473f765d1b0fb1af68d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/WF/Variantc8c4222a48d2cc55665482ac811af032ea153f8693f9b473f765d1b0fb1af68d.lean#L1146).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5bd9cc397e48742b3b59309288a83feddecbcfa8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
