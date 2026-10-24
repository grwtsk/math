# Subadditive

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ed9dd718f008e4593f475aaff455bb0526eba21126855de825ecc498f87bd91c",
  "kind": "def",
  "lexical_name": "Subadditive",
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
  "slug": "subadditive--083ce2efc726a7b809fe128d",
  "source": {
    "blob": "8ec96dfd5daccc6a2849b2c420e40e47a673714b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 39,
    "line": 30,
    "path": "GRWTSK/Topology/GeneralTopology/Subadditive/Variant590db6b8bb0161a720c82f900e4981b4fc82c8a72ef0e2da353ae31dee163477.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:083ce2efc726a7b809fe128d6e900095ee7eb023bd99f5fe5030a5ed92bae462",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Subadditive/Variant590db6b8bb0161a720c82f900e4981b4fc82c8a72ef0e2da353ae31dee163477.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ed9dd718f008e4593f475aaff455bb0526eba21126855de825ecc498f87bd91c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 30–39.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Subadditive (u : ℕ → ℝ) : Prop :=
  ∀ m n, u (m + n) ≤ u m + u n

namespace Subadditive

variable {u : ℕ → ℝ} (h : Subadditive u)

/-- The limit of a bounded-below subadditive sequence. The fact that the sequence indeed tends to
this limit is given in `Subadditive.tendsto_lim` -/
@[nolint unusedArguments, irreducible]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Subadditive/Variant590db6b8bb0161a720c82f900e4981b4fc82c8a72ef0e2da353ae31dee163477.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Subadditive/Variant590db6b8bb0161a720c82f900e4981b4fc82c8a72ef0e2da353ae31dee163477.lean#L30).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8ec96dfd5daccc6a2849b2c420e40e47a673714b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
