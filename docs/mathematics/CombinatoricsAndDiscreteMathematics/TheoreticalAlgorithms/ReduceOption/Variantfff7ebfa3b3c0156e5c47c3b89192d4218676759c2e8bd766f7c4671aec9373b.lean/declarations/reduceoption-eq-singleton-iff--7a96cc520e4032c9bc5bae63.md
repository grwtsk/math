# reduceOption_eq_singleton_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c5d259ce-7a0b-6c25-294f-b0214175f3f0",
  "kind": "theorem",
  "lexical_name": "reduceOption_eq_singleton_iff",
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
  "slug": "reduceoption-eq-singleton-iff--7a96cc520e4032c9bc5bae63",
  "source": {
    "blob": "18c57b76876f7a1aab20ee68d75f53cfd08fbf67",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 82,
    "line": 67,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ReduceOption/Variantfff7ebfa3b3c0156e5c47c3b89192d4218676759c2e8bd766f7c4671aec9373b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7a96cc520e4032c9bc5bae63e357b06320d97e148115bf0904237c02ed9f8d82",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ReduceOption/Variantfff7ebfa3b3c0156e5c47c3b89192d4218676759c2e8bd766f7c4671aec9373b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c5d259ce-7a0b-6c25-294f-b0214175f3f0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 67–82.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem reduceOption_eq_singleton_iff (l : List (Option α)) (a : α) :
    l.reduceOption = [a] ↔ ∃ m n, l = replicate m none ++ some a :: replicate n none := by
  dsimp [reduceOption]
  constructor
  · intro h
    rw [filterMap_eq_cons_iff] at h
    obtain ⟨l₁, _, l₂, h, hl₁, ⟨⟩, hl₂⟩ := h
    rw [filterMap_eq_nil_iff] at hl₂
    apply eq_replicate_of_mem at hl₁
    apply eq_replicate_of_mem at hl₂
    rw [h, hl₁, hl₂]
    use l₁.length, l₂.length
  · intro ⟨_, _, h⟩
    simp only [h, filterMap_append, filterMap_cons_some, filterMap_replicate_of_none, id_eq,
      nil_append, Option.some.injEq]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ReduceOption/Variantfff7ebfa3b3c0156e5c47c3b89192d4218676759c2e8bd766f7c4671aec9373b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ReduceOption/Variantfff7ebfa3b3c0156e5c47c3b89192d4218676759c2e8bd766f7c4671aec9373b.lean#L67).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `18c57b76876f7a1aab20ee68d75f53cfd08fbf67` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
