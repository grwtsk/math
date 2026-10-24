# Tendsto.atTop_of_mul_const

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bb8575a9-bcc5-51ba-69a5-0938ea947512",
  "kind": "theorem",
  "lexical_name": "Tendsto.atTop_of_mul_const",
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
  "slug": "tendsto-attop-of-mul-const--a0d94ae79ea65e09935dced6",
  "source": {
    "blob": "652eb661b8e7c0f2e110bebb030dd2c1af10b2bb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 164,
    "line": 158,
    "path": "GRWTSK/Topology/GeneralTopology/Monoid/Variant1b78ab76557182d6df0d65fa0d986ae802fa1185ed656b7aa12628e6da13e2bb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a0d94ae79ea65e09935dced6fad47c319499d5034fe05c9fd9064e2da7c5a9a9",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Monoid/Variant1b78ab76557182d6df0d65fa0d986ae802fa1185ed656b7aa12628e6da13e2bb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bb8575a9-bcc5-51ba-69a5-0938ea947512`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 158–164.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Tendsto.atTop_of_mul_const (C : M) (hf : Tendsto (f · * C) l atTop) : Tendsto f l atTop :=
  tendsto_atTop.2 fun b => (tendsto_atTop.1 hf (b * C)).mono fun _ => le_of_mul_le_mul_right'

@[deprecated (since := "2025-02-13")]
alias tendsto_atTop_of_add_const_right := Tendsto.atTop_of_add_const

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Monoid/Variant1b78ab76557182d6df0d65fa0d986ae802fa1185ed656b7aa12628e6da13e2bb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Monoid/Variant1b78ab76557182d6df0d65fa0d986ae802fa1185ed656b7aa12628e6da13e2bb.lean#L158).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `652eb661b8e7c0f2e110bebb030dd2c1af10b2bb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
