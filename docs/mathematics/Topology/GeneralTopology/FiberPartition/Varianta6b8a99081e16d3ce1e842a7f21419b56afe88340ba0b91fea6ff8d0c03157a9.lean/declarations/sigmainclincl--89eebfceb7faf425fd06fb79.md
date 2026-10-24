# sigmaInclIncl

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6f3ce49d86feab36125d2d90b7a4aa65e02da06c37b6eb9fbe3fc224526224ed",
  "kind": "def",
  "lexical_name": "sigmaInclIncl",
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
  "slug": "sigmainclincl--89eebfceb7faf425fd06fb79",
  "source": {
    "blob": "374de18e53c2691012207a05bcc1011d94d8e409",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 75,
    "line": 65,
    "path": "GRWTSK/Topology/GeneralTopology/FiberPartition/Varianta6b8a99081e16d3ce1e842a7f21419b56afe88340ba0b91fea6ff8d0c03157a9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:89eebfceb7faf425fd06fb79c76b2020186a403afe9c65f09acca434bd6725fb",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/FiberPartition/Varianta6b8a99081e16d3ce1e842a7f21419b56afe88340ba0b91fea6ff8d0c03157a9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6f3ce49d86feab36125d2d90b7a4aa65e02da06c37b6eb9fbe3fc224526224ed`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 65–75.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def sigmaInclIncl {X : Type*} (g : Y → X) (a : Fiber (g ∘ f))
    (b : Fiber (f ∘ (sigmaIncl (g ∘ f) a))) :
    C(b.val, (Fiber.mk f (b.preimage).val).val) where
  toFun x := ⟨x.val.val, by
    have := x.prop
    simp only [sigmaIncl, ContinuousMap.coe_mk, Fiber.mem_iff_eq_image, comp_apply] at this
    rw [Fiber.mem_iff_eq_image, Fiber.mk_image, this, ← Fiber.map_preimage_eq_image]
    simp [sigmaIncl]⟩

variable (l : LocallyConstant S Y) [CompactSpace S]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/FiberPartition/Varianta6b8a99081e16d3ce1e842a7f21419b56afe88340ba0b91fea6ff8d0c03157a9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/FiberPartition/Varianta6b8a99081e16d3ce1e842a7f21419b56afe88340ba0b91fea6ff8d0c03157a9.lean#L65).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `374de18e53c2691012207a05bcc1011d94d8e409` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
