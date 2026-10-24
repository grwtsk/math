# embDomain_comapDomain

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8babead1-b166-9e16-769c-881c254ebd27",
  "kind": "lemma",
  "lexical_name": "embDomain_comapDomain",
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
  "slug": "embdomain-comapdomain--1f4c8ec97af972febbeb0314",
  "source": {
    "blob": "fc63bb9f2f6fff6dae45fde191b4f6eac7300595",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 567,
    "line": 558,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant84f6e675f2aa6fdfbc82245215a375eaaf052c659d99aab6c935acd2b1cc13b6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1f4c8ec97af972febbeb0314818a3f1b0c0d0c3e0354a1855529d5cd60571d47",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant84f6e675f2aa6fdfbc82245215a375eaaf052c659d99aab6c935acd2b1cc13b6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8babead1-b166-9e16-769c-881c254ebd27`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 558–567.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma embDomain_comapDomain {f : α ↪ β} {g : β →₀ M} (hg : ↑g.support ⊆ Set.range f) :
    embDomain f (comapDomain f g f.injective.injOn) = g := by
  ext b
  by_cases hb : b ∈ Set.range f
  · obtain ⟨a, rfl⟩ := hb
    rw [embDomain_apply_self, comapDomain_apply]
  · replace hg : g b = 0 := notMem_support_iff.mp <| mt (hg ·) hb
    rw [embDomain_of_notMem_range _ _ _ hb, hg]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant84f6e675f2aa6fdfbc82245215a375eaaf052c659d99aab6c935acd2b1cc13b6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant84f6e675f2aa6fdfbc82245215a375eaaf052c659d99aab6c935acd2b1cc13b6.lean#L558).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fc63bb9f2f6fff6dae45fde191b4f6eac7300595` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
