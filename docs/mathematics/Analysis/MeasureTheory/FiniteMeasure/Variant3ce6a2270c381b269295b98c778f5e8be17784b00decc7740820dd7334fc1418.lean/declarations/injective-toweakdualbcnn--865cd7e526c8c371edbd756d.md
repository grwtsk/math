# injective_toWeakDualBCNN

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f86ffe0319c0e296ed9407c7309a96693f0963ab",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 537,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3c/3ce6a2270c381b269295b98c778f5e8be17784b00decc7740820dd7334fc1418.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:533b19ee-f8fe-9a09-2c04-27aad452fd82",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f13df67e-d190-a409-ace6-c44b2e376562",
  "kind": "lemma",
  "lexical_name": "injective_toWeakDualBCNN",
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
  "slug": "injective-toweakdualbcnn--865cd7e526c8c371edbd756d",
  "source": {
    "blob": "f86ffe0319c0e296ed9407c7309a96693f0963ab",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 548,
    "line": 537,
    "path": "GRWTSK/Analysis/MeasureTheory/FiniteMeasure/Variant3ce6a2270c381b269295b98c778f5e8be17784b00decc7740820dd7334fc1418.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:865cd7e526c8c371edbd756db87fe2c8754c86a284f20b38386c82d7544fa02b",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/FiniteMeasure/Variant3ce6a2270c381b269295b98c778f5e8be17784b00decc7740820dd7334fc1418.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f13df67e-d190-a409-ace6-c44b2e376562`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 537–548.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma injective_toWeakDualBCNN :
    Injective (toWeakDualBCNN : FiniteMeasure Ω → WeakDual ℝ≥0 (Ω →ᵇ ℝ≥0)) := by
  intro μ ν hμν
  apply ext_of_forall_lintegral_eq
  intro f
  have key := congr_fun (congrArg DFunLike.coe hμν) f
  apply (ENNReal.toNNReal_eq_toNNReal_iff' ?_ ?_).mp key
  · exact (lintegral_lt_top_of_nnreal μ f).ne
  · exact (lintegral_lt_top_of_nnreal ν f).ne

variable (Ω)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/FiniteMeasure/Variant3ce6a2270c381b269295b98c778f5e8be17784b00decc7740820dd7334fc1418.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/FiniteMeasure/Variant3ce6a2270c381b269295b98c778f5e8be17784b00decc7740820dd7334fc1418.lean#L537).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f86ffe0319c0e296ed9407c7309a96693f0963ab` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
