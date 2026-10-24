# schnirelmannDensity_setOfPred_modeq_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:30d8cd25-ce3d-2ac0-39a7-ec6c85d3c87c",
  "kind": "lemma",
  "lexical_name": "schnirelmannDensity_setOfPred_modeq_one",
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
  "slug": "schnirelmanndensity-setofpred-modeq-one--5dc3db3150a66eedbfb364a9",
  "source": {
    "blob": "037089457948f261c4f0ae7cfe22381ab1a971d5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 289,
    "line": 280,
    "path": "GRWTSK/Topology/GeneralTopology/Schnirelmann/Variantb934bff4954d8965afd763e60534efc8bda6b2523dc8fa4b54e727c7b3269128.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5dc3db3150a66eedbfb364a9e7f06516d22a95d47fbe220655c393e9a546ac40",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Schnirelmann/Variantb934bff4954d8965afd763e60534efc8bda6b2523dc8fa4b54e727c7b3269128.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:30d8cd25-ce3d-2ac0-39a7-ec6c85d3c87c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 280–289.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma schnirelmannDensity_setOfPred_modeq_one {m : ℕ} :
    schnirelmannDensity {n | n ≡ 1 [MOD m]} = (m⁻¹ : ℝ) := by
  rcases eq_or_ne m 1 with rfl | hm
  · simp [Nat.modEq_one]
  rw [← schnirelmannDensity_setOfPred_mod_eq_one hm]
  simp [Nat.ModEq, Nat.one_mod_eq_one.mpr hm]

@[deprecated (since := "2026-07-09")]
alias schnirelmannDensity_setOf_modeq_one := schnirelmannDensity_setOfPred_modeq_one

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Schnirelmann/Variantb934bff4954d8965afd763e60534efc8bda6b2523dc8fa4b54e727c7b3269128.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Schnirelmann/Variantb934bff4954d8965afd763e60534efc8bda6b2523dc8fa4b54e727c7b3269128.lean#L280).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `037089457948f261c4f0ae7cfe22381ab1a971d5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
