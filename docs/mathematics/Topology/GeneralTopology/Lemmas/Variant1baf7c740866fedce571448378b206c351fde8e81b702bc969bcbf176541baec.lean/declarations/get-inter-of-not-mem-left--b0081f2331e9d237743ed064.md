# get!_inter_of_not_mem_left

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b5f35c22-2a17-9330-ce03-3a17d2737904",
  "kind": "theorem",
  "lexical_name": "get!_inter_of_not_mem_left",
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
  "slug": "get-inter-of-not-mem-left--b0081f2331e9d237743ed064",
  "source": {
    "blob": "738c5c7f5f4d9c85fa89d1173682192b4b505414",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 3033,
    "line": 3021,
    "path": "GRWTSK/Topology/GeneralTopology/Lemmas/Variant1baf7c740866fedce571448378b206c351fde8e81b702bc969bcbf176541baec.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b0081f2331e9d237743ed064fa4b31faf656a1fddf291c98b59e6d23fc2850c7",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Lemmas/Variant1baf7c740866fedce571448378b206c351fde8e81b702bc969bcbf176541baec.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b5f35c22-2a17-9330-ce03-3a17d2737904`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 3021–3033.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem get!_inter_of_not_mem_left [TransCmp cmp] [Inhabited β]
    {k : α} (h : ¬k ∈ t₁) :
    Const.get! (t₁ ∩ t₂) k = default := by
  revert h
  exact t₁.inductionOn₂ t₂ fun _ _ h => DTreeMap.Const.get!_inter_of_not_mem_left h

end Const

section Diff

variable {t₁ t₂ : ExtDTreeMap α β cmp}

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Lemmas/Variant1baf7c740866fedce571448378b206c351fde8e81b702bc969bcbf176541baec.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Lemmas/Variant1baf7c740866fedce571448378b206c351fde8e81b702bc969bcbf176541baec.lean#L3021).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `738c5c7f5f4d9c85fa89d1173682192b4b505414` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
