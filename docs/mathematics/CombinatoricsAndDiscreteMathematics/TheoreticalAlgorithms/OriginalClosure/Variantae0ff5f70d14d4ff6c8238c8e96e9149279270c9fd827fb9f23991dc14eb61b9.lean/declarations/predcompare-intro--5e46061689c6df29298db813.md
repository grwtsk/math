# predCompare_intro

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:45257727-fe30-8e25-6d81-344c31329e2e",
  "kind": "theorem",
  "lexical_name": "predCompare_intro",
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
  "slug": "predcompare-intro--5e46061689c6df29298db813",
  "source": {
    "blob": "5e0d083ec1beb708a9e8efdc39363be16152f8d9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 20016,
    "line": 19989,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OriginalClosure/Variantae0ff5f70d14d4ff6c8238c8e96e9149279270c9fd827fb9f23991dc14eb61b9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5e46061689c6df29298db813fc87636b9db1011263af0c47ec8e427c7aaf5541",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OriginalClosure/Variantae0ff5f70d14d4ff6c8238c8e96e9149279270c9fd827fb9f23991dc14eb61b9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:45257727-fe30-8e25-6d81-344c31329e2e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 19989–20016.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
 theorem predCompare_intro (K : QuantifierRoute L.witnesses C L.base J)
    (hp : HasType P Γ p (R.predicateType T)) (mp : WellModed γ p .data)
    (hq : HasType P Γ q (R.predicateType T)) (mq : WellModed γ q .data)
    (hh : ∀ Δ δ (e : Embedding P Γ γ Δ δ) y,
      HasType P Δ y ((R.rename e.names).logicalType (T.rename e.names)) → WellModed δ y .data →
      Equivalent P Δ δ ((R.rename e.names).eval (T.rename e.names) (p.rename e.names) y)
        ((R.rename e.names).eval (T.rename e.names) (q.rename e.names) y)) :
    Proves P Γ γ (R.predCompare L.code K.code T p q) := by
  obtain ⟨s,hs⟩ := K.triple.domain.1
  apply L.all_intro_future K (h.logical_sorted hT) (h.logical_mode mT) (h.logical_sorted hT s hs)
    (h.predCompareBody_family hT mT hp mp hq mq)
  intro Δ δ e y hy my
  rw [predCompareBody_rename,predCompareBody_instantiate]
  have ht := fun t ht => e.typing (hT t ht)
  have hy' : HasType P Δ y ((R.rename e.names).logicalType (T.rename e.names)) := by
    simpa only [logicalType_rename] using hy
  exact (L.rename e).iff_of_equivalent
    ((h.rename e).eval_formula ht (e.moded mT)
      (by simpa only [predicateType_rename] using e.typing hp) (e.moded mp) hy' my)
    ((h.rename e).eval_formula ht (e.moded mT)
      (by simpa only [predicateType_rename] using e.typing hq) (e.moded mq) hy' my)
    (hh Δ δ e y hy' my)
end Formed
end ChannelCode

namespace LogicSetup
variable {Γ : List (Expr S)} {γ : Nat → Mode} {C : Set (Set S)}
    (L : LogicSetup P Γ γ C) {A B A' B' : Expr S}
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OriginalClosure/Variantae0ff5f70d14d4ff6c8238c8e96e9149279270c9fd827fb9f23991dc14eb61b9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OriginalClosure/Variantae0ff5f70d14d4ff6c8238c8e96e9149279270c9fd827fb9f23991dc14eb61b9.lean#L19989).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5e0d083ec1beb708a9e8efdc39363be16152f8d9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
