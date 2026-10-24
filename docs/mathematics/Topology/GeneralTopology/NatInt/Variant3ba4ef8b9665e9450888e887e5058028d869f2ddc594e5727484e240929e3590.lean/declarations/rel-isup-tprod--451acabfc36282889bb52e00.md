# rel_iSup_tprod

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7cead22bb4018e5b94547937b35c1bd6bf4187cd",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 158,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3b/3ba4ef8b9665e9450888e887e5058028d869f2ddc594e5727484e240929e3590.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e74e3c9d-8a24-60fa-4f15-9611c75e982e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:12de7c95-1e1f-9ce8-e011-eb4be7d75d86",
  "kind": "theorem",
  "lexical_name": "rel_iSup_tprod",
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
  "slug": "rel-isup-tprod--451acabfc36282889bb52e00",
  "source": {
    "blob": "7cead22bb4018e5b94547937b35c1bd6bf4187cd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 166,
    "line": 158,
    "path": "GRWTSK/Topology/GeneralTopology/NatInt/Variant3ba4ef8b9665e9450888e887e5058028d869f2ddc594e5727484e240929e3590.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:451acabfc36282889bb52e00d44899a0818ead1f91a72b8419c056f45a9c541a",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/NatInt/Variant3ba4ef8b9665e9450888e887e5058028d869f2ddc594e5727484e240929e3590.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:12de7c95-1e1f-9ce8-e011-eb4be7d75d86`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 158–166.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rel_iSup_tprod [CompleteLattice α] (m : α → M) (m0 : m ⊥ = 1) (R : M → M → Prop)
    (m_iSup : ∀ s : ℕ → α, R (m (⨆ i, s i)) (∏' i, m (s i))) (s : β → α) :
    R (m (⨆ b : β, s b)) (∏' b : β, m (s b)) := by
  cases nonempty_encodable β
  rw [← iSup_decode₂, ← tprod_iSup_decode₂ _ m0 s]
  exact m_iSup _

/-- If a function is countably sub-multiplicative then it is sub-multiplicative on finite sets -/
@[to_additive "If a function is countably sub-additive then it is sub-additive on finite sets"]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/NatInt/Variant3ba4ef8b9665e9450888e887e5058028d869f2ddc594e5727484e240929e3590.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/NatInt/Variant3ba4ef8b9665e9450888e887e5058028d869f2ddc594e5727484e240929e3590.lean#L158).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7cead22bb4018e5b94547937b35c1bd6bf4187cd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
