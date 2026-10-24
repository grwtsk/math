# Balanced.balRight

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "46ed5eda88fdb5dc6a181165ae3c2be9d4a7ab7a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 287,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4e/4e451e567b696cd649576071d8caae0ae64cb902da3eef1af359838fdf926564.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:783b2213-c248-c834-c6dc-71299e29c35a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9be86574-b22b-60fe-2618-2ad093638f8e",
  "kind": "theorem",
  "lexical_name": "Balanced.balRight",
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
  "slug": "balanced-balright--fcd7e501f8900aaadaa4ee2b",
  "source": {
    "blob": "46ed5eda88fdb5dc6a181165ae3c2be9d4a7ab7a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 302,
    "line": 287,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/WF/Variant4e451e567b696cd649576071d8caae0ae64cb902da3eef1af359838fdf926564.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fcd7e501f8900aaadaa4ee2b9925430a9e7a706e6654cc2823dda30124144464",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/WF/Variant4e451e567b696cd649576071d8caae0ae64cb902da3eef1af359838fdf926564.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9be86574-b22b-60fe-2618-2ad093638f8e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 287–302.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem Balanced.balRight (hl : l.Balanced cl (n + 1)) (hr : r.RedRed True n) :
    (balRight l v r).RedRed (cl = red) (n + 1) := by
  unfold balRight; split
  · next b y c => exact
    let ⟨cb, cc, hb, hc⟩ := hr.of_red
    match cl with
    | red => .redred rfl hl (.black hb hc)
    | black => .balanced (.red hl (.black hb hc))
  · next H => exact match hr with
    | .redred .. => nomatch H _ _ _ rfl
    | .balanced hr => match hl with
      | .black hb hc =>
        let ⟨c, h⟩ := RedRed.balance1 (.redred trivial hb hc) hr; .balanced h
      | .red (.black ha hb) (.black hc hd) =>
        let ⟨c, h⟩ := RedRed.balance1 (.redred trivial ha hb) hc; .redred rfl h (.black hd hr)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/WF/Variant4e451e567b696cd649576071d8caae0ae64cb902da3eef1af359838fdf926564.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/WF/Variant4e451e567b696cd649576071d8caae0ae64cb902da3eef1af359838fdf926564.lean#L287).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `46ed5eda88fdb5dc6a181165ae3c2be9d4a7ab7a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
