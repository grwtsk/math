# _root_.GRWTSK.Topology.GeneralTopology.Mem.Variantc3afbd9d51aab4144c73ed6f8b39178afa2e1c58cc9172ef9d4ee5b78386e26e.lpInftySubring

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b5a8462f560185297e594ab1584116ee5f19d631f8110f9d6762e1029338ebda",
  "kind": "def",
  "lexical_name": "_root_.GRWTSK.Topology.GeneralTopology.Mem.Variantc3afbd9d51aab4144c73ed6f8b39178afa2e1c58cc9172ef9d4ee5b78386e26e.lpInftySubring",
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
  "slug": "root-grwtsk-topology-generaltopology-mem-variantc3afbd9d51aab4144c73ed6f--094eee927ce1a78d206a190f",
  "source": {
    "blob": "050c3f648532b059f5db611c7736fbf6fc32faa0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 892,
    "line": 884,
    "path": "GRWTSK/Topology/GeneralTopology/LpSpace/Variant9120a1101c64772b4a631d5e620a0d6bed19fb6f95a894f2d5a88b8694a82bbd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:094eee927ce1a78d206a190ff45ae1cdc90344a9af47301d1c626b8d7b8832c4",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LpSpace/Variant9120a1101c64772b4a631d5e620a0d6bed19fb6f95a894f2d5a88b8694a82bbd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b5a8462f560185297e594ab1584116ee5f19d631f8110f9d6762e1029338ebda`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 884–892.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def _root_.GRWTSK.Topology.GeneralTopology.Mem.Variantc3afbd9d51aab4144c73ed6f8b39178afa2e1c58cc9172ef9d4ee5b78386e26e.lpInftySubring : Subring (PreLp B) :=
  { lp B ∞ with
    carrier := { f | Memℓp f ∞ }
    one_mem' := one_memℓp_infty
    mul_mem' := Memℓp.infty_mul }
#align lp_infty_subring lpInftySubring

variable {B}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LpSpace/Variant9120a1101c64772b4a631d5e620a0d6bed19fb6f95a894f2d5a88b8694a82bbd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LpSpace/Variant9120a1101c64772b4a631d5e620a0d6bed19fb6f95a894f2d5a88b8694a82bbd.lean#L884).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `050c3f648532b059f5db611c7736fbf6fc32faa0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
