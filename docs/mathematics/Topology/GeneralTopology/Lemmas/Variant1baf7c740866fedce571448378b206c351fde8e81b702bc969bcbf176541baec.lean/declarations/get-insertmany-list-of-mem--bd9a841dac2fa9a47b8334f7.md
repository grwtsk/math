# get!_insertMany_list_of_mem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dc01a61e-3f79-1521-ad11-86a97816beb1",
  "kind": "theorem",
  "lexical_name": "get!_insertMany_list_of_mem",
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
  "slug": "get-insertmany-list-of-mem--bd9a841dac2fa9a47b8334f7",
  "source": {
    "blob": "738c5c7f5f4d9c85fa89d1173682192b4b505414",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1404,
    "line": 1396,
    "path": "GRWTSK/Topology/GeneralTopology/Lemmas/Variant1baf7c740866fedce571448378b206c351fde8e81b702bc969bcbf176541baec.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bd9a841dac2fa9a47b8334f7562f3fa5ae2a08cf0fc81b1637017048d2ec5983",
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

Occurrence: `result:dc01a61e-3f79-1521-ad11-86a97816beb1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1396–1404.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem get!_insertMany_list_of_mem [TransCmp cmp] [LawfulEqCmp cmp]
    {l : List ((a : α) × β a)} {k k' : α} (k_eq : cmp k k' = .eq) {v : β k} [Inhabited (β k')]
    (distinct : l.Pairwise (fun a b => ¬ cmp a.1 b.1 = .eq))
    (mem : ⟨k, v⟩ ∈ l) :
    (t.insertMany l).get! k' = cast (by congr; apply LawfulEqCmp.compare_eq_iff_eq.mp k_eq) v := by
  refine t.inductionOn (fun _ distinct mem => ?_) distinct mem
  simp only [insertMany_list_mk]
  exact DTreeMap.get!_insertMany_list_of_mem k_eq distinct mem

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Lemmas/Variant1baf7c740866fedce571448378b206c351fde8e81b702bc969bcbf176541baec.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Lemmas/Variant1baf7c740866fedce571448378b206c351fde8e81b702bc969bcbf176541baec.lean#L1396).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `738c5c7f5f4d9c85fa89d1173682192b4b505414` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
