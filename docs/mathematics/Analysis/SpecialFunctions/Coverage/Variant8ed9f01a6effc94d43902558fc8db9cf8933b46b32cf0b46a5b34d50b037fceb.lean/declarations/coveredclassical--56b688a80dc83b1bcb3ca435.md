# coveredClassical

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ad0e6d595d00901155bb49ac45169667f072325581ddb5293bc4ba82c45ad96f",
  "kind": "def",
  "lexical_name": "coveredClassical",
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
  "slug": "coveredclassical--56b688a80dc83b1bcb3ca435",
  "source": {
    "blob": "a61b6ead0b66b2d0b6cfc6a42a2e7a5b55504c41",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 158,
    "line": 153,
    "path": "GRWTSK/Analysis/SpecialFunctions/Coverage/Variant8ed9f01a6effc94d43902558fc8db9cf8933b46b32cf0b46a5b34d50b037fceb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:56b688a80dc83b1bcb3ca43579ed36d49be5d9ac3d66ef4983c7602290e1aa8c",
  "verification": {
    "reference": "docs/verification/Analysis/SpecialFunctions/Coverage/Variant8ed9f01a6effc94d43902558fc8db9cf8933b46b32cf0b46a5b34d50b037fceb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ad0e6d595d00901155bb49ac45169667f072325581ddb5293bc4ba82c45ad96f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 153–158.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def coveredClassical (Γ : Gamma) (f : ClassicalSmoothAnalyticFunction)
    (h : LogicalFoundation.classical ≤ Γ.logicalFoundation) :
    CoveredByExtendedEMLAt Γ (DeclaredSurfaceObject.classical f) :=
  CoveredByExtendedEMLAt.intro (classicalWitness f)
    (classicalWitness f).witnessKind (RepresentsDeclaredAt.classical Γ f) h

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/SpecialFunctions/Coverage/Variant8ed9f01a6effc94d43902558fc8db9cf8933b46b32cf0b46a5b34d50b037fceb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SpecialFunctions/Coverage/Variant8ed9f01a6effc94d43902558fc8db9cf8933b46b32cf0b46a5b34d50b037fceb.lean#L153).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a61b6ead0b66b2d0b6cfc6a42a2e7a5b55504c41` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
