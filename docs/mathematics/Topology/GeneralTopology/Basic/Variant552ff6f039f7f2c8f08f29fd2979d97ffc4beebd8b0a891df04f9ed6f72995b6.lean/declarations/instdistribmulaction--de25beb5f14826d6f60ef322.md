# instDistribMulAction'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0b779c5ef845d3ed41d4cbea7bc10b3cafe80ae64081a8cc8fe3f460edc8c380",
  "kind": "instance",
  "lexical_name": "instDistribMulAction'",
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
  "slug": "instdistribmulaction--de25beb5f14826d6f60ef322",
  "source": {
    "blob": "115de22680d360ac3c5da8c3ef221ae7a9d326a7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 658,
    "line": 651,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant552ff6f039f7f2c8f08f29fd2979d97ffc4beebd8b0a891df04f9ed6f72995b6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:de25beb5f14826d6f60ef322cd07b79d6b4b7207eab41be63cef877c55943dd2",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant552ff6f039f7f2c8f08f29fd2979d97ffc4beebd8b0a891df04f9ed6f72995b6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0b779c5ef845d3ed41d4cbea7bc10b3cafe80ae64081a8cc8fe3f460edc8c380`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 651–658.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance instDistribMulAction' [Monoid M] [AddMonoid N] [DistribMulAction M N] :
    DistribMulAction (Germ l M) (Germ l N) where
  smul_add c f g :=
    inductionOn₃ c f g fun c f g => by
      norm_cast
      simp [smul_add]
  smul_zero c := inductionOn c fun c => by simp only [← coe_zero, ← coe_smul', smul_zero]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant552ff6f039f7f2c8f08f29fd2979d97ffc4beebd8b0a891df04f9ed6f72995b6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant552ff6f039f7f2c8f08f29fd2979d97ffc4beebd8b0a891df04f9ed6f72995b6.lean#L651).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `115de22680d360ac3c5da8c3ef221ae7a9d326a7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
