# prodMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4de7a61f153620a80c7c00d97d6a9ce846bc4143f68a50079cc0986df178d7b0",
  "kind": "def",
  "lexical_name": "prodMap",
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
  "slug": "prodmap--81bb5c3b81a904d8c84a4c19",
  "source": {
    "blob": "4962f4f19d04db13dd05aca3a9e14384d475a9b0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 196,
    "line": 192,
    "path": "GRWTSK/Topology/PiProd/Variant52b85bb96b06d7cfcf9ab0cee57fef93db1a62613485a15bce7c3d2cc1a8a710.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:81bb5c3b81a904d8c84a4c1998e73c07ff48624ad2f2550af02aaedb051d299a",
  "verification": {
    "reference": "docs/verification/Topology/PiProd/Variant52b85bb96b06d7cfcf9ab0cee57fef93db1a62613485a15bce7c3d2cc1a8a710.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4de7a61f153620a80c7c00d97d6a9ce846bc4143f68a50079cc0986df178d7b0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 192–196.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def prodMap (f₁ : M₁ →L[R] M₂) (f₂ : M₃ →L[R] M₄) :
    M₁ × M₃ →L[R] M₂ × M₄ :=
  (f₁.comp (fst R M₁ M₃)).prod (f₂.comp (snd R M₁ M₃))

@[simp, norm_cast]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Topology/PiProd/Variant52b85bb96b06d7cfcf9ab0cee57fef93db1a62613485a15bce7c3d2cc1a8a710.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/PiProd/Variant52b85bb96b06d7cfcf9ab0cee57fef93db1a62613485a15bce7c3d2cc1a8a710.lean#L192).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4962f4f19d04db13dd05aca3a9e14384d475a9b0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
