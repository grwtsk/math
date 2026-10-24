# HasCondDistrib.hasLaw_of_const

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cf7d8d92-d3a1-adf1-11ce-d58e6364d7e1",
  "kind": "lemma",
  "lexical_name": "HasCondDistrib.hasLaw_of_const",
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
  "slug": "hasconddistrib-haslaw-of-const--b8de70eb64a7ae0ca72f23a0",
  "source": {
    "blob": "2d736771e5a73adcc1344767ba5aa6ea3eca32d0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 74,
    "line": 64,
    "path": "GRWTSK/Analysis/MeasureTheory/HasCondDistrib/Variant6c4f47b52b9eac9396b2a0757e77f358aba4d35fe704c580bfb38515846c1456.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b8de70eb64a7ae0ca72f23a020ca00c2844ae7e8886eb334db7936dd08a594d5",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/HasCondDistrib/Variant6c4f47b52b9eac9396b2a0757e77f358aba4d35fe704c580bfb38515846c1456.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cf7d8d92-d3a1-adf1-11ce-d58e6364d7e1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 64–74.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma HasCondDistrib.hasLaw_of_const [IsProbabilityMeasure P] {Q : Measure 𝓨} [SFinite Q]
    (h : HasCondDistrib Y X (Kernel.const 𝓧 Q) P) :
    HasLaw Y Q P where
  map_eq := by
    have h_snd : (P.map (fun ω ↦ (X ω, Y ω))).snd = Q := by
      rw [h.map_eq, Measure.snd_compProd]
      simp [Measure.map_apply_of_aemeasurable h.aemeasurable_fst]
    rwa [Measure.snd_map_prodMk₀ h.aemeasurable_fst (by fun_prop)] at h_snd

variable [SFinite P] [IsSFiniteKernel κ]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/HasCondDistrib/Variant6c4f47b52b9eac9396b2a0757e77f358aba4d35fe704c580bfb38515846c1456.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/HasCondDistrib/Variant6c4f47b52b9eac9396b2a0757e77f358aba4d35fe704c580bfb38515846c1456.lean#L64).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2d736771e5a73adcc1344767ba5aa6ea3eca32d0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
