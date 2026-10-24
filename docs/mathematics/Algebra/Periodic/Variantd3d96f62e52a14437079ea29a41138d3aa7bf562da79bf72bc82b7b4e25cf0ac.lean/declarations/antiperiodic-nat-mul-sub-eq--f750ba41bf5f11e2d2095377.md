# Antiperiodic.nat_mul_sub_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "43071b20b9ab452933e158c7f66026ac4a88f65c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 130,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d3/d3d96f62e52a14437079ea29a41138d3aa7bf562da79bf72bc82b7b4e25cf0ac.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c2821e3f-1ef4-bb21-02d0-28aa191d4469",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6e26df14-ef41-9ccd-de17-2a488268aa1e",
  "kind": "theorem",
  "lexical_name": "Antiperiodic.nat_mul_sub_eq",
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
  "slug": "antiperiodic-nat-mul-sub-eq--f750ba41bf5f11e2d2095377",
  "source": {
    "blob": "43071b20b9ab452933e158c7f66026ac4a88f65c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 134,
    "line": 130,
    "path": "GRWTSK/Algebra/Periodic/Variantd3d96f62e52a14437079ea29a41138d3aa7bf562da79bf72bc82b7b4e25cf0ac.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f750ba41bf5f11e2d2095377776ae73e475e5b035a9ff41c4367cd894a7e59c5",
  "verification": {
    "reference": "docs/verification/Algebra/Periodic/Variantd3d96f62e52a14437079ea29a41138d3aa7bf562da79bf72bc82b7b4e25cf0ac.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6e26df14-ef41-9ccd-de17-2a488268aa1e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 130–134.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Antiperiodic.nat_mul_sub_eq [NonAssocRing α] [Ring β] (h : Antiperiodic f c) (n : ℕ) :
    f (n * c - x) = (-1) ^ n * f (-x) := by
  simpa only [nsmul_eq_mul, zsmul_eq_mul, Int.cast_pow, Int.cast_neg,
    Int.cast_one] using h.nsmul_sub_eq n

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Periodic/Variantd3d96f62e52a14437079ea29a41138d3aa7bf562da79bf72bc82b7b4e25cf0ac.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Periodic/Variantd3d96f62e52a14437079ea29a41138d3aa7bf562da79bf72bc82b7b4e25cf0ac.lean#L130).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `43071b20b9ab452933e158c7f66026ac4a88f65c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
