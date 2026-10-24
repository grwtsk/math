# mem_insertUnit_fold_units

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6c1af8fbcc72a021cd3bc9f7d894e3ac965bd79b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 112,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2d/2d02293c26357d17f81371a1dd1330a1805da9efc4636a013365ade4b1a5b530.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4dc39b97-f182-b0a9-07c1-d68660600d89",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:dfa84572-e348-ec9b-4150-2c0e279e083a",
  "kind": "theorem",
  "lexical_name": "mem_insertUnit_fold_units",
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
  "slug": "mem-insertunit-fold-units--9327da2f2da8c3effeb2d92a",
  "source": {
    "blob": "6c1af8fbcc72a021cd3bc9f7d894e3ac965bd79b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 124,
    "line": 112,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RupAddSound/Variant2d02293c26357d17f81371a1dd1330a1805da9efc4636a013365ade4b1a5b530.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9327da2f2da8c3effeb2d92a2e637ee0b47b755c4bf7dc5e39e5c88d81ef2bce",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RupAddSound/Variant2d02293c26357d17f81371a1dd1330a1805da9efc4636a013365ade4b1a5b530.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dfa84572-e348-ec9b-4150-2c0e279e083a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 112–124.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_insertUnit_fold_units {n : Nat} (units : Array (Literal (PosFin n))) (assignments : Array Assignment)
    (foundContradiction : Bool) (l : CNF.Clause (PosFin n)) :
    let insertUnit_fold_res := List.foldl insertUnit (units, assignments, foundContradiction) l
    ∀ l' : Literal (PosFin n), l' ∈ insertUnit_fold_res.1.toList → l' ∈ l ∨ l' ∈ units.toList := by
  have hb (l' : Literal (PosFin n)) : l' ∈ (units, assignments, foundContradiction).1.toList → l' ∈ l ∨ l' ∈ units.toList := by
    grind
  have hl (acc : Array (Literal (PosFin n)) × Array Assignment × Bool)
    (h : ∀ l' : Literal (PosFin n), l' ∈ acc.1.toList → l' ∈ l ∨ l' ∈ units.toList) (l'' : Literal (PosFin n))
    (l''_in_l : l'' ∈ l) : ∀ l' : Literal (PosFin n), l' ∈ (insertUnit acc l'').1.toList → l' ∈ l ∨ l' ∈ units.toList := by
    intro l' l'_in_res
    rcases mem_insertUnit_units  acc.1 acc.2.1 acc.2.2 l'' l' l'_in_res with l'_eq_l'' | l'_in_acc <;> grind
  exact List.foldlRecOn l insertUnit hb hl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RupAddSound/Variant2d02293c26357d17f81371a1dd1330a1805da9efc4636a013365ade4b1a5b530.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RupAddSound/Variant2d02293c26357d17f81371a1dd1330a1805da9efc4636a013365ade4b1a5b530.lean#L112).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6c1af8fbcc72a021cd3bc9f7d894e3ac965bd79b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
