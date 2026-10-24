# SkewPolynomial

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0071ebfa86054138f62af1129a46b854ac3c29ea6527251660705e78809db5fc",
  "kind": "abbrev",
  "lexical_name": "SkewPolynomial",
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
  "slug": "skewpolynomial--7510a33b547a2daa7a5d4a79",
  "source": {
    "blob": "60240011f2bc8dddc179bdd51a0df4c1cba8ffe7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 104,
    "line": 94,
    "path": "GRWTSK/Algebra/Basic/Variant4c614f4ad0750fe2817f5c7e19829567062524932ec8422dc6b2cafcf295a922.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7510a33b547a2daa7a5d4a79e3dd4d4c40f02963d3e4fb3c85c08de5fb6b4f58",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variant4c614f4ad0750fe2817f5c7e19829567062524932ec8422dc6b2cafcf295a922.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0071ebfa86054138f62af1129a46b854ac3c29ea6527251660705e78809db5fc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 94–104.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
abbrev SkewPolynomial (R : Type*) [AddCommMonoid R] := SkewMonoidAlgebra R (Multiplicative ℕ)

namespace SkewPolynomial

variable {R : Type*} {m n : ℕ}

section Semiring

variable [Semiring R] {p q : SkewPolynomial R}


```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variant4c614f4ad0750fe2817f5c7e19829567062524932ec8422dc6b2cafcf295a922.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variant4c614f4ad0750fe2817f5c7e19829567062524932ec8422dc6b2cafcf295a922.lean#L94).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `60240011f2bc8dddc179bdd51a0df4c1cba8ffe7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
