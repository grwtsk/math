# mulLeftMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b56846ba6c092a890d286d1672dcbf43891749e99ef3ade2fff4717dd56df568",
  "kind": "def",
  "lexical_name": "mulLeftMap",
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
  "slug": "mulleftmap--144ed44cafe431a15c935885",
  "source": {
    "blob": "e2ddcf9583cf21555ca01bd648488cdb56e37967",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 325,
    "line": 323,
    "path": "GRWTSK/Algebra/LinearAlgebra/LSum/Variant2f288fad9adcccce270b891374eb7a0b50f2194e79fd488ef27a0c08262a2883.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:144ed44cafe431a15c9358850c13b75e0c422b4ac7b5f9b0176220038a7401d9",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/LSum/Variant2f288fad9adcccce270b891374eb7a0b50f2194e79fd488ef27a0c08262a2883.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b56846ba6c092a890d286d1672dcbf43891749e99ef3ade2fff4717dd56df568`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 323–325.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mulLeftMap {M : Submodule R S} (N : Submodule R S) {ι : Type*} (m : ι → M) :
    (ι →₀ N) →ₗ[R] S := Finsupp.lsum R fun i ↦ (m i).1 • N.subtype

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/LSum/Variant2f288fad9adcccce270b891374eb7a0b50f2194e79fd488ef27a0c08262a2883.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/LSum/Variant2f288fad9adcccce270b891374eb7a0b50f2194e79fd488ef27a0c08262a2883.lean#L323).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e2ddcf9583cf21555ca01bd648488cdb56e37967` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
