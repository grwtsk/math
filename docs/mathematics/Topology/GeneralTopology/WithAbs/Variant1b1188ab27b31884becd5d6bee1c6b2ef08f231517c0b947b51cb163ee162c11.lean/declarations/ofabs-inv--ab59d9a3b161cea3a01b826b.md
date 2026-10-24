# ofAbs_inv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fc699ae2-a255-1e8f-8866-2967e93071b9",
  "kind": "lemma",
  "lexical_name": "ofAbs_inv",
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
  "slug": "ofabs-inv--ab59d9a3b161cea3a01b826b",
  "source": {
    "blob": "d5e530b217da329d254b101e6cb40d1e3f83c776",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 75,
    "line": 71,
    "path": "GRWTSK/Topology/GeneralTopology/WithAbs/Variant1b1188ab27b31884becd5d6bee1c6b2ef08f231517c0b947b51cb163ee162c11.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ab59d9a3b161cea3a01b826bb7ad66492ac23b45120c1c9351ae678320ba5b9a",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/WithAbs/Variant1b1188ab27b31884becd5d6bee1c6b2ef08f231517c0b947b51cb163ee162c11.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fc699ae2-a255-1e8f-8866-2967e93071b9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 71–75.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] lemma ofAbs_inv (x : WithAbs v) : ofAbs (x⁻¹) = (ofAbs x)⁻¹ := rfl

/- Note that `AbsoluteValue.tendsto_div_one_add_pow_nhds_one` would follow from the below
result if `WithAbs v` had a topology for general value rings `S`. Currently `WithAbs v` only has
a topology when `S = ℝ`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/WithAbs/Variant1b1188ab27b31884becd5d6bee1c6b2ef08f231517c0b947b51cb163ee162c11.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/WithAbs/Variant1b1188ab27b31884becd5d6bee1c6b2ef08f231517c0b947b51cb163ee162c11.lean#L71).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d5e530b217da329d254b101e6cb40d1e3f83c776` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
