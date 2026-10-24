# Trivialization.continuousLinearMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d6013d4d23eea9f3ac546c634775fbe1ef34774fee855edb0d00f8e54a648471",
  "kind": "def",
  "lexical_name": "Trivialization.continuousLinearMap",
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
  "slug": "trivialization-continuouslinearmap--d179c94a3d9da2423f20a1d5",
  "source": {
    "blob": "3fc10f547d6e4af0e18eb15af84848eb6d1c92b7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 286,
    "line": 282,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/Hom/Variantd7aa85b1e4074980c5f5c7c027100ca05803cb6f6865968fc761cf644ec503fc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d179c94a3d9da2423f20a1d5ea8b8131db0079d578bc89f406d6946a883be040",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/Hom/Variantd7aa85b1e4074980c5f5c7c027100ca05803cb6f6865968fc761cf644ec503fc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d6013d4d23eea9f3ac546c634775fbe1ef34774fee855edb0d00f8e54a648471`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 282–286.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Trivialization.continuousLinearMap :
    Trivialization (F₁ →SL[σ] F₂) (π (F₁ →SL[σ] F₂) (Bundle.ContinuousLinearMap σ E₁ E₂)) :=
  VectorPrebundle.trivializationOfMemPretrivializationAtlas _ ⟨e₁, e₂, he₁, he₂, rfl⟩
#align trivialization.continuous_linear_map Trivialization.continuousLinearMap

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/Hom/Variantd7aa85b1e4074980c5f5c7c027100ca05803cb6f6865968fc761cf644ec503fc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/Hom/Variantd7aa85b1e4074980c5f5c7c027100ca05803cb6f6865968fc761cf644ec503fc.lean#L282).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3fc10f547d6e4af0e18eb15af84848eb6d1c92b7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
