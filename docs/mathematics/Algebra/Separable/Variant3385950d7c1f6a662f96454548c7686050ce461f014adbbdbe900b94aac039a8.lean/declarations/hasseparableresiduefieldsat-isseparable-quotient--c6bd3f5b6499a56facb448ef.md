# HasSeparableResidueFieldsAt.isSeparable_quotient

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2846cb3f084181b51c161d1117846ca687497e025d767a6894af6c8b171a922d",
  "kind": "instance",
  "lexical_name": "HasSeparableResidueFieldsAt.isSeparable_quotient",
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
  "slug": "hasseparableresiduefieldsat-isseparable-quotient--c6bd3f5b6499a56facb448ef",
  "source": {
    "blob": "741858a3881583b01f64ac1ce4de1faca4f38f5e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 114,
    "line": 99,
    "path": "GRWTSK/Algebra/Separable/Variant3385950d7c1f6a662f96454548c7686050ce461f014adbbdbe900b94aac039a8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c6bd3f5b6499a56facb448ef9fabfaf21cfb7278df350e89718cacd385314eba",
  "verification": {
    "reference": "docs/verification/Algebra/Separable/Variant3385950d7c1f6a662f96454548c7686050ce461f014adbbdbe900b94aac039a8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2846cb3f084181b51c161d1117846ca687497e025d767a6894af6c8b171a922d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 99–114.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance HasSeparableResidueFieldsAt.isSeparable_quotient [HasSeparableResidueFieldsAt A B p]
    (q : Ideal B) [q.IsMaximal] [q.LiesOver p] :
    Algebra.IsSeparable (A ⧸ p) (B ⧸ q) :=
  letI := Localization.AtPrime.algebraOfLiesOver p q
  Algebra.isSeparable_residueField_iff.mp (HasSeparableResidueFieldsAt.isSeparable' q)

end Maximal

section Tower

variable {A B C : Type*} [CommRing A] [CommRing B] [CommRing C]
  [Algebra A B] [Algebra B C] [Algebra A C] [IsScalarTower A B C]
  (p : Ideal A) [p.IsPrime]

/-- For a tower of rings `C/B/A`, separability of the residue field extensions of `C/A` above `p`
gives separability of those of `B/A` above `p`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Separable/Variant3385950d7c1f6a662f96454548c7686050ce461f014adbbdbe900b94aac039a8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Separable/Variant3385950d7c1f6a662f96454548c7686050ce461f014adbbdbe900b94aac039a8.lean#L99).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `741858a3881583b01f64ac1ce4de1faca4f38f5e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
