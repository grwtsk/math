# quotNilradicalEquivPi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:92491cad845fdddb83501db73e44841908526696aa73b9e8b76a9c891bce1d5f",
  "kind": "def",
  "lexical_name": "quotNilradicalEquivPi",
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
  "slug": "quotnilradicalequivpi--7ddd55fb8c7c5d11e4cee79d",
  "source": {
    "blob": "36478d4039716d97e5176274c36b4c62e3870268",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 627,
    "line": 616,
    "path": "GRWTSK/Algebra/LinearAlgebra/Module/Variant07f0e379acac96aecb8675ce14d973b5ce689da3dc4b8ca4c855db1de6c0883a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7ddd55fb8c7c5d11e4cee79dbcd1a369c748605d739af5b2d0c090f76d16ef0f",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Module/Variant07f0e379acac96aecb8675ce14d973b5ce689da3dc4b8ca4c855db1de6c0883a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:92491cad845fdddb83501db73e44841908526696aa73b9e8b76a9c891bce1d5f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 616–627.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def quotNilradicalEquivPi :
    (R ⧸ nilradical R) ≃ₐ[R] ∀ I : MaximalSpectrum R, R ⧸ I.asIdeal :=
  (Ideal.quotientEquivAlgOfEq R (nilradical_eq_iInf R)).trans
    { __ := Ideal.quotientInfRingEquivPiQuotient _ fun I _ ↦ I.isCoprime_of_ne
      commutes' _ := rfl}

#adaptation_note
/-- `respectTransparency.types true` changes the auto-generated lemmas' signature -/
set_option backward.isDefEq.respectTransparency.types false in
/-- The quotient of a commutative Artinian ring by a power of its nilradical is isomorphic to
a finite product of local rings, namely the quotients by the powers of the maximal ideals. -/
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Module/Variant07f0e379acac96aecb8675ce14d973b5ce689da3dc4b8ca4c855db1de6c0883a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Module/Variant07f0e379acac96aecb8675ce14d973b5ce689da3dc4b8ca4c855db1de6c0883a.lean#L616).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `36478d4039716d97e5176274c36b4c62e3870268` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
