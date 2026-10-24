# Algebra.Extension

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c2d8daaa59c53b160fbd5c732dcaca6746a0f0510e2d43ceb09bad3e419475ec",
  "kind": "structure",
  "lexical_name": "Algebra.Extension",
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
  "slug": "algebra-extension--890fc73777952e5b26bfe128",
  "source": {
    "blob": "577fe06140e45bce34c448e91329dc1bc732d032",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 64,
    "line": 43,
    "path": "GRWTSK/Algebra/Basic/Varianteb1d3f51c02c15338d8646bd09989cabb976d422bc65800856fa507b2ff06ce7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:890fc73777952e5b26bfe12875b2522eae8f8ca62f388da6367285fa1ec4bb7b",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Varianteb1d3f51c02c15338d8646bd09989cabb976d422bc65800856fa507b2ff06ce7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c2d8daaa59c53b160fbd5c732dcaca6746a0f0510e2d43ceb09bad3e419475ec`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 43–64.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure Algebra.Extension where
  /-- The underlying algebra of an extension. -/
  Ring : Type w
  [commRing : CommRing Ring]
  [algebra₁ : Algebra R Ring]
  [algebra₂ : Algebra Ring S]
  [isScalarTower : IsScalarTower R Ring S]
  /-- A chosen (set-theoretic) section of an extension. -/
  σ : S → Ring
  algebraMap_σ : ∀ x, algebraMap Ring S (σ x) = x

namespace Algebra.Extension

variable {R S}
variable (P : Extension.{w} R S)

attribute [instance] commRing algebra₁ algebra₂ isScalarTower

attribute [simp] algebraMap_σ

-- We want to make sure `R₀` acts compatibly on `R` and `S` to avoid unsensical instances
@[nolint unusedArguments]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Varianteb1d3f51c02c15338d8646bd09989cabb976d422bc65800856fa507b2ff06ce7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Varianteb1d3f51c02c15338d8646bd09989cabb976d422bc65800856fa507b2ff06ce7.lean#L43).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `577fe06140e45bce34c448e91329dc1bc732d032` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
