# aeconst_of_forall_smul_ae_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b7da1d40c5e5983edeaeb64635cd240f0c1bf277",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 69,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/cc/cce9790b492f2e8a7d2f11a3fc145b178c08aa8ad0d089637dd245b308ad2849.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7e785574-c26f-cce7-cc2a-06a42a2ac0e4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:cf1296de-1cc7-0eb9-f7bc-02adb7dcacc6",
  "kind": "theorem",
  "lexical_name": "aeconst_of_forall_smul_ae_eq",
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
  "slug": "aeconst-of-forall-smul-ae-eq--a899364ed4408806c64f7d49",
  "source": {
    "blob": "b7da1d40c5e5983edeaeb64635cd240f0c1bf277",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 74,
    "line": 69,
    "path": "GRWTSK/Analysis/MeasureTheory/Basic/Variantcce9790b492f2e8a7d2f11a3fc145b178c08aa8ad0d089637dd245b308ad2849.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a899364ed4408806c64f7d4901a16a5b5e1319ce5483c456b2d504e70452d48f",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Basic/Variantcce9790b492f2e8a7d2f11a3fc145b178c08aa8ad0d089637dd245b308ad2849.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cf1296de-1cc7-0eb9-f7bc-02adb7dcacc6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 69–74.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem aeconst_of_forall_smul_ae_eq (hm : NullMeasurableSet s μ) (h : ∀ g : G, g • s =ᵐ[μ] s) :
    EventuallyEmptyOrUniv s (ae μ) :=
  aeconst_of_forall_preimage_smul_ae_eq G hm fun g ↦ by
    simpa only [preimage_smul] using h g⁻¹

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Basic/Variantcce9790b492f2e8a7d2f11a3fc145b178c08aa8ad0d089637dd245b308ad2849.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Basic/Variantcce9790b492f2e8a7d2f11a3fc145b178c08aa8ad0d089637dd245b308ad2849.lean#L69).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b7da1d40c5e5983edeaeb64635cd240f0c1bf277` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
