# inftyValuation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7695b916d4a33eaaf0d59409e64952800cebdfc99aa76012e77bac3e20cca4ae",
  "kind": "def",
  "lexical_name": "inftyValuation",
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
  "slug": "inftyvaluation--d65b86f8cb36d1ac14e8ccc7",
  "source": {
    "blob": "58592676acc0596675f52af5a51b17a2916304d1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 87,
    "line": 81,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Valuation/Variant40555bfe3ac5ec2510aa04f47980923dfe24a33882c79897f4009e3c97101d55.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d65b86f8cb36d1ac14e8ccc77ddfa719f0699d272f4eb06c2e8b217858fdc348",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Valuation/Variant40555bfe3ac5ec2510aa04f47980923dfe24a33882c79897f4009e3c97101d55.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7695b916d4a33eaaf0d59409e64952800cebdfc99aa76012e77bac3e20cca4ae`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 81–87.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def inftyValuation : Valuation (RatFunc F) ℤᵐ⁰ where
  toFun := inftyValuationDef F
  map_zero' := InftyValuation.map_zero' F
  map_one' := InftyValuation.map_one' F
  map_mul' := InftyValuation.map_mul' F
  map_add_le_max' := InftyValuation.map_add_le_max' F

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Valuation/Variant40555bfe3ac5ec2510aa04f47980923dfe24a33882c79897f4009e3c97101d55.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Valuation/Variant40555bfe3ac5ec2510aa04f47980923dfe24a33882c79897f4009e3c97101d55.lean#L81).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `58592676acc0596675f52af5a51b17a2916304d1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
