# insertMany_cons

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d8626b05-a1fa-f9bd-6676-5784648e07d5",
  "kind": "theorem",
  "lexical_name": "insertMany_cons",
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
  "slug": "insertmany-cons--d8d88bb49dcf0602a292040d",
  "source": {
    "blob": "738c5c7f5f4d9c85fa89d1173682192b4b505414",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1564,
    "line": 1555,
    "path": "GRWTSK/Topology/GeneralTopology/Lemmas/Variant1baf7c740866fedce571448378b206c351fde8e81b702bc969bcbf176541baec.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d8d88bb49dcf0602a292040dd76a9423dd19f36830353f9513420402512326db",
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

Occurrence: `result:d8626b05-a1fa-f9bd-6676-5784648e07d5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1555–1564.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem insertMany_cons [TransCmp cmp] {l : List (α × β)} {p : α × β} :
    Const.insertMany t (p :: l) = Const.insertMany (t.insert p.1 p.2) l := by
  rcases p with ⟨k, v⟩
  unfold insertMany
  simp only [bind_pure_comp, map_pure, List.forIn_pure_yield_eq_foldl, List.foldl_cons, Id.run_pure]
  refine Eq.trans ?_ (Eq.symm ?_ : l.foldl (fun b a => b.insert a.1 a.2) (t.insert k v) = _)
  exact (List.foldl_hom (f := Subtype.val) fun x y => rfl).symm
  exact (List.foldl_hom (f := Subtype.val) fun x y => rfl).symm

@[grind _=_]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Lemmas/Variant1baf7c740866fedce571448378b206c351fde8e81b702bc969bcbf176541baec.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Lemmas/Variant1baf7c740866fedce571448378b206c351fde8e81b702bc969bcbf176541baec.lean#L1555).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `738c5c7f5f4d9c85fa89d1173682192b4b505414` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
