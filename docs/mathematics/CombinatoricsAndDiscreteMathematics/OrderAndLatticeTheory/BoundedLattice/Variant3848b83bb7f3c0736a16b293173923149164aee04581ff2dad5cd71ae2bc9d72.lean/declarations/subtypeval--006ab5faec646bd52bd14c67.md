# subtypeVal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:935c76379ba5a85265ba85feb6fc8fe6ccc08076d95f271ef8a2ee738e2fe89f",
  "kind": "def",
  "lexical_name": "subtypeVal",
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
  "slug": "subtypeval--006ab5faec646bd52bd14c67",
  "source": {
    "blob": "53e35c7d1c1693b9a8d51b21ae1f625feb3f2d11",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 500,
    "line": 491,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BoundedLattice/Variant3848b83bb7f3c0736a16b293173923149164aee04581ff2dad5cd71ae2bc9d72.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:006ab5faec646bd52bd14c67dd4f9cc763a3d62912818121477fb55159d3edbf",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BoundedLattice/Variant3848b83bb7f3c0736a16b293173923149164aee04581ff2dad5cd71ae2bc9d72.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:935c76379ba5a85265ba85feb6fc8fe6ccc08076d95f271ef8a2ee738e2fe89f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 491–500.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def subtypeVal {P : β → Prop}
    (Ptop : P ⊤) (Pinf : ∀ ⦃x y : β⦄, P x → P y → P (x ⊓ y)) :
    letI := Subtype.orderTop Ptop
    letI := Subtype.semilatticeInf Pinf
    InfTopHom {x : β // P x} β :=
  letI := Subtype.orderTop Ptop
  letI := Subtype.semilatticeInf Pinf
  .mk (InfHom.subtypeVal Pinf) (by simp [Subtype.coe_top Ptop])

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BoundedLattice/Variant3848b83bb7f3c0736a16b293173923149164aee04581ff2dad5cd71ae2bc9d72.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BoundedLattice/Variant3848b83bb7f3c0736a16b293173923149164aee04581ff2dad5cd71ae2bc9d72.lean#L491).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `53e35c7d1c1693b9a8d51b21ae1f625feb3f2d11` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
