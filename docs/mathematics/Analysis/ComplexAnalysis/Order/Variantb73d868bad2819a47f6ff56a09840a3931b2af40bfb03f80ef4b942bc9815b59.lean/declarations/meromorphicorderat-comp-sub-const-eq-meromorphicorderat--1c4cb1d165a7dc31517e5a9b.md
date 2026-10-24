# meromorphicOrderAt_comp_sub_const_eq_meromorphicOrderAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c4fcb82f-3bd8-f7ba-55f3-322890810f46",
  "kind": "theorem",
  "lexical_name": "meromorphicOrderAt_comp_sub_const_eq_meromorphicOrderAt",
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
  "slug": "meromorphicorderat-comp-sub-const-eq-meromorphicorderat--1c4cb1d165a7dc31517e5a9b",
  "source": {
    "blob": "66318e292faf329e4d3d60546920c8de585ae8d5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 976,
    "line": 967,
    "path": "GRWTSK/Analysis/ComplexAnalysis/Order/Variantb73d868bad2819a47f6ff56a09840a3931b2af40bfb03f80ef4b942bc9815b59.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1c4cb1d165a7dc31517e5a9b5ff9c98e421ec57152e97d5f0e8b0486b322a04c",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/Order/Variantb73d868bad2819a47f6ff56a09840a3931b2af40bfb03f80ef4b942bc9815b59.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c4fcb82f-3bd8-f7ba-55f3-322890810f46`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 967–976.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem meromorphicOrderAt_comp_sub_const_eq_meromorphicOrderAt {c : 𝕜} {f : 𝕜 → E} :
    meromorphicOrderAt (f ∘ (· - c)) x = meromorphicOrderAt f (x - c) := by
  simp_rw [sub_eq_add_neg, ← meromorphicOrderAt_comp_add_const_eq_meromorphicOrderAt]

end comp

section smul

variable {g : 𝕜 → 𝕜}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/Order/Variantb73d868bad2819a47f6ff56a09840a3931b2af40bfb03f80ef4b942bc9815b59.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/Order/Variantb73d868bad2819a47f6ff56a09840a3931b2af40bfb03f80ef4b942bc9815b59.lean#L967).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `66318e292faf329e4d3d60546920c8de585ae8d5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
