# quasispectrum.preimage_algebraMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2b9b16f3-f732-09f1-7f64-bed4971a9e75",
  "kind": "theorem",
  "lexical_name": "quasispectrum.preimage_algebraMap",
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
  "slug": "quasispectrum-preimage-algebramap--70c355c2383e03fbe3c87f72",
  "source": {
    "blob": "624ac7e8f17ee31626f9387fc9c2018f38c4c71b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 509,
    "line": 497,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Quasispectrum/Variant61662c1397414f001644dd55f590e63278ad0292bafd7a429ca9d4a4b010a72f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:70c355c2383e03fbe3c87f720d8dc3b2ca1979dd2eb9753696a4e723536ff6ea",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Quasispectrum/Variant61662c1397414f001644dd55f590e63278ad0292bafd7a429ca9d4a4b010a72f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2b9b16f3-f732-09f1-7f64-bed4971a9e75`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 497–509.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem quasispectrum.preimage_algebraMap (S : Type*) {R A : Type*} [Semifield R] [Field S]
    [NonUnitalRing A] [Algebra R S] [Module S A] [IsScalarTower S A A]
    [SMulCommClass S A A] [Module R A] [IsScalarTower R S A] {a : A} :
    algebraMap R S ⁻¹' quasispectrum S a = quasispectrum R a :=
  Set.ext fun _ => quasispectrum.algebraMap_mem_iff _

namespace QuasispectrumRestricts

section NonUnital

variable {R S A : Type*} [Semifield R] [Field S] [NonUnitalRing A] [Module R A] [Module S A]
variable [Algebra R S] {a : A} {f : S → R}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Quasispectrum/Variant61662c1397414f001644dd55f590e63278ad0292bafd7a429ca9d4a4b010a72f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Quasispectrum/Variant61662c1397414f001644dd55f590e63278ad0292bafd7a429ca9d4a4b010a72f.lean#L497).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `624ac7e8f17ee31626f9387fc9c2018f38c4c71b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
