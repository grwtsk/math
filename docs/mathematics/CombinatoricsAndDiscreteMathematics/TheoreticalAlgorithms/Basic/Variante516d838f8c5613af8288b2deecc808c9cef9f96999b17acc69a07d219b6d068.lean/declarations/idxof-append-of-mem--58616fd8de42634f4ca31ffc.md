# idxOf_append_of_mem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:88786056-2750-e5bd-bbaf-fc8c9eeca1fa",
  "kind": "theorem",
  "lexical_name": "idxOf_append_of_mem",
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
  "slug": "idxof-append-of-mem--58616fd8de42634f4ca31ffc",
  "source": {
    "blob": "6c2bf385545c3ea40eea677eb01bea2e19e33e4e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 586,
    "line": 574,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variante516d838f8c5613af8288b2deecc808c9cef9f96999b17acc69a07d219b6d068.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:58616fd8de42634f4ca31ffcd6a43e84e04e91d92c9618609bc613274cfa2d4e",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variante516d838f8c5613af8288b2deecc808c9cef9f96999b17acc69a07d219b6d068.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:88786056-2750-e5bd-bbaf-fc8c9eeca1fa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 574–586.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem idxOf_append_of_mem {a : α} (h : a ∈ l₁) : idxOf a (l₁ ++ l₂) = idxOf a l₁ := by
  induction l₁ with
  | nil =>
    exfalso
    exact not_mem_nil h
  | cons d₁ t₁ ih =>
    rw [List.cons_append]
    by_cases hh : d₁ = a
    · iterate 2 rw [idxOf_cons_eq _ hh]
    rw [idxOf_cons_ne _ hh, idxOf_cons_ne _ hh, ih (mem_of_ne_of_mem (Ne.symm hh) h)]

@[deprecated (since := "2025-01-30")] alias indexOf_append_of_mem := idxOf_append_of_mem

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variante516d838f8c5613af8288b2deecc808c9cef9f96999b17acc69a07d219b6d068.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variante516d838f8c5613af8288b2deecc808c9cef9f96999b17acc69a07d219b6d068.lean#L574).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6c2bf385545c3ea40eea677eb01bea2e19e33e4e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
