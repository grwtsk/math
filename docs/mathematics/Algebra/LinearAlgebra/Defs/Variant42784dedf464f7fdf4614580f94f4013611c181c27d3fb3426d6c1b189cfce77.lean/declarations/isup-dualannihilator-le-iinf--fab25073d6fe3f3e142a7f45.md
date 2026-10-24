# iSup_dualAnnihilator_le_iInf

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d477aeb703535317106a16bb30cf8c4bcd4db8d7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 457,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/42/42784dedf464f7fdf4614580f94f4013611c181c27d3fb3426d6c1b189cfce77.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a962aaab-3610-ec7b-5083-fc6eac37746a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d18d8c03-6455-24f9-832a-956039128b04",
  "kind": "theorem",
  "lexical_name": "iSup_dualAnnihilator_le_iInf",
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
  "slug": "isup-dualannihilator-le-iinf--fab25073d6fe3f3e142a7f45",
  "source": {
    "blob": "d477aeb703535317106a16bb30cf8c4bcd4db8d7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 463,
    "line": 457,
    "path": "GRWTSK/Algebra/LinearAlgebra/Defs/Variant42784dedf464f7fdf4614580f94f4013611c181c27d3fb3426d6c1b189cfce77.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fab25073d6fe3f3e142a7f45806a153978adabdc79f1b29772efb369cc9610f5",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Defs/Variant42784dedf464f7fdf4614580f94f4013611c181c27d3fb3426d6c1b189cfce77.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d18d8c03-6455-24f9-832a-956039128b04`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 457–463.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem iSup_dualAnnihilator_le_iInf {ι : Sort*} (U : ι → Submodule R M) :
    ⨆ i : ι, (U i).dualAnnihilator ≤ (⨅ i : ι, U i).dualAnnihilator := by
  rw [le_dualAnnihilator_iff_le_dualCoannihilator, dualCoannihilator_iSup_eq]
  apply iInf_mono
  exact fun i : ι => le_dualAnnihilator_dualCoannihilator (U i)

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Defs/Variant42784dedf464f7fdf4614580f94f4013611c181c27d3fb3426d6c1b189cfce77.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Defs/Variant42784dedf464f7fdf4614580f94f4013611c181c27d3fb3426d6c1b189cfce77.lean#L457).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d477aeb703535317106a16bb30cf8c4bcd4db8d7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
