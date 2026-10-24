# HasCondDistrib.fst

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:13d072aa-0209-9128-5c4e-8099025e5bf4",
  "kind": "lemma",
  "lexical_name": "HasCondDistrib.fst",
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
  "slug": "hasconddistrib-fst--4e3d5d941b8013e5f5fc5e00",
  "source": {
    "blob": "2d736771e5a73adcc1344767ba5aa6ea3eca32d0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 90,
    "line": 85,
    "path": "GRWTSK/Analysis/MeasureTheory/HasCondDistrib/Variant6c4f47b52b9eac9396b2a0757e77f358aba4d35fe704c580bfb38515846c1456.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4e3d5d941b8013e5f5fc5e00cb312776312f32582e9613cb2d3a45acd85a222f",
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

Occurrence: `result:13d072aa-0209-9128-5c4e-8099025e5bf4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 85–90.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma HasCondDistrib.fst {Y : Ω → 𝓨 × 𝓩} {κ : Kernel 𝓧 (𝓨 × 𝓩)} [IsSFiniteKernel κ]
    (h : HasCondDistrib Y X κ P) :
    HasCondDistrib (fun ω ↦ (Y ω).1) X κ.fst P := by
  rw [Kernel.fst_eq]
  exact h.comp_left measurable_fst

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/HasCondDistrib/Variant6c4f47b52b9eac9396b2a0757e77f358aba4d35fe704c580bfb38515846c1456.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/HasCondDistrib/Variant6c4f47b52b9eac9396b2a0757e77f358aba4d35fe704c580bfb38515846c1456.lean#L85).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2d736771e5a73adcc1344767ba5aa6ea3eca32d0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
