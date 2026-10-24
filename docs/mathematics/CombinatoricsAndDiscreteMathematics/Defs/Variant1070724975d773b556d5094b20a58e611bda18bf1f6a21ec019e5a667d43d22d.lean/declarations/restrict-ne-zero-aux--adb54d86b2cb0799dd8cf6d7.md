# restrict_ne_zero_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "822fabbe37c272395db2bac994340fd464ed010d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 329,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/10/1070724975d773b556d5094b20a58e611bda18bf1f6a21ec019e5a667d43d22d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e49cd2c7-a173-2cf8-092e-46635802c884",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2abb5089-f8f0-f8a2-ed82-9a1531b174ff",
  "kind": "lemma",
  "lexical_name": "restrict_ne_zero_aux",
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
  "slug": "restrict-ne-zero-aux--adb54d86b2cb0799dd8cf6d7",
  "source": {
    "blob": "822fabbe37c272395db2bac994340fd464ed010d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 335,
    "line": 329,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Defs/Variant1070724975d773b556d5094b20a58e611bda18bf1f6a21ec019e5a667d43d22d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:adb54d86b2cb0799dd8cf6d75915bad14577af0f991c3ae27e41193b8d030824",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Defs/Variant1070724975d773b556d5094b20a58e611bda18bf1f6a21ec019e5a667d43d22d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2abb5089-f8f0-f8a2-ed82-9a1531b174ff`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 329–335.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma restrict_ne_zero_aux {w : StdSimplex K X} {p : X → Prop} [DecidablePred p]
    (hp : ∃ a, p a ∧ w.weights a ≠ 0) :
    (filter p w.weights).sum (fun _x k ↦ k) ≠ 0 :=
  (sum_pos (by simp +contextual [lt_iff_le_and_ne, eq_comm]) <| by simpa [ne_iff, filter_apply]).ne'

/-- Project an element of the standard simplex to a lower-dimensional standard simplex,
assuming at least one non-zero weight subsists. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Defs/Variant1070724975d773b556d5094b20a58e611bda18bf1f6a21ec019e5a667d43d22d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Defs/Variant1070724975d773b556d5094b20a58e611bda18bf1f6a21ec019e5a667d43d22d.lean#L329).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `822fabbe37c272395db2bac994340fd464ed010d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
