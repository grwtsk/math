# piLIE

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3d6deb2edf9bc05f5dbd001668ae6cb2bd8598bb61dbb07f1b0ff21d4c6a40f7",
  "kind": "def",
  "lexical_name": "piLIE",
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
  "slug": "pilie--7babc73ab1ed9aed531515d6",
  "source": {
    "blob": "b21619ae8a5a046aa4cc639ee8f498b486e57114",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 341,
    "line": 330,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant2f7895800774c898bd00e4ce38be6a03387b3d91722f695b9633c10f71d23987.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7babc73ab1ed9aed531515d6df59855cae22dec2629e978a3b47d913012b5d76",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant2f7895800774c898bd00e4ce38be6a03387b3d91722f695b9633c10f71d23987.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3d6deb2edf9bc05f5dbd001668ae6cb2bd8598bb61dbb07f1b0ff21d4c6a40f7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 330–341.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def piLIE {ι' : Type*} [Fintype ι'] {F : ι' → Type*} [∀ i', SeminormedAddCommGroup (F i')]
    [∀ i', NormedSpace 𝕜 (F i')] :
    (∀ i', E [⋀^ι]→L[𝕜] F i') ≃ₗᵢ[𝕜] (E [⋀^ι]→L[𝕜] (∀ i, F i)) where
  toLinearEquiv := piLinearEquiv
  norm_map' := opNorm_pi

section restrictScalars

variable {𝕜' : Type*} [NontriviallyNormedField 𝕜'] [NormedAlgebra 𝕜' 𝕜]
variable [NormedSpace 𝕜' F] [IsScalarTower 𝕜' 𝕜 F]
variable [NormedSpace 𝕜' E] [IsScalarTower 𝕜' 𝕜 E]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant2f7895800774c898bd00e4ce38be6a03387b3d91722f695b9633c10f71d23987.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant2f7895800774c898bd00e4ce38be6a03387b3d91722f695b9633c10f71d23987.lean#L330).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b21619ae8a5a046aa4cc639ee8f498b486e57114` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
