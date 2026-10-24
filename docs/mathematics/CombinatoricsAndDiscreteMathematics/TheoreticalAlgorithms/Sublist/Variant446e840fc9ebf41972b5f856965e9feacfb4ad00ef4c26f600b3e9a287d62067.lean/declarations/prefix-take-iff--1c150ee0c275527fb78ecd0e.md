# prefix_take_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:40ab9dd7-55e9-cf7b-fca0-4fd20f8c6f09",
  "kind": "theorem",
  "lexical_name": "prefix_take_iff",
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
  "slug": "prefix-take-iff--1c150ee0c275527fb78ecd0e",
  "source": {
    "blob": "54d745edc7b02adcab20b9ba557fc019739d78d3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 144,
    "line": 131,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sublist/Variant446e840fc9ebf41972b5f856965e9feacfb4ad00ef4c26f600b3e9a287d62067.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1c150ee0c275527fb78ecd0ea4be9af0f2ede0079b191771cb326f1f2f5b6925",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sublist/Variant446e840fc9ebf41972b5f856965e9feacfb4ad00ef4c26f600b3e9a287d62067.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:40ab9dd7-55e9-cf7b-fca0-4fd20f8c6f09`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 131–144.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem prefix_take_iff {xs ys : List α} {i : Nat} : xs <+: ys.take i ↔ xs <+: ys ∧ xs.length ≤ i := by
  constructor
  · intro h
    constructor
    · exact List.IsPrefix.trans h <| List.take_prefix i ys
    · replace h := h.length_le
      rw [length_take, Nat.le_min] at h
      exact h.left
  · intro ⟨hp, hl⟩
    have hl' := hp.length_le
    rw [List.prefix_iff_eq_take] at *
    rw [hp, List.take_take]
    simp [Nat.min_eq_left, hl, hl']

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sublist/Variant446e840fc9ebf41972b5f856965e9feacfb4ad00ef4c26f600b3e9a287d62067.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sublist/Variant446e840fc9ebf41972b5f856965e9feacfb4ad00ef4c26f600b3e9a287d62067.lean#L131).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `54d745edc7b02adcab20b9ba557fc019739d78d3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
