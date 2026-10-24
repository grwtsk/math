# instCeilDiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4d3266aaa110ceec4f87d38386c9b4783f901fb3e3f80f6758fda06ebc659fd6",
  "kind": "instance",
  "lexical_name": "instCeilDiv",
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
  "slug": "instceildiv--1307cc3118a773888e8cf8a4",
  "source": {
    "blob": "8419d29eb84e4233469de889e5983f6b6040c6c1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 261,
    "line": 255,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Div/Variantfd4289183e52fdb360bb30243272ae11479d1b23e8bcc53c314e7dba26ed0dd5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1307cc3118a773888e8cf8a4aee9c3bfced1ca5bf7272aa033b8d6e98eecaf54",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Div/Variantfd4289183e52fdb360bb30243272ae11479d1b23e8bcc53c314e7dba26ed0dd5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4d3266aaa110ceec4f87d38386c9b4783f901fb3e3f80f6758fda06ebc659fd6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 255–261.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable instance instCeilDiv : CeilDiv α (ι →₀ β) where
  ceilDiv f a := f.mapRange (· ⌈/⌉ a) <| zero_ceilDiv _
  ceilDiv_gc _a ha f _g := forall_congr' fun i ↦ by
    simpa only [coe_smul, Pi.smul_apply, mapRange_apply] using gc_smul_ceilDiv ha (f i) _
  ceilDiv_nonpos a ha f := by ext i; exact ceilDiv_of_nonpos ha _
  zero_ceilDiv a := by ext; exact zero_ceilDiv _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Div/Variantfd4289183e52fdb360bb30243272ae11479d1b23e8bcc53c314e7dba26ed0dd5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Div/Variantfd4289183e52fdb360bb30243272ae11479d1b23e8bcc53c314e7dba26ed0dd5.lean#L255).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8419d29eb84e4233469de889e5983f6b6040c6c1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
