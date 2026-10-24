# restrictScalars

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0d7d656a443e7ee6544f55306cd6fab43df07a836eca5f0ac7e6f3bcbde93410",
  "kind": "def",
  "lexical_name": "restrictScalars",
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
  "slug": "restrictscalars--2976139cb2b59ebe4dbe73b1",
  "source": {
    "blob": "235e57ba7104407b6572190a6337be69486f0b3d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 261,
    "line": 253,
    "path": "GRWTSK/Algebra/GroupTheory/AlgHom/Variant46e126ba0db40cec991bedead1e6e534837c93c4211a412245c3dc754ba42c4e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2976139cb2b59ebe4dbe73b187bd611f9ec063021347a98f0d2450e590155477",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/AlgHom/Variant46e126ba0db40cec991bedead1e6e534837c93c4211a412245c3dc754ba42c4e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0d7d656a443e7ee6544f55306cd6fab43df07a836eca5f0ac7e6f3bcbde93410`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 253–261.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[coe, simps!] def restrictScalars (R₀ : Type*) [CommSemiring R₀] [Algebra R₀ R]
    [Algebra R₀ A] [Algebra R₀ B] [IsScalarTower R₀ R A] [IsScalarTower R₀ R B]
    (f : 𝒜 →ₐᵍ[R] ℬ) : (𝒜 · |>.restrictScalars R₀) →ₐᵍ[R₀] (ℬ · |>.restrictScalars R₀) :=
  { f.toAlgHom.restrictScalars R₀, f with }

variable (R₀ : Type*) [CommSemiring R₀] [Algebra R₀ R]
    [Algebra R₀ A] [Algebra R₀ B] [IsScalarTower R₀ R A] [IsScalarTower R₀ R B]
    (f : 𝒜 →ₐᵍ[R] ℬ)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/AlgHom/Variant46e126ba0db40cec991bedead1e6e534837c93c4211a412245c3dc754ba42c4e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/AlgHom/Variant46e126ba0db40cec991bedead1e6e534837c93c4211a412245c3dc754ba42c4e.lean#L253).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `235e57ba7104407b6572190a6337be69486f0b3d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
