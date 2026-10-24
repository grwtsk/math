# instModuleSelf

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d051baf430a29bc09878fb4c5895f790000905025cdf163a6cd0a5b7e8f4ad59",
  "kind": "instance",
  "lexical_name": "instModuleSelf",
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
  "slug": "instmoduleself--eb403f33764e312b676cc872",
  "source": {
    "blob": "8ec095d0a2a8dfdce645f82a7424a3e204ebc8de",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 72,
    "line": 60,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant9bdb681e4324dd8a33cd46747d38a62c17fc730dc3c107757a6a38bd6de4f185.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:eb403f33764e312b676cc8728da817999eec0eae1a6bb6d4454496abfe099ef4",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant9bdb681e4324dd8a33cd46747d38a62c17fc730dc3c107757a6a38bd6de4f185.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d051baf430a29bc09878fb4c5895f790000905025cdf163a6cd0a5b7e8f4ad59`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 60–72.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance instModuleSelf : Module ℂ ℂ := delta% inferInstance

end Complex

noncomputable section

namespace Complex
variable {z : ℂ}

open Topology Filter

open scoped ComplexConjugate

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant9bdb681e4324dd8a33cd46747d38a62c17fc730dc3c107757a6a38bd6de4f185.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant9bdb681e4324dd8a33cd46747d38a62c17fc730dc3c107757a6a38bd6de4f185.lean#L60).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8ec095d0a2a8dfdce645f82a7424a3e204ebc8de` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
