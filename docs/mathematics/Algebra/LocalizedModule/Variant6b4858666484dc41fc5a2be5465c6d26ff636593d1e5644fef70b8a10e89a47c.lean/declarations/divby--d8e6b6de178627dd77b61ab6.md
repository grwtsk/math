# divBy

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d5b46712ebce6a794dca6b4f37ecc128939eb6d6a4db3d2d56be59b5051880b3",
  "kind": "def",
  "lexical_name": "divBy",
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
  "slug": "divby--d8e6b6de178627dd77b61ab6",
  "source": {
    "blob": "dbf064901ad42b8834fea161f7e5440112815034",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 509,
    "line": 487,
    "path": "GRWTSK/Algebra/LocalizedModule/Variant6b4858666484dc41fc5a2be5465c6d26ff636593d1e5644fef70b8a10e89a47c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d8e6b6de178627dd77b61ab642bf2f7c7b338eeb2a7cb77a58f857f499dedd7a",
  "verification": {
    "reference": "docs/verification/Algebra/LocalizedModule/Variant6b4858666484dc41fc5a2be5465c6d26ff636593d1e5644fef70b8a10e89a47c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d5b46712ebce6a794dca6b4f37ecc128939eb6d6a4db3d2d56be59b5051880b3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 487–509.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def divBy (s : S) : LocalizedModule S M →ₗ[R] LocalizedModule S M where
  toFun p :=
    p.liftOn (fun p => mk p.1 (s * p.2)) fun ⟨a, b⟩ ⟨a', b'⟩ ⟨c, eq1⟩ =>
      mk_eq.mpr ⟨c, by rw [mul_smul, mul_smul, smul_comm c, eq1, smul_comm s]⟩
  map_add' x y :=
    x.induction_on₂
      (by
        intro m₁ m₂ t₁ t₂
        simp only [mk_add_mk, LocalizedModule.liftOn_mk, mul_smul, ← smul_add, mul_assoc,
          mk_cancel_common_left s]
        rw [show s * (t₁ * t₂) = t₁ * (s * t₂) by
            ext
            simp only [Submonoid.coe_mul]
            ring])
      y
  map_smul' r x :=
    x.inductionOn <| by
      intro
      dsimp only
      change liftOn (mk _ _) _ _ = r • (liftOn (mk _ _) _ _)
      simp [LocalizedModule.liftOn_mk, smul'_mk]
#align localized_module.div_by LocalizedModule.divBy

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/LocalizedModule/Variant6b4858666484dc41fc5a2be5465c6d26ff636593d1e5644fef70b8a10e89a47c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LocalizedModule/Variant6b4858666484dc41fc5a2be5465c6d26ff636593d1e5644fef70b8a10e89a47c.lean#L487).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dbf064901ad42b8834fea161f7e5440112815034` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
