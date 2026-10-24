# tendsto_atBot_of_monotone_of_subseq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:eb428183-cb21-d7f6-60e0-304ef121eb27",
  "kind": "theorem",
  "lexical_name": "tendsto_atBot_of_monotone_of_subseq",
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
  "slug": "tendsto-atbot-of-monotone-of-subseq--9b8ddde701a6cb9af2e41753",
  "source": {
    "blob": "7f615d8a1455f8dcca79ade0cd848c1c560026c4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1815,
    "line": 1802,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/AtTopBot/Variant0615ee9996353d7a645877e33028affabe6ebb300ee37f235dc01ffb5bd2ce1d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9b8ddde701a6cb9af2e417530345f159e7aa5183067bcc527e45768a447a7aa8",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/AtTopBot/Variant0615ee9996353d7a645877e33028affabe6ebb300ee37f235dc01ffb5bd2ce1d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:eb428183-cb21-d7f6-60e0-304ef121eb27`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1802–1815.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_atBot_of_monotone_of_subseq [Preorder ι] [Preorder α] {u : ι → α} {φ : ι' → ι}
    (h : Monotone u) {l : Filter ι'} [NeBot l] (H : Tendsto (u ∘ φ) l atBot) :
    Tendsto u atBot atBot :=
  tendsto_atBot_of_monotone_of_filter h (tendsto_map' H)
#align filter.tendsto_at_bot_of_monotone_of_subseq Filter.tendsto_atBot_of_monotone_of_subseq

/-- Let `f` and `g` be two maps to the same commutative monoid. This lemma gives a sufficient
condition for comparison of the filter `atTop.map (fun s ↦ ∏ b in s, f b)` with
`atTop.map (fun s ↦ ∏ b in s, g b)`. This is useful to compare the set of limit points of
`Π b in s, f b` as `s → atTop` with the similar set for `g`. -/
@[to_additive "Let `f` and `g` be two maps to the same commutative additive monoid. This lemma gives
a sufficient condition for comparison of the filter `atTop.map (fun s ↦ ∑ b in s, f b)` with
`atTop.map (fun s ↦ ∑ b in s, g b)`. This is useful to compare the set of limit points of
`∑ b in s, f b` as `s → atTop` with the similar set for `g`."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/AtTopBot/Variant0615ee9996353d7a645877e33028affabe6ebb300ee37f235dc01ffb5bd2ce1d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/AtTopBot/Variant0615ee9996353d7a645877e33028affabe6ebb300ee37f235dc01ffb5bd2ce1d.lean#L1802).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7f615d8a1455f8dcca79ade0cd848c1c560026c4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
