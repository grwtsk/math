# teichmullerFun

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:11ae289cbdfd9337a1f27ac6c0bcaa5cc973fed4ce19f9607da0b0a7a930a390",
  "kind": "def",
  "lexical_name": "teichmullerFun",
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
  "slug": "teichmullerfun--ff0fdaff1d0c8daebe5ad97b",
  "source": {
    "blob": "d90c9006aefbaf62e0529b08d219a4d7be20478a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 57,
    "line": 40,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Teichmuller/Variantc75ea6d3f3f4c6bd36f4af88208435a779394871b939edbb2368e34de7edc53b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ff0fdaff1d0c8daebe5ad97b979c645a7da210f7e25553f6cb7d82846fb9b6e9",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Teichmuller/Variantc75ea6d3f3f4c6bd36f4af88208435a779394871b939edbb2368e34de7edc53b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:11ae289cbdfd9337a1f27ac6c0bcaa5cc973fed4ce19f9607da0b0a7a930a390`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 40–57.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def teichmullerFun (r : R) : 𝕎 R :=
  ⟨fun n => if n = 0 then r else 0⟩

/-!
## `teichmuller` is a monoid homomorphism

On ghost components, it is clear that `teichmullerFun` is a monoid homomorphism.
But in general the ghost map is not injective.
We follow the same strategy as for proving that the ring operations on `𝕎 R`
satisfy the ring axioms.

1. We first prove it for rings `R` where `p` is invertible,
   because then the ghost map is in fact an isomorphism.
2. After that, we derive the result for `MvPolynomial R ℤ`,
3. and from that we can prove the result for arbitrary `R`.
-/


```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Teichmuller/Variantc75ea6d3f3f4c6bd36f4af88208435a779394871b939edbb2368e34de7edc53b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Teichmuller/Variantc75ea6d3f3f4c6bd36f4af88208435a779394871b939edbb2368e34de7edc53b.lean#L40).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d90c9006aefbaf62e0529b08d219a4d7be20478a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
