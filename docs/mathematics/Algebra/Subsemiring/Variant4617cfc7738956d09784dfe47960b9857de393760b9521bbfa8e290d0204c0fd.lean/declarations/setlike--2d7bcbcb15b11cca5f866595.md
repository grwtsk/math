# setLike

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d9c864ba7994047ddddf52e51a239e3454ab50995c7cfe8105dcc9e0475a0b1d",
  "kind": "instance",
  "lexical_name": "setLike",
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
  "slug": "setlike--2d7bcbcb15b11cca5f866595",
  "source": {
    "blob": "cb4b731770051deb03226f3e535ee20c6ca41594",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 49,
    "line": 39,
    "path": "GRWTSK/Algebra/Subsemiring/Variant4617cfc7738956d09784dfe47960b9857de393760b9521bbfa8e290d0204c0fd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2d7bcbcb15b11cca5f866595040206574dbd965b42deb4e5a48a7eb60f2d4c5d",
  "verification": {
    "reference": "docs/verification/Algebra/Subsemiring/Variant4617cfc7738956d09784dfe47960b9857de393760b9521bbfa8e290d0204c0fd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d9c864ba7994047ddddf52e51a239e3454ab50995c7cfe8105dcc9e0475a0b1d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 39–49.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance setLike {R : Type v} [NonAssocSemiring R] [Star R] :
    SetLike (StarSubsemiring R) R where
  coe {s} := s.carrier
  coe_injective' p q h := by obtain ⟨⟨⟨⟨_, _⟩, _⟩, _⟩, _⟩ := p; cases q; congr

initialize_simps_projections StarSubsemiring (carrier → coe, as_prefix coe)

variable {R : Type v} [NonAssocSemiring R] [StarRing R]

/-- The actual `StarSubsemiring` obtained from an element of a `StarSubsemiringClass`. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Subsemiring/Variant4617cfc7738956d09784dfe47960b9857de393760b9521bbfa8e290d0204c0fd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Subsemiring/Variant4617cfc7738956d09784dfe47960b9857de393760b9521bbfa8e290d0204c0fd.lean#L39).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cb4b731770051deb03226f3e535ee20c6ca41594` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
