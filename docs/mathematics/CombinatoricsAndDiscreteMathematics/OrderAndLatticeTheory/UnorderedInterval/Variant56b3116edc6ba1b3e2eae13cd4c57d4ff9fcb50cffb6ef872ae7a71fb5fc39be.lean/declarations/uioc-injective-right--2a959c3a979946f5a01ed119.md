# uIoc_injective_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e04b22b5-715c-34a5-909c-8416606e3b6c",
  "kind": "lemma",
  "lexical_name": "uIoc_injective_right",
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
  "slug": "uioc-injective-right--2a959c3a979946f5a01ed119",
  "source": {
    "blob": "64833662ab714ceb248e0c1b0ef56d90c2b0a73c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 325,
    "line": 312,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/UnorderedInterval/Variant56b3116edc6ba1b3e2eae13cd4c57d4ff9fcb50cffb6ef872ae7a71fb5fc39be.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2a959c3a979946f5a01ed1191cf7b53dfdbb48d95473e89486c9404cf5cdeb54",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/UnorderedInterval/Variant56b3116edc6ba1b3e2eae13cd4c57d4ff9fcb50cffb6ef872ae7a71fb5fc39be.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e04b22b5-715c-34a5-909c-8416606e3b6c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 312–325.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma uIoc_injective_right (a : α) : Injective fun b => Ι b a := by
  rintro b c h
  rw [Set.ext_iff] at h
  obtain ha | ha := le_or_lt b a
  · have hb := (h b).not
    simp only [ha, left_mem_uIoc, not_lt, true_iff, notMem_uIoc, ← not_le,
      and_true, not_true, false_and, not_false_iff, or_false] at hb
    refine hb.eq_of_not_lt fun hc => ?_
    simpa [ha, and_iff_right hc, ← @not_le _ _ _ a, iff_not_self, -not_le] using h c
  · refine
      eq_of_mem_uIoc_of_mem_uIoc ((h _).1 <| left_mem_uIoc.2 ha)
        ((h _).2 <| left_mem_uIoc.2 <| ha.trans_le ?_)
    simpa [ha, ha.not_le, mem_uIoc] using h b

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/UnorderedInterval/Variant56b3116edc6ba1b3e2eae13cd4c57d4ff9fcb50cffb6ef872ae7a71fb5fc39be.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/UnorderedInterval/Variant56b3116edc6ba1b3e2eae13cd4c57d4ff9fcb50cffb6ef872ae7a71fb5fc39be.lean#L312).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `64833662ab714ceb248e0c1b0ef56d90c2b0a73c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
