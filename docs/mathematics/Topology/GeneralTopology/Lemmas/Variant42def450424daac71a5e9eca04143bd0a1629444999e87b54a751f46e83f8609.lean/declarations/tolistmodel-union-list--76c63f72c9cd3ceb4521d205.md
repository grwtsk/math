# toListModel_union_list

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fd74f4d0-c209-3cde-c210-6a5552c56270",
  "kind": "theorem",
  "lexical_name": "toListModel_union_list",
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
  "slug": "tolistmodel-union-list--76c63f72c9cd3ceb4521d205",
  "source": {
    "blob": "342b13ed03f55afa231c980200374ff3ab10825e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1886,
    "line": 1877,
    "path": "GRWTSK/Topology/GeneralTopology/Lemmas/Variant42def450424daac71a5e9eca04143bd0a1629444999e87b54a751f46e83f8609.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:76c63f72c9cd3ceb4521d205f93b8a0bcd9ada10af5ed1e56e0c8d3c46ea122b",
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

Occurrence: `result:fd74f4d0-c209-3cde-c210-6a5552c56270`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1877–1886.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem toListModel_union_list {_ : Ord α} [BEq α] [LawfulBEqOrd α] [TransOrd α]
    {t₁ t₂ : Impl α β} (h₁ : t₁.WF) (h₂ : t₂.WF) :
    List.Perm (t₁.union t₂ h₁.balanced h₂.balanced).toListModel (t₁.toListModel.insertList t₂.toListModel) := by
  unfold union
  split
  . apply List.Perm.trans
    . apply toListModel_insertManyIfNew_impl h₂
    . apply List.insertListIfNew_perm_insertList h₂.ordered.distinctKeys h₁.ordered.distinctKeys
  . apply toListModel_insertMany_impl h₁

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Lemmas/Variant42def450424daac71a5e9eca04143bd0a1629444999e87b54a751f46e83f8609.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Lemmas/Variant42def450424daac71a5e9eca04143bd0a1629444999e87b54a751f46e83f8609.lean#L1877).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `342b13ed03f55afa231c980200374ff3ab10825e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
