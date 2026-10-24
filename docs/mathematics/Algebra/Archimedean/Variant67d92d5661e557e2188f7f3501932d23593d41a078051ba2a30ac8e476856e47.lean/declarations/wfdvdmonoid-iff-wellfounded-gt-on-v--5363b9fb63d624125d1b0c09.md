# wfDvdMonoid_iff_wellFounded_gt_on_v

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3e0ce8ae3b5e70d7f18b1016e936798bff0b4550",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 41,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/67/67d92d5661e557e2188f7f3501932d23593d41a078051ba2a30ac8e476856e47.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f23fd8b3-bbd7-2c56-332f-3bfc3a2804c9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1ce58c22-e28e-ca5e-5e42-e0e59f2273e7",
  "kind": "lemma",
  "lexical_name": "wfDvdMonoid_iff_wellFounded_gt_on_v",
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
  "slug": "wfdvdmonoid-iff-wellfounded-gt-on-v--5363b9fb63d624125d1b0c09",
  "source": {
    "blob": "3e0ce8ae3b5e70d7f18b1016e936798bff0b4550",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 46,
    "line": 41,
    "path": "GRWTSK/Algebra/Archimedean/Variant67d92d5661e557e2188f7f3501932d23593d41a078051ba2a30ac8e476856e47.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5363b9fb63d624125d1b0c09de76f3078563c223db8dd35a15b761742fac8a0c",
  "verification": {
    "reference": "docs/verification/Algebra/Archimedean/Variant67d92d5661e557e2188f7f3501932d23593d41a078051ba2a30ac8e476856e47.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1ce58c22-e28e-ca5e-5e42-e0e59f2273e7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 41–46.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma wfDvdMonoid_iff_wellFounded_gt_on_v (hv : Integers v O) :
    WfDvdMonoid O ↔ WellFounded ((· > ·) on (v ∘ algebraMap O F)) := by
  refine ⟨fun _ ↦ wellFounded_dvdNotUnit.mono ?_, fun h ↦ h.mono ?_⟩ <;>
  simp [Function.onFun, hv.dvdNotUnit_iff_lt]

open scoped Function WithZero in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Archimedean/Variant67d92d5661e557e2188f7f3501932d23593d41a078051ba2a30ac8e476856e47.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Archimedean/Variant67d92d5661e557e2188f7f3501932d23593d41a078051ba2a30ac8e476856e47.lean#L41).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3e0ce8ae3b5e70d7f18b1016e936798bff0b4550` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
