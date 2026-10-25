# snocCases_snoc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:77600cc4-be52-c195-6a09-f1448b29562e",
  "kind": "lemma",
  "lexical_name": "snocCases_snoc",
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
  "slug": "snoccases-snoc--c579948a83d0c5285041cf70",
  "source": {
    "blob": "d70484a9944b00da82c4f52f53f9ee4d57935100",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 704,
    "line": 697,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant373f35ae3741411d6f921e6790bb9b1a4363ec3cd26f439b8c84e967febc7fbf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c579948a83d0c5285041cf70feec74d6a5b9f7c6857cc0384855b5f9e1f7f95b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant373f35ae3741411d6f921e6790bb9b1a4363ec3cd26f439b8c84e967febc7fbf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:77600cc4-be52-c195-6a09-f1448b29562e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 697–704.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] lemma snocCases_snoc
    {P : (∀ i : Fin (n+1), α i) → Sort*} (h : ∀ x x₀, P (Fin.snoc x x₀))
    (x : ∀ i : Fin n, (Fin.init α) i) (x₀ : α (Fin.last _)) :
    snocCases h (Fin.snoc x x₀) = h x x₀ := by
  rw [snocCases, cast_eq_iff_heq, Fin.init_snoc, Fin.snoc_last]

/-- Recurse on a tuple by splitting into `Fin.elim0` and `Fin.snoc`. -/
@[elab_as_elim]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant373f35ae3741411d6f921e6790bb9b1a4363ec3cd26f439b8c84e967febc7fbf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant373f35ae3741411d6f921e6790bb9b1a4363ec3cd26f439b8c84e967febc7fbf.lean#L697).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d70484a9944b00da82c4f52f53f9ee4d57935100` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
