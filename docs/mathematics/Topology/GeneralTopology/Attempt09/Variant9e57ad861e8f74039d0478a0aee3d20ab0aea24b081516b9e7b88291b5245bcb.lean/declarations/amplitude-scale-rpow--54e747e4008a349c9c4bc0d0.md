# amplitude_scale_rpow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3242f303-5bfd-24ce-9d15-fe1ae639d97c",
  "kind": "theorem",
  "lexical_name": "amplitude_scale_rpow",
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
  "slug": "amplitude-scale-rpow--54e747e4008a349c9c4bc0d0",
  "source": {
    "blob": "70edf20fc93c6f99305a85fe993128d10086f8bc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 183,
    "line": 179,
    "path": "GRWTSK/Topology/GeneralTopology/Attempt09/Variant9e57ad861e8f74039d0478a0aee3d20ab0aea24b081516b9e7b88291b5245bcb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:54e747e4008a349c9c4bc0d057fe47c551a730188bfd58ec4d272491ff791cda",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Attempt09/Variant9e57ad861e8f74039d0478a0aee3d20ab0aea24b081516b9e7b88291b5245bcb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3242f303-5bfd-24ce-9d15-fe1ae639d97c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 179–183.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem amplitude_scale_rpow {A : ℝ} (hA : 0 < A) :
    A^(9/2 : ℝ) = A^4*Real.sqrt A := by
  rw [show (9/2 : ℝ) = (4 : ℕ)+1/2 by norm_num,Real.rpow_add hA,
    Real.rpow_natCast,← Real.sqrt_eq_rpow]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Attempt09/Variant9e57ad861e8f74039d0478a0aee3d20ab0aea24b081516b9e7b88291b5245bcb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Attempt09/Variant9e57ad861e8f74039d0478a0aee3d20ab0aea24b081516b9e7b88291b5245bcb.lean#L179).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `70edf20fc93c6f99305a85fe993128d10086f8bc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
