# LieSubmodule.IsUcsLimit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:62196f6c3bca8bc73a4e934c898c82390eddc7dd3a8f1f27cc78d31f2101e36a",
  "kind": "def",
  "lexical_name": "LieSubmodule.IsUcsLimit",
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
  "slug": "liesubmodule-isucslimit--89f86219c2b7d32be89c8f1a",
  "source": {
    "blob": "f2cb41ca55dee11313241325ad5cf0762af75212",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 53,
    "line": 45,
    "path": "GRWTSK/Algebra/UniversalAlgebra/CartanSubalgebra/Variantd1e271f2d121d352fbb6c18c42320ba3b7f9af6f560c7d37904a81a3798dc58c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:89f86219c2b7d32be89c8f1a5fb14e70e045a6ca5adb34cff817dd8ac2868676",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/CartanSubalgebra/Variantd1e271f2d121d352fbb6c18c42320ba3b7f9af6f560c7d37904a81a3798dc58c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:62196f6c3bca8bc73a4e934c898c82390eddc7dd3a8f1f27cc78d31f2101e36a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 45–53.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def LieSubmodule.IsUcsLimit {M : Type*} [AddCommGroup M] [Module R M] [LieRingModule L M]
    [LieModule R L M] (N : LieSubmodule R L M) : Prop :=
  ∃ k, ∀ l, k ≤ l → (⊥ : LieSubmodule R L M).ucs l = N

namespace LieSubalgebra

/-- A Cartan subalgebra is a nilpotent, self-normalizing subalgebra.

A _splitting_ Cartan subalgebra can be defined by mixing in `LieModule.IsTriangularizable R H L`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/CartanSubalgebra/Variantd1e271f2d121d352fbb6c18c42320ba3b7f9af6f560c7d37904a81a3798dc58c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/CartanSubalgebra/Variantd1e271f2d121d352fbb6c18c42320ba3b7f9af6f560c7d37904a81a3798dc58c.lean#L45).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f2cb41ca55dee11313241325ad5cf0762af75212` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
