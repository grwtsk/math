# _root_.ZFSet.isOrdinal_iff_forall_mem_isTransitive

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "97235e3261fdc56f243d41a3007ddd24ecfff269",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 138,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c6/c62c5a875496c77daf0bacf25ab75f99c523bf8d91949e51a49b17f836b09f53.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e657f73a-9d9d-c118-c6be-e4be70f58b9b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:855a4147-0c2b-0a67-fed7-d393ab53161b",
  "kind": "theorem",
  "lexical_name": "_root_.ZFSet.isOrdinal_iff_forall_mem_isTransitive",
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
  "slug": "root-zfset-isordinal-iff-forall-mem-istransitive--c6bb5b3818c0387526545174",
  "source": {
    "blob": "97235e3261fdc56f243d41a3007ddd24ecfff269",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 143,
    "line": 138,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variantc62c5a875496c77daf0bacf25ab75f99c523bf8d91949e51a49b17f836b09f53.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c6bb5b3818c038752654517467678b15074d9208f57b364e4e63f0492f0ac022",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variantc62c5a875496c77daf0bacf25ab75f99c523bf8d91949e51a49b17f836b09f53.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:855a4147-0c2b-0a67-fed7-d393ab53161b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 138–143.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.ZFSet.isOrdinal_iff_forall_mem_isTransitive :
    x.IsOrdinal ↔ x.IsTransitive ∧ ∀ y ∈ x, y.IsTransitive where
  mp h := ⟨h.isTransitive, fun _ hy ↦ (h.mem hy).isTransitive⟩
  mpr := fun ⟨h₁, h₂⟩ ↦ ⟨h₁, fun hyz hzw hwx ↦ (h₂ _ hwx).mem_trans hyz hzw⟩

/-- An ordinal is a transitive set of ordinals. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variantc62c5a875496c77daf0bacf25ab75f99c523bf8d91949e51a49b17f836b09f53.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variantc62c5a875496c77daf0bacf25ab75f99c523bf8d91949e51a49b17f836b09f53.lean#L138).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `97235e3261fdc56f243d41a3007ddd24ecfff269` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
