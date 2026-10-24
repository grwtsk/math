# limsup_liminf_le_liminf_limsup

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "82cf5da48a02fbf77cc7d3d06792172cb5343e67",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 86,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/24/24cd2f9c36b2ef605ee6f321deaf373261ad3040009a537a03816f39f9039ee4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:689fcd4f-f252-ce81-7df1-9feea72c198f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c95b36cc-a1f8-6bc4-5c66-c1bc282792b1",
  "kind": "theorem",
  "lexical_name": "limsup_liminf_le_liminf_limsup",
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
  "slug": "limsup-liminf-le-liminf-limsup--b22453501a137390a8641848",
  "source": {
    "blob": "82cf5da48a02fbf77cc7d3d06792172cb5343e67",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 96,
    "line": 86,
    "path": "GRWTSK/Topology/GeneralTopology/ENNReal/Variant24cd2f9c36b2ef605ee6f321deaf373261ad3040009a537a03816f39f9039ee4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b22453501a137390a86418480fee429363b213b9ecfdb089048a8ce0b83f2e94",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ENNReal/Variant24cd2f9c36b2ef605ee6f321deaf373261ad3040009a537a03816f39f9039ee4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c95b36cc-a1f8-6bc4-5c66-c1bc282792b1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 86–96.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem limsup_liminf_le_liminf_limsup {β} [Countable β] {f : Filter α} [CountableInterFilter f]
    {g : Filter β} (u : α → β → ℝ≥0∞) :
    (f.limsup fun a : α => g.liminf fun b : β => u a b) ≤
      g.liminf fun b => f.limsup fun a => u a b :=
  have h1 : ∀ᶠ a in f, ∀ b, u a b ≤ f.limsup fun a' => u a' b := by
    rw [eventually_countable_forall]
    exact fun b => ENNReal.eventually_le_limsup fun a => u a b
  sInf_le <| h1.mono fun x hx => Filter.liminf_le_liminf (Filter.eventually_of_forall hx)
#align ennreal.limsup_liminf_le_liminf_limsup ENNReal.limsup_liminf_le_liminf_limsup

end ENNReal
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ENNReal/Variant24cd2f9c36b2ef605ee6f321deaf373261ad3040009a537a03816f39f9039ee4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ENNReal/Variant24cd2f9c36b2ef605ee6f321deaf373261ad3040009a537a03816f39f9039ee4.lean#L86).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `82cf5da48a02fbf77cc7d3d06792172cb5343e67` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
