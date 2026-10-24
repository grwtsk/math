# isUnit_of_isIntegral_of_nonZeroDivisor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9fd30088-ec69-88ec-fc27-aacf7a09f3ac",
  "kind": "theorem",
  "lexical_name": "isUnit_of_isIntegral_of_nonZeroDivisor",
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
  "slug": "isunit-of-isintegral-of-nonzerodivisor--8dae6eafeca120cab4e6e898",
  "source": {
    "blob": "6de69cf046d690f871eb593798d59ee98827a67f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 43,
    "line": 33,
    "path": "GRWTSK/Algebra/Algebra/Variantb1bfd3996d2410f1f74494d05047c5e507d23d97c4d89fc71346bb6a32d3b5d9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8dae6eafeca120cab4e6e8988c72bfd24abc21c653cde5a9d82c3995f604d50e",
  "verification": {
    "reference": "docs/verification/Algebra/Algebra/Variantb1bfd3996d2410f1f74494d05047c5e507d23d97c4d89fc71346bb6a32d3b5d9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9fd30088-ec69-88ec-fc27-aacf7a09f3ac`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 33–43.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isUnit_of_isIntegral_of_nonZeroDivisor {a : A}
    (hi : IsIntegral R a) (ha : a ∈ A⁰) : IsUnit a :=
  let B := Algebra.adjoin R {a}
  let b : B := ⟨a, Algebra.self_mem_adjoin_singleton R a⟩
  haveI : Module.Finite R B := Algebra.finite_adjoin_simple_of_isIntegral hi
  haveI : IsArtinianRing B := isArtinian_of_tower R inferInstance
  have hinj : Function.Injective (B.subtype) := Subtype.val_injective
  have hb : b ∈ B⁰ := comap_nonZeroDivisors_le_of_injective hinj ha
  (isUnit_of_mem_nonZeroDivisors hb).map B.subtype

/-- Integral element of an algebra over artinian ring `R` is either a zero divisor or a unit. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Algebra/Variantb1bfd3996d2410f1f74494d05047c5e507d23d97c4d89fc71346bb6a32d3b5d9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Algebra/Variantb1bfd3996d2410f1f74494d05047c5e507d23d97c4d89fc71346bb6a32d3b5d9.lean#L33).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6de69cf046d690f871eb593798d59ee98827a67f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
