# entryAtIdx?_eq_getElem?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1583e0c6-5d5f-5b8e-4805-28af2f402a2d",
  "kind": "theorem",
  "lexical_name": "entryAtIdx?_eq_getElem?",
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
  "slug": "entryatidx-eq-getelem--76254dcd29968e2a4e195346",
  "source": {
    "blob": "342b13ed03f55afa231c980200374ff3ab10825e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2373,
    "line": 2356,
    "path": "GRWTSK/Topology/GeneralTopology/Lemmas/Variant42def450424daac71a5e9eca04143bd0a1629444999e87b54a751f46e83f8609.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:76254dcd29968e2a4e19534674a093dcf20dc6681cd6429de70a0b2eb5d26d53",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Lemmas/Variant42def450424daac71a5e9eca04143bd0a1629444999e87b54a751f46e83f8609.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1583e0c6-5d5f-5b8e-4805-28af2f402a2d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2356–2373.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem entryAtIdx?_eq_getElem? {t : Impl α β} (htb : t.Balanced) {i : Nat} :
    t.entryAtIdx? i = t.toListModel[i]? := by
  induction t, i using entryAtIdx?.induct_unfolding with
  | case1 => rfl
  | case2 _ _ _ _ _ _ h ih =>
    simp only [toListModel_inner, *, htb.left]
    simp_all only [Nat.compare_eq_lt, ← size_eq_length,
      List.getElem?_append_left, htb.left]
  | case3 =>
    simp only [toListModel_inner, *]
    simp_all only [Nat.compare_eq_eq, List.getElem?_append_right, Nat.le_refl, htb.left,
      ← size_eq_length, Nat.sub_self, List.getElem?_cons_zero]
  | case4 =>
    simp only [toListModel_inner, *, htb.right]
    simp_all only [Nat.compare_eq_gt, List.getElem?_append_right, Nat.le_of_lt,
      ← size_eq_length, htb.left, List.getElem?_cons, Nat.sub_eq_zero_iff_le,
      ← Nat.not_lt, not_true, ↓reduceIte]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Lemmas/Variant42def450424daac71a5e9eca04143bd0a1629444999e87b54a751f46e83f8609.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Lemmas/Variant42def450424daac71a5e9eca04143bd0a1629444999e87b54a751f46e83f8609.lean#L2356).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `342b13ed03f55afa231c980200374ff3ab10825e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
