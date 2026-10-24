# Algebra.algebraMap_intNorm_fractionRing

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a27462e6-ba5f-b7ee-183f-783b83d0e524",
  "kind": "lemma",
  "lexical_name": "Algebra.algebraMap_intNorm_fractionRing",
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
  "slug": "algebra-algebramap-intnorm-fractionring--ab41d3d789cc707cebaf125c",
  "source": {
    "blob": "d112392a109bfa1ec4da6a15a10b36ddfd3d2433",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 356,
    "line": 344,
    "path": "GRWTSK/Algebra/IntegralRestrict/Variant9349ad4b4047dbf915935b4276eba184244d892586d18c493a9ddd48eebabe32.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ab41d3d789cc707cebaf125cffebc92dde0b34565a45dd3dfc226135891818d8",
  "verification": {
    "reference": "docs/verification/Algebra/IntegralRestrict/Variant9349ad4b4047dbf915935b4276eba184244d892586d18c493a9ddd48eebabe32.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a27462e6-ba5f-b7ee-183f-783b83d0e524`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 344–356.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Algebra.algebraMap_intNorm_fractionRing (x : B) :
    algebraMap A (FractionRing A) (Algebra.intNorm A B x) =
      Algebra.norm (FractionRing A) (algebraMap B (FractionRing B) x) := by
  haveI : IsIntegralClosure B A (FractionRing B) :=
    IsIntegralClosure.of_isIntegrallyClosed _ _ _
  haveI : IsLocalization (algebraMapSubmonoid B A⁰) (FractionRing B) :=
    IsIntegralClosure.isLocalization _ (FractionRing A) _ _
  haveI : FiniteDimensional (FractionRing A) (FractionRing B) :=
    Module.Finite_of_isLocalization A B _ _ A⁰
  exact Algebra.map_intNormAux x

variable (A B)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/IntegralRestrict/Variant9349ad4b4047dbf915935b4276eba184244d892586d18c493a9ddd48eebabe32.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/IntegralRestrict/Variant9349ad4b4047dbf915935b4276eba184244d892586d18c493a9ddd48eebabe32.lean#L344).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d112392a109bfa1ec4da6a15a10b36ddfd3d2433` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
