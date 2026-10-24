# prod_nbij'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2ad6e90e-1bef-444a-6502-a37bcaffa728",
  "kind": "lemma",
  "lexical_name": "prod_nbij'",
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
  "slug": "prod-nbij--db96b2ce802f99b741db24bd",
  "source": {
    "blob": "cc164de4e5e3f5c742c7721dea37ce3adfd0d9dc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 531,
    "line": 521,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Defs/Variant80c7b23eff43de75ee61f34b336a62c3343c6e54b33c16bceec64e9bb0c8ba8e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:db96b2ce802f99b741db24bd7840ca67a69bb371b94a20d22665e75485136f9f",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Defs/Variant80c7b23eff43de75ee61f34b336a62c3343c6e54b33c16bceec64e9bb0c8ba8e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2ad6e90e-1bef-444a-6502-a37bcaffa728`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 521–531.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma prod_nbij' (i : ι → κ) (j : κ → ι) (hi : ∀ a ∈ s, i a ∈ t) (hj : ∀ a ∈ t, j a ∈ s)
    (left_inv : ∀ a ∈ s, j (i a) = a) (right_inv : ∀ a ∈ t, i (j a) = a)
    (h : ∀ a ∈ s, f a = g (i a)) : ∏ x ∈ s, f x = ∏ x ∈ t, g x :=
  prod_bij' (fun a _ ↦ i a) (fun b _ ↦ j b) hi hj left_inv right_inv h

/-- Specialization of `Finset.prod_nbij'` that automatically fills in most arguments.

See `Fintype.prod_equiv` for the version where `s` and `t` are `univ`. -/
@[to_additive "`Specialization of `Finset.sum_nbij'` that automatically fills in most arguments.

See `Fintype.sum_equiv` for the version where `s` and `t` are `univ`."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Defs/Variant80c7b23eff43de75ee61f34b336a62c3343c6e54b33c16bceec64e9bb0c8ba8e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Defs/Variant80c7b23eff43de75ee61f34b336a62c3343c6e54b33c16bceec64e9bb0c8ba8e.lean#L521).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cc164de4e5e3f5c742c7721dea37ce3adfd0d9dc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
