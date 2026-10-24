# toNNReal_pos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:14d890b6-5cc3-2123-d020-58965f8cc5d1",
  "kind": "theorem",
  "lexical_name": "toNNReal_pos",
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
  "slug": "tonnreal-pos--8817aa3b99a0609c4f1860d5",
  "source": {
    "blob": "9bc548e819251e094f7b21ba673727b11bee03d9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 88,
    "line": 84,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/WithZero/Variant0a5ac2548b3b45d734afc0f26db470a4bfbba8ad87a980b5107e73967d2cdfd9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8817aa3b99a0609c4f1860d51c94d465c3424a8d52a411c317ee4e27c6c856fc",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/WithZero/Variant0a5ac2548b3b45d734afc0f26db470a4bfbba8ad87a980b5107e73967d2cdfd9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:14d890b6-5cc3-2123-d020-58965f8cc5d1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 84–88.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem toNNReal_pos {e : ℝ≥0} {m : ℤᵐ⁰} (he : e ≠ 0) (hm : m ≠ 0) : 0 < toNNReal he m :=
  (toNNReal_ne_zero he hm).pos

set_option backward.isDefEq.respectTransparency false in
/-- The map `toNNReal` is strictly monotone whenever `1 < e`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/WithZero/Variant0a5ac2548b3b45d734afc0f26db470a4bfbba8ad87a980b5107e73967d2cdfd9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/WithZero/Variant0a5ac2548b3b45d734afc0f26db470a4bfbba8ad87a980b5107e73967d2cdfd9.lean#L84).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9bc548e819251e094f7b21ba673727b11bee03d9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
