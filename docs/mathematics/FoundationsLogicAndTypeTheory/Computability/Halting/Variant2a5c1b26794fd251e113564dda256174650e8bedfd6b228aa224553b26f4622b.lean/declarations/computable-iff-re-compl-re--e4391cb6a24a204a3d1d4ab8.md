# computable_iff_re_compl_re

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9484ff59-c8f7-f428-e716-0cba5ca08075",
  "kind": "theorem",
  "lexical_name": "computable_iff_re_compl_re",
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
  "slug": "computable-iff-re-compl-re--e4391cb6a24a204a3d1d4ab8",
  "source": {
    "blob": "3066fc5f4bc4029ac10780c189c3cdfa82aefa1d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 267,
    "line": 252,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Computability/Halting/Variant2a5c1b26794fd251e113564dda256174650e8bedfd6b228aa224553b26f4622b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e4391cb6a24a204a3d1d4ab89229460f304e98249e94da693669c5f0ebc1ce3f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Computability/Halting/Variant2a5c1b26794fd251e113564dda256174650e8bedfd6b228aa224553b26f4622b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9484ff59-c8f7-f428-e716-0cba5ca08075`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 252–267.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem computable_iff_re_compl_re {p : α → Prop} [DecidablePred p] :
    ComputablePred p ↔ RePred p ∧ RePred fun a => ¬p a :=
  ⟨fun h => ⟨h.to_re, h.not.to_re⟩, fun ⟨h₁, h₂⟩ =>
    ⟨‹_›, by
      obtain ⟨k, pk, hk⟩ :=
        Partrec.merge (h₁.map (Computable.const true).to₂) (h₂.map (Computable.const false).to₂)
        (by
          intro a x hx y hy
          simp at hx hy
          cases hy.1 hx.1)
      · refine' Partrec.of_eq pk fun n => Part.eq_some_iff.2 _
        rw [hk]
        simp
        apply Decidable.em⟩⟩
#align computable_pred.computable_iff_re_compl_re ComputablePred.computable_iff_re_compl_re

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/Computability/Halting/Variant2a5c1b26794fd251e113564dda256174650e8bedfd6b228aa224553b26f4622b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Computability/Halting/Variant2a5c1b26794fd251e113564dda256174650e8bedfd6b228aa224553b26f4622b.lean#L252).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3066fc5f4bc4029ac10780c189c3cdfa82aefa1d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
