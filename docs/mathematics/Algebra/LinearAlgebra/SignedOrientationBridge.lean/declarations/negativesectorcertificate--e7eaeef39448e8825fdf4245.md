# negativeSectorCertificate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:296e4913160ff97189ec486676f8a7132de4b4ffe8d8a7e6f303b508d48e279f",
  "kind": "def",
  "lexical_name": "negativeSectorCertificate",
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
  "slug": "negativesectorcertificate--e7eaeef39448e8825fdf4245",
  "source": {
    "blob": "2dc8b62535efda4d5feffde24df5a0467f53cb0b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 242,
    "line": 227,
    "path": "GRWTSK/LinearAlgebra/SignedOrientationBridge.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e7eaeef39448e8825fdf4245afc2803f9c6e61a34047dbc47f09f57ebba5ee7a",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/SignedOrientationBridge.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:296e4913160ff97189ec486676f8a7132de4b4ffe8d8a7e6f303b508d48e279f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 227–242.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def negativeSectorCertificate [Fintype ι]
    (mask : ι → Bool) :
    OrientationCertificate {x : ι → ℝ // InMinusSector mask x} where
  sign := -1
  sign_sq := by norm_num
  positiveSource := fun x => positiveEnergy x.1
  signedConsumer := fun x => signedEnergy mask x.1
  positive_nonneg := fun x => positiveEnergy_nonneg x.1
  identity := by
    intro x
    have h := neg_signedEnergy_eq_positiveEnergy_of_minusSector x.2
    simpa using h

/-- Existing CommonJ sign conjugation is an exact operator-level example of
orientation reversal. It is not identified with the involutive fundamental
symmetry above: CommonJ itself squares to -I. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/LinearAlgebra/SignedOrientationBridge.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/LinearAlgebra/SignedOrientationBridge.lean#L227).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2dc8b62535efda4d5feffde24df5a0467f53cb0b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
