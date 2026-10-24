# IsSRGWith.ediam_eq_two

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4d441cb3-4212-35c2-68e7-3f10310a05a8",
  "kind": "theorem",
  "lexical_name": "IsSRGWith.ediam_eq_two",
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
  "slug": "issrgwith-ediam-eq-two--0e5bcdaa8c7ba7b97b8e5fb8",
  "source": {
    "blob": "ba6718795cc77b500fee8eb959c9fd00b92743f0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 93,
    "line": 77,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/StronglyRegular/Variantd60bc391b75abba062ba7a63f220d0e0565ab1ac81bf20b26d6f8e9a2ad353de.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0e5bcdaa8c7ba7b97b8e5fb8c39fe10c1121d96958cddb9bee379540dc6b92ac",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/GraphTheory/StronglyRegular/Variantd60bc391b75abba062ba7a63f220d0e0565ab1ac81bf20b26d6f8e9a2ad353de.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4d441cb3-4212-35c2-68e7-3f10310a05a8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 77–93.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsSRGWith.ediam_eq_two [Nontrivial V] (h : G.IsSRGWith n k ℓ μ) (ht : G ≠ ⊤) (hm : μ ≠ 0) :
    G.ediam = 2 := by
  apply le_antisymm
  · rw [ediam_le_iff]
    intro u v
    by_contra! hc
    obtain ⟨hn, ha, he⟩ := two_lt_edist_iff.mp hc
    have h := h.of_not_adj hn ha
    simp_all
  · by_contra
    have := not_subsingleton V
    simp_all [Order.le_one_iff]

variable [DecidableEq V]

/-- Complete graphs are strongly regular. Note that `μ` can take any value
for complete graphs, since there are no distinct pairs of non-adjacent vertices. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/GraphTheory/StronglyRegular/Variantd60bc391b75abba062ba7a63f220d0e0565ab1ac81bf20b26d6f8e9a2ad353de.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/StronglyRegular/Variantd60bc391b75abba062ba7a63f220d0e0565ab1ac81bf20b26d6f8e9a2ad353de.lean#L77).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ba6718795cc77b500fee8eb959c9fd00b92743f0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
