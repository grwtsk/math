# nodup_bind

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5d478f2b-3bd2-157b-1063-64822022b2ef",
  "kind": "lemma",
  "lexical_name": "nodup_bind",
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
  "slug": "nodup-bind--855aacd68a05c1b681feaef9",
  "source": {
    "blob": "ea1fda21dd88713d4bc440a85c1cd3e0096cdab4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 266,
    "line": 256,
    "path": "GRWTSK/Topology/GeneralTopology/Bind/Varianta2e8f0d20092a82eef8b982baee09886664eb5a91435dbd1284477be3decdd5a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:855aacd68a05c1b681feaef9f1c2f302c91356eb0a92373a2993ea2c01fbd6c7",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Bind/Varianta2e8f0d20092a82eef8b982baee09886664eb5a91435dbd1284477be3decdd5a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5d478f2b-3bd2-157b-1063-64822022b2ef`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 256–266.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] lemma nodup_bind :
    Nodup (bind s f) ↔ (∀ a ∈ s, Nodup (f a)) ∧ s.Pairwise (Disjoint on f) := by
  have : ∀ a, ∃ l : List β, f a = l := fun a => Quot.induction_on (f a) fun l => ⟨l, rfl⟩
  choose f' h' using this
  have : f = fun a ↦ ofList (f' a) := funext h'
  have _ : Std.Symm fun a b : List β ↦ List.Disjoint a b := { symm a b h := h.symm }
  exact Quot.induction_on s <| by
    unfold Function.onFun
    simp [this, List.nodup_flatMap, pairwise_coe_iff_pairwise]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Bind/Varianta2e8f0d20092a82eef8b982baee09886664eb5a91435dbd1284477be3decdd5a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Bind/Varianta2e8f0d20092a82eef8b982baee09886664eb5a91435dbd1284477be3decdd5a.lean#L256).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ea1fda21dd88713d4bc440a85c1cd3e0096cdab4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
