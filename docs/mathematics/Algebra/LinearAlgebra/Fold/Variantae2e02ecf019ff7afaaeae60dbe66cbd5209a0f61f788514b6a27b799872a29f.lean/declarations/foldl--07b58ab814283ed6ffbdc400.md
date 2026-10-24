# foldl

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:34571bb9d8ed23873cadbc56ee5f4ee9c671f31ae3bf3a65d895eaa69dadf1bf",
  "kind": "def",
  "lexical_name": "foldl",
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
  "slug": "foldl--07b58ab814283ed6ffbdc400",
  "source": {
    "blob": "826a5e5393725f1b9f5df8df0262ad1701ae47db",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 88,
    "line": 84,
    "path": "GRWTSK/Algebra/LinearAlgebra/Fold/Variantae2e02ecf019ff7afaaeae60dbe66cbd5209a0f61f788514b6a27b799872a29f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:07b58ab814283ed6ffbdc4003708ecc938cd71e4829f882aafc414da2abbd9bb",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Fold/Variantae2e02ecf019ff7afaaeae60dbe66cbd5209a0f61f788514b6a27b799872a29f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:34571bb9d8ed23873cadbc56ee5f4ee9c671f31ae3bf3a65d895eaa69dadf1bf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 84–88.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def foldl (f : M →ₗ[R] N →ₗ[R] N) (hf : ∀ m x, f m (f m x) = Q m • x) :
    N →ₗ[R] CliffordAlgebra Q →ₗ[R] N :=
  LinearMap.compl₂ (foldr Q f hf) reverse

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Fold/Variantae2e02ecf019ff7afaaeae60dbe66cbd5209a0f61f788514b6a27b799872a29f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Fold/Variantae2e02ecf019ff7afaaeae60dbe66cbd5209a0f61f788514b6a27b799872a29f.lean#L84).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `826a5e5393725f1b9f5df8df0262ad1701ae47db` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
