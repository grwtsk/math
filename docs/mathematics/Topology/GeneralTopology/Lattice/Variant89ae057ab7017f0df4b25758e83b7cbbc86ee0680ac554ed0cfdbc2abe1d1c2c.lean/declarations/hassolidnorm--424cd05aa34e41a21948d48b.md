# HasSolidNorm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6699967a8301cd8c855c58ad592e829de1e9e1c95e2e5062de26599d57d28a81",
  "kind": "class",
  "lexical_name": "HasSolidNorm",
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
  "slug": "hassolidnorm--424cd05aa34e41a21948d48b",
  "source": {
    "blob": "b2fbd0433939d2e0793acddfdfe07902d870eaa6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 61,
    "line": 56,
    "path": "GRWTSK/Topology/GeneralTopology/Lattice/Variant89ae057ab7017f0df4b25758e83b7cbbc86ee0680ac554ed0cfdbc2abe1d1c2c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:424cd05aa34e41a21948d48bece5b96ba2879a5f85cc38f7f942924238c567b3",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Lattice/Variant89ae057ab7017f0df4b25758e83b7cbbc86ee0680ac554ed0cfdbc2abe1d1c2c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6699967a8301cd8c855c58ad592e829de1e9e1c95e2e5062de26599d57d28a81`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 56–61.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class HasSolidNorm (α : Type*) [NormedAddCommGroup α] [Lattice α] : Prop where
  solid : ∀ ⦃x y : α⦄, |x| ≤ |y| → ‖x‖ ≤ ‖y‖
#align has_solid_norm HasSolidNorm

variable {α : Type*} [NormedAddCommGroup α] [Lattice α] [HasSolidNorm α]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Lattice/Variant89ae057ab7017f0df4b25758e83b7cbbc86ee0680ac554ed0cfdbc2abe1d1c2c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Lattice/Variant89ae057ab7017f0df4b25758e83b7cbbc86ee0680ac554ed0cfdbc2abe1d1c2c.lean#L56).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b2fbd0433939d2e0793acddfdfe07902d870eaa6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
