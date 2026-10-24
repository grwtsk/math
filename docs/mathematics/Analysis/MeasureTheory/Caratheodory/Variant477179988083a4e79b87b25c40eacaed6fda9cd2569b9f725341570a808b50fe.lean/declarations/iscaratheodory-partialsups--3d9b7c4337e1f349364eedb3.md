# isCaratheodory_partialSups

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9be48467d351918c581cfd36817ea9a0e29164a1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 115,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/47/477179988083a4e79b87b25c40eacaed6fda9cd2569b9f725341570a808b50fe.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ca39b2d3-5707-a77f-9ce7-31e2f2bc1bb9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:39a036bf-55bc-0351-03c4-80ea8b800eb7",
  "kind": "lemma",
  "lexical_name": "isCaratheodory_partialSups",
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
  "slug": "iscaratheodory-partialsups--3d9b7c4337e1f349364eedb3",
  "source": {
    "blob": "9be48467d351918c581cfd36817ea9a0e29164a1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 120,
    "line": 115,
    "path": "GRWTSK/Analysis/MeasureTheory/Caratheodory/Variant477179988083a4e79b87b25c40eacaed6fda9cd2569b9f725341570a808b50fe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3d9b7c4337e1f349364eedb3687498dac81d5bd701cef50343a47ec949bc8bed",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Caratheodory/Variant477179988083a4e79b87b25c40eacaed6fda9cd2569b9f725341570a808b50fe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:39a036bf-55bc-0351-03c4-80ea8b800eb7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 115–120.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isCaratheodory_partialSups {ι : Type*} [Preorder ι] [LocallyFiniteOrderBot ι]
    {s : ι → Set α} (h : ∀ i, m.IsCaratheodory (s i)) (i : ι) :
    m.IsCaratheodory (partialSups s i) := by
  simpa only [partialSups_apply, Finset.sup'_eq_sup, Finset.sup_set_eq_biUnion, ← Finset.mem_coe,
    Finset.coe_Iic] using .biUnion_of_finite (finite_Iic _) (fun j _ ↦ h j)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Caratheodory/Variant477179988083a4e79b87b25c40eacaed6fda9cd2569b9f725341570a808b50fe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Caratheodory/Variant477179988083a4e79b87b25c40eacaed6fda9cd2569b9f725341570a808b50fe.lean#L115).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9be48467d351918c581cfd36817ea9a0e29164a1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
