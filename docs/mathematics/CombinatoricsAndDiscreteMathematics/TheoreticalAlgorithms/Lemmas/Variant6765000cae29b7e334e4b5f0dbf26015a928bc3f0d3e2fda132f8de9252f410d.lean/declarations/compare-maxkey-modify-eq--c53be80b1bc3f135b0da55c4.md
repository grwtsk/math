# compare_maxKey_modify_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d079fea9-85ba-eb78-43f8-321b20b28fa6",
  "kind": "theorem",
  "lexical_name": "compare_maxKey_modify_eq",
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
  "slug": "compare-maxkey-modify-eq--c53be80b1bc3f135b0da55c4",
  "source": {
    "blob": "1dfeb346b8d5579d0d1ee9624332c1d95b5de35d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 8391,
    "line": 8388,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant6765000cae29b7e334e4b5f0dbf26015a928bc3f0d3e2fda132f8de9252f410d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c53be80b1bc3f135b0da55c4c11f820b3de4b9175859d2caebc2940f47bbe802",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant6765000cae29b7e334e4b5f0dbf26015a928bc3f0d3e2fda132f8de9252f410d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d079fea9-85ba-eb78-43f8-321b20b28fa6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 8388–8391.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem compare_maxKey_modify_eq [TransOrd α] (h : t.WF) {k f he} :
    compare (modify k f t |>.maxKey he) (t.maxKey <| isEmpty_modify h ▸ he) = .eq := by
  simp_to_model [maxKey, Const.modify] using List.Const.maxKey_modifyKey_beq

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant6765000cae29b7e334e4b5f0dbf26015a928bc3f0d3e2fda132f8de9252f410d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant6765000cae29b7e334e4b5f0dbf26015a928bc3f0d3e2fda132f8de9252f410d.lean#L8388).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1dfeb346b8d5579d0d1ee9624332c1d95b5de35d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
