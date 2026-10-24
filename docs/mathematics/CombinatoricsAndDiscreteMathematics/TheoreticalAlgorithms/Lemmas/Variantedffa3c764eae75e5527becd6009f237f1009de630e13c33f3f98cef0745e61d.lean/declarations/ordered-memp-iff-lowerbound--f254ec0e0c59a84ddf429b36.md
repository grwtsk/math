# Ordered.memP_iff_lowerBound?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6247ee44-dcc3-c122-3bf7-6a7b18459c1e",
  "kind": "theorem",
  "lexical_name": "Ordered.memP_iff_lowerBound?",
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
  "slug": "ordered-memp-iff-lowerbound--f254ec0e0c59a84ddf429b36",
  "source": {
    "blob": "fa670c74b4960613283f3cf987aca7b7b9f008c3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 353,
    "line": 341,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantedffa3c764eae75e5527becd6009f237f1009de630e13c33f3f98cef0745e61d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f254ec0e0c59a84ddf429b36c5e5a45c0fcbac1389ee9f23b84a0127527cd572",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantedffa3c764eae75e5527becd6009f237f1009de630e13c33f3f98cef0745e61d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6247ee44-dcc3-c122-3bf7-6a7b18459c1e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 341–353.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Ordered.memP_iff_lowerBound? [@TransCmp α cmp] [IsCut cmp cut] (ht : Ordered cmp t) :
    t.MemP cut ↔ ∃ x, t.lowerBound? cut none = some x ∧ cut x = .eq := by
  refine memP_def.trans ⟨fun ⟨y, hy, ey⟩ => ?_, fun ⟨x, hx, e⟩ => ⟨_, lowerBound?_mem hx, e⟩⟩
  have ⟨x, hx⟩ := ht.lowerBound?_exists.2 ⟨_, hy, fun h => nomatch ey.symm.trans h⟩
  refine ⟨x, hx, ?_⟩; cases ex : cut x
  · cases lowerBound?_le hx ex
  · rfl
  · cases e : cmp x y
    · cases ey.symm.trans <| ht.lowerBound?_least hx hy e ex
    · cases ey.symm.trans <| IsCut.congr e |>.symm.trans ex
    · cases ey.symm.trans <| IsCut.gt_trans (OrientedCmp.cmp_eq_gt.1 e) ex

/-- A stronger version of `lowerBound?_least` that holds when the cut is strict. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantedffa3c764eae75e5527becd6009f237f1009de630e13c33f3f98cef0745e61d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantedffa3c764eae75e5527becd6009f237f1009de630e13c33f3f98cef0745e61d.lean#L341).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fa670c74b4960613283f3cf987aca7b7b9f008c3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
