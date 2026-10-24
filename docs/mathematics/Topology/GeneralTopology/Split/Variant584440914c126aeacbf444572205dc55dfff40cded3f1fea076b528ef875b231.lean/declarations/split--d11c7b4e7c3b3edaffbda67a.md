# split

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9b9f670e3520f294524139665f4b9e7bf868046943e724f64bb080c2a5a340db",
  "kind": "def",
  "lexical_name": "split",
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
  "slug": "split--d11c7b4e7c3b3edaffbda67a",
  "source": {
    "blob": "33a14ef0e63282c67eb3a38b11d70565391baa01",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 162,
    "line": 150,
    "path": "GRWTSK/Topology/GeneralTopology/Split/Variant584440914c126aeacbf444572205dc55dfff40cded3f1fea076b528ef875b231.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d11c7b4e7c3b3edaffbda67ab834bfa9fe3a4863a7f413e9ebf0bd0fdb8dfb05",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Split/Variant584440914c126aeacbf444572205dc55dfff40cded3f1fea076b528ef875b231.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9b9f670e3520f294524139665f4b9e7bf868046943e724f64bb080c2a5a340db`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 150–162.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def split (I : Box ι) (i : ι) (x : ℝ) : Prepartition I :=
  ofWithBot {I.splitLower i x, I.splitUpper i x}
    (by
      simp only [Finset.mem_insert, Finset.mem_singleton]
      rintro J (rfl | rfl)
      exacts [Box.splitLower_le, Box.splitUpper_le])
    (by
      simp only [Finset.coe_insert, Finset.coe_singleton, true_and, Set.mem_singleton_iff,
        pairwise_insert_of_symmetric symmetric_disjoint, pairwise_singleton]
      rintro J rfl -
      exact I.disjoint_splitLower_splitUpper i x)

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Split/Variant584440914c126aeacbf444572205dc55dfff40cded3f1fea076b528ef875b231.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Split/Variant584440914c126aeacbf444572205dc55dfff40cded3f1fea076b528ef875b231.lean#L150).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `33a14ef0e63282c67eb3a38b11d70565391baa01` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
