# mulRightMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:57973cbd47c912a96853ea1bd495c15fb35b9ed2937c243950be3139944068fc",
  "kind": "def",
  "lexical_name": "mulRightMap",
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
  "slug": "mulrightmap--8d7d898246f4b6c38a549c19",
  "source": {
    "blob": "beb82444d8a8496bb4a538a7415ba09b1f7037e2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 340,
    "line": 338,
    "path": "GRWTSK/Algebra/LinearAlgebra/LSum/Variant0fd720dc967646a1bcf3b5a3c3ec0bb2fa46d5d59262606111aafe7aa70ee174.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8d7d898246f4b6c38a549c197d2fd464191ce70978b1150df26b8d0f60b67567",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/LSum/Variant0fd720dc967646a1bcf3b5a3c3ec0bb2fa46d5d59262606111aafe7aa70ee174.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:57973cbd47c912a96853ea1bd495c15fb35b9ed2937c243950be3139944068fc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 338–340.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mulRightMap (M : Submodule R S) {N : Submodule R S} {ι : Type*} (n : ι → N) :
    (ι →₀ M) →ₗ[R] S := Finsupp.lsum R fun i ↦ MulOpposite.op (n i).1 • M.subtype

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/LSum/Variant0fd720dc967646a1bcf3b5a3c3ec0bb2fa46d5d59262606111aafe7aa70ee174.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/LSum/Variant0fd720dc967646a1bcf3b5a3c3ec0bb2fa46d5d59262606111aafe7aa70ee174.lean#L338).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `beb82444d8a8496bb4a538a7415ba09b1f7037e2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
