# _root_.IsIntegralClosure.of_isIntegrallyClosedIn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "88fb3e802a23c22bf0870eb03f89077f2de0f04c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 181,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/87/87d046a473a88405df6e5c23b7c67013503337831073e6c237d4f2693c415433.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6eab2093-e4c8-34e8-8029-adf3b73bfc79",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:111becee-731e-6319-4093-79d5aa2c8609",
  "kind": "lemma",
  "lexical_name": "_root_.IsIntegralClosure.of_isIntegrallyClosedIn",
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
  "slug": "root-isintegralclosure-of-isintegrallyclosedin--630c229b62e9dbd577d95854",
  "source": {
    "blob": "88fb3e802a23c22bf0870eb03f89077f2de0f04c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 198,
    "line": 181,
    "path": "GRWTSK/Algebra/IntegrallyClosed/Variant87d046a473a88405df6e5c23b7c67013503337831073e6c237d4f2693c415433.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:630c229b62e9dbd577d958543bd7faec1d5154e4d9829eb7994893f2a6fcfb4c",
  "verification": {
    "reference": "docs/verification/Algebra/IntegrallyClosed/Variant87d046a473a88405df6e5c23b7c67013503337831073e6c237d4f2693c415433.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:111becee-731e-6319-4093-79d5aa2c8609`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 181–198.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma _root_.IsIntegralClosure.of_isIntegrallyClosedIn
    [Algebra R B] [Algebra A B] [IsScalarTower R A B]
    [IsIntegrallyClosedIn A B] [Algebra.IsIntegral R A] :
    IsIntegralClosure A R B := by
  refine ⟨IsIntegralClosure.algebraMap_injective _ A _, fun {x} ↦
    ⟨fun hx ↦ IsIntegralClosure.isIntegral_iff.mp (IsIntegral.tower_top (A := A) hx), ?_⟩⟩
  rintro ⟨y, rfl⟩
  exact IsIntegral.map (IsScalarTower.toAlgHom A A B) (Algebra.IsIntegral.isIntegral y)

end IsIntegrallyClosedIn

namespace IsIntegrallyClosed

variable {R S : Type*} [CommRing R] [CommRing S]
variable {K : Type*} [CommRing K] [Algebra R K] [ifr : IsFractionRing R K]

/-- Note that this is not a duplicate instance, since `IsIntegrallyClosed R` is instead defined
as `IsIntegrallyClosed R R (FractionRing R)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/IntegrallyClosed/Variant87d046a473a88405df6e5c23b7c67013503337831073e6c237d4f2693c415433.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/IntegrallyClosed/Variant87d046a473a88405df6e5c23b7c67013503337831073e6c237d4f2693c415433.lean#L181).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `88fb3e802a23c22bf0870eb03f89077f2de0f04c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
