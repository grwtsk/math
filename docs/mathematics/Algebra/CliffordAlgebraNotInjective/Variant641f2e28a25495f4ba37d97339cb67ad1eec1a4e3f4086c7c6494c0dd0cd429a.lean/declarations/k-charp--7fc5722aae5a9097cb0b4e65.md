# K.charP

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7a7927aeff8c413ed63e5e5fd800abff5d892c148b3c60830fc18783574c49dc",
  "kind": "instance",
  "lexical_name": "K.charP",
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
  "slug": "k-charp--7fc5722aae5a9097cb0b4e65",
  "source": {
    "blob": "4869e97aa7dc4c2c7c9a9d2f169e1166cfd281e8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 119,
    "line": 111,
    "path": "GRWTSK/Algebra/CliffordAlgebraNotInjective/Variant641f2e28a25495f4ba37d97339cb67ad1eec1a4e3f4086c7c6494c0dd0cd429a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7fc5722aae5a9097cb0b4e655cd11f9b4dd0bee920706a68c5fb7c08b4b05586",
  "verification": {
    "reference": "docs/verification/Algebra/CliffordAlgebraNotInjective/Variant641f2e28a25495f4ba37d97339cb67ad1eec1a4e3f4086c7c6494c0dd0cd429a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7a7927aeff8c413ed63e5e5fd800abff5d892c148b3c60830fc18783574c49dc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 111–119.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance K.charP : CharP K 2 := by
  dsimp only [K]
  rw [CharP.quotient_iff_le_ker_natCast]
  have : Nat.castRingHom (MvPolynomial (Fin 3) (ZMod 2)) = C.comp (Nat.castRingHom _) := by
    ext1 r; rfl
  rw [this, ← Ideal.comap_comap, ← RingHom.comap_ker, comap_C_kIdeal]
  exact Ideal.comap_mono bot_le

/-- The generators of `K`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/CliffordAlgebraNotInjective/Variant641f2e28a25495f4ba37d97339cb67ad1eec1a4e3f4086c7c6494c0dd0cd429a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CliffordAlgebraNotInjective/Variant641f2e28a25495f4ba37d97339cb67ad1eec1a4e3f4086c7c6494c0dd0cd429a.lean#L111).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4869e97aa7dc4c2c7c9a9d2f169e1166cfd281e8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
