# Fintype.sup_disjointed

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9568d279-0bba-3a8f-55c8-408d1035468a",
  "kind": "lemma",
  "lexical_name": "Fintype.sup_disjointed",
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
  "slug": "fintype-sup-disjointed--60693988e4cd45dd3220496f",
  "source": {
    "blob": "91222d1811aa1d93600014b7232b14fdbb729812",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 172,
    "line": 164,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Disjointed/Variant7a580b9ac23d749a27bd88aa30dc03866ab7ddc39f932584c7752c4188745446.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:60693988e4cd45dd3220496f8eae03b0761fec372e48ca8958276bde50c8dcd5",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Disjointed/Variant7a580b9ac23d749a27bd88aa30dc03866ab7ddc39f932584c7752c4188745446.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9568d279-0bba-3a8f-55c8-408d1035468a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 164–172.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Fintype.sup_disjointed [Fintype ι] (f : ι → α) :
    univ.sup (disjointed f) = univ.sup f := by
  classical
  have hun : univ.biUnion Iic = (univ : Finset ι) := by
    ext r; simpa only [mem_biUnion, mem_univ, mem_Iic, true_and, iff_true] using ⟨r, le_rfl⟩
  rw [← hun, sup_biUnion, sup_biUnion, sup_congr rfl (fun i _ ↦ ?_)]
  rw [← sup'_eq_sup nonempty_Iic, ← sup'_eq_sup nonempty_Iic,
    ← partialSups_apply, ← partialSups_apply, partialSups_disjointed]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Disjointed/Variant7a580b9ac23d749a27bd88aa30dc03866ab7ddc39f932584c7752c4188745446.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Disjointed/Variant7a580b9ac23d749a27bd88aa30dc03866ab7ddc39f932584c7752c4188745446.lean#L164).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `91222d1811aa1d93600014b7232b14fdbb729812` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
