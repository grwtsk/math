# upperBoundP?_least

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:481d2521-14a0-db4c-32c1-afc393cf77e6",
  "kind": "theorem",
  "lexical_name": "upperBoundP?_least",
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
  "slug": "upperboundp-least--da927c9c6fe9083601a438d6",
  "source": {
    "blob": "3be146b98ab1827aeb4a8daa0d2c9ffa70020bd3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1071,
    "line": 1060,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variante60f3513ea7020609871737118f25ad86eead4160b55eb829f4091d8d2e0901e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:da927c9c6fe9083601a438d6a8395d440f9881a403253e2be354ea1fef51818a",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variante60f3513ea7020609871737118f25ad86eead4160b55eb829f4091d8d2e0901e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:481d2521-14a0-db4c-32c1-afc393cf77e6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1060–1071.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem upperBoundP?_least {t : RBSet α cmp} [TransCmp cmp] [IsCut cmp cut]
    (H : t.upperBoundP? cut = some x) (hy : y ∈ t)
    (xy : cmp y x = .lt) (hx : cut x = .lt) : cut y = .gt :=
  let ⟨_, h1, h2⟩ := mem_iff_mem_toList.1 hy
  IsCut.congr (cut := cut) h2 ▸
  t.2.out.1.upperBound?_least H (mem_toList.1 h1) (TransCmp.cmp_congr_left h2 ▸ xy) hx

/--
A statement of the greatest-ness of the result of `lowerBoundP?`. If `x` is the return value of
`lowerBoundP?` and it is strictly less than the cut, then any other `y > x` in the tree is in fact
strictly greater than the cut (so there is no exact match, and nothing closer to the cut).
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variante60f3513ea7020609871737118f25ad86eead4160b55eb829f4091d8d2e0901e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variante60f3513ea7020609871737118f25ad86eead4160b55eb829f4091d8d2e0901e.lean#L1060).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3be146b98ab1827aeb4a8daa0d2c9ffa70020bd3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
