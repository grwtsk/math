# fromRel_top

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a84098d4-ead2-ea6e-6b6a-9420a2d0d150",
  "kind": "theorem",
  "lexical_name": "fromRel_top",
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
  "slug": "fromrel-top--2a1c757c031bd8f4fb893dad",
  "source": {
    "blob": "bb056b3eb4d9a749861b530e0d72e687c027cec9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 519,
    "line": 514,
    "path": "GRWTSK/Topology/GeneralTopology/Sym2/Variant68f636343def07ab831b883d5c072268c6cc24bbad52038d144d41198a60ae72.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2a1c757c031bd8f4fb893dad16fb71275b85d1a83fe125d6805639297e3ea8c3",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Sym2/Variant68f636343def07ab831b883d5c072268c6cc24bbad52038d144d41198a60ae72.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a84098d4-ead2-ea6e-6b6a-9420a2d0d150`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 514–519.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fromRel_top : fromRel (fun (x y : α) z => z : Symmetric ⊤) = Set.univ := by
  apply Set.eq_univ_of_forall fun e => _
  apply Sym2.ind
  simp [-Set.top_eq_univ, Prop.top_eq_true]
#align sym2.from_rel_top Sym2.fromRel_top

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Sym2/Variant68f636343def07ab831b883d5c072268c6cc24bbad52038d144d41198a60ae72.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Sym2/Variant68f636343def07ab831b883d5c072268c6cc24bbad52038d144d41198a60ae72.lean#L514).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bb056b3eb4d9a749861b530e0d72e687c027cec9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
