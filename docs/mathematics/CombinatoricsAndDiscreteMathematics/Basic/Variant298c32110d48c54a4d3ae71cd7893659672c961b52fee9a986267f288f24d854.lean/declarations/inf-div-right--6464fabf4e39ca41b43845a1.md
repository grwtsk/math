# inf_div_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f0d87b78-d465-1f5a-73b9-b6b7fc571408",
  "kind": "lemma",
  "lexical_name": "inf_div_right",
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
  "slug": "inf-div-right--6464fabf4e39ca41b43845a1",
  "source": {
    "blob": "e162948b0b056ce0fd1beb92d673c89b10ab40c8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 710,
    "line": 694,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variant298c32110d48c54a4d3ae71cd7893659672c961b52fee9a986267f288f24d854.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6464fabf4e39ca41b43845a1531fc4d841e138605d6a806f84571cb7e1210de0",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Basic/Variant298c32110d48c54a4d3ae71cd7893659672c961b52fee9a986267f288f24d854.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f0d87b78-d465-1f5a-73b9-b6b7fc571408`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 694–710.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma inf_div_right [SemilatticeInf β] [OrderTop β] (s t : Finset α) (f : α → β) :
    inf (s / t) f = inf t fun y ↦ inf s (f <| · / y) :=
  inf_image₂_right ..

end Div

/-! ### Instances -/

section Instances

variable [DecidableEq α] [DecidableEq β]

/-- Repeated pointwise multiplication (not the same as pointwise repeated multiplication!) of a
`Finset`. See note [pointwise nat action]. -/
@[to_additive (attr := instance_reducible)
/-- Repeated pointwise addition (not the same as pointwise repeated addition!) of a `Finset`. See
note [pointwise nat action]. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Basic/Variant298c32110d48c54a4d3ae71cd7893659672c961b52fee9a986267f288f24d854.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variant298c32110d48c54a4d3ae71cd7893659672c961b52fee9a986267f288f24d854.lean#L694).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e162948b0b056ce0fd1beb92d673c89b10ab40c8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
