# fold_ite'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e14011ff5f84834f83bacc37a70cf48ab147cf7d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 126,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/56/56f34b22259c3514109bfcc338371d6d0ce6e55e40d1b139f520c009cf8fb6d9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4f0fb435-3423-4889-5951-26b47265b85d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:648b64ab-fe87-d888-4409-249eb6fcaa81",
  "kind": "theorem",
  "lexical_name": "fold_ite'",
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
  "slug": "fold-ite--cc903573ceaf7fd42775c4b5",
  "source": {
    "blob": "e14011ff5f84834f83bacc37a70cf48ab147cf7d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 143,
    "line": 126,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Fold/Variant56f34b22259c3514109bfcc338371d6d0ce6e55e40d1b139f520c009cf8fb6d9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cc903573ceaf7fd42775c4b5c6d5d6af888284fbdb8d6f2f806d7a14b339a770",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Fold/Variant56f34b22259c3514109bfcc338371d6d0ce6e55e40d1b139f520c009cf8fb6d9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:648b64ab-fe87-d888-4409-249eb6fcaa81`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 126–143.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fold_ite' {g : α → β} (hb : op b b = b) (p : α → Prop) [DecidablePred p] :
    Finset.fold op b (fun i => ite (p i) (f i) (g i)) s =
      op (Finset.fold op b f (s.filter p)) (Finset.fold op b g (s.filter fun i => ¬p i)) := by
  classical
    induction s using Finset.induction_on with
    | empty => simp [hb]
    | insert x s hx IH =>
      simp only [Finset.fold_insert hx]
      split_ifs with h
      · have : x ∉ Finset.filter p s := by simp [hx]
        simp [Finset.filter_insert, h, Finset.fold_insert this, ha.assoc, IH]
      · have : x ∉ Finset.filter (fun i => ¬ p i) s := by simp [hx]
        simp [Finset.filter_insert, h, Finset.fold_insert this, IH, ← ha.assoc, hc.comm]

/-- A weaker version of `Finset.fold_ite'`,
relying on typeclass idempotency over the whole type,
instead of solely on the seed element.
However, this is easier to use because it does not generate side goals. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Fold/Variant56f34b22259c3514109bfcc338371d6d0ce6e55e40d1b139f520c009cf8fb6d9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Fold/Variant56f34b22259c3514109bfcc338371d6d0ce6e55e40d1b139f520c009cf8fb6d9.lean#L126).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e14011ff5f84834f83bacc37a70cf48ab147cf7d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
