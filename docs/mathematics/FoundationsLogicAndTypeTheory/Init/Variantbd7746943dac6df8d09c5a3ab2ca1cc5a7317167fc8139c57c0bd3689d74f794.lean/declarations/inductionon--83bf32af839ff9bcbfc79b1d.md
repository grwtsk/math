# inductionOn'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1f705fe15bd9c6cbaeb6b0abbedef4814c62b37b689262677dae8e3ba8dd1d55",
  "kind": "def",
  "lexical_name": "inductionOn'",
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
  "slug": "inductionon--83bf32af839ff9bcbfc79b1d",
  "source": {
    "blob": "349f86795102c1cae76a6a03901e769fecc18c3c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 114,
    "line": 94,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Init/Variantbd7746943dac6df8d09c5a3ab2ca1cc5a7317167fc8139c57c0bd3689d74f794.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:83bf32af839ff9bcbfc79b1d2278f75a5be6bb3eb58603adb1ceda714bfd2c8f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Init/Variantbd7746943dac6df8d09c5a3ab2ca1cc5a7317167fc8139c57c0bd3689d74f794.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1f705fe15bd9c6cbaeb6b0abbedef4814c62b37b689262677dae8e3ba8dd1d55`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 94–114.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[elab_as_elim] protected def inductionOn' : C z :=
  cast (congrArg C <| show b + (z - b) = z by rw [Int.add_comm, z.sub_add_cancel b]) <|
  match z - b with
  | .ofNat n => pos n
  | .negSucc n => neg n
where
  /-- The positive case of `Int.inductionOn'`. -/
  pos : ∀ n : ℕ, C (b + n)
  | 0 => cast (by simp) H0
  | n+1 => cast (by rw [Int.add_assoc]; rfl) <|
    Hs _ (Int.le_add_of_nonneg_right (ofNat_nonneg _)) (pos n)

  /-- The negative case of `Int.inductionOn'`. -/
  neg : ∀ n : ℕ, C (b + -[n+1])
  | 0 => Hp _ Int.le_rfl H0
  | n+1 => by
    refine cast (by rw [Int.add_sub_assoc]; rfl) (Hp _ (Int.le_of_lt ?_) (neg n))
    omega

variable {z b H0 Hs Hp}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/Init/Variantbd7746943dac6df8d09c5a3ab2ca1cc5a7317167fc8139c57c0bd3689d74f794.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Init/Variantbd7746943dac6df8d09c5a3ab2ca1cc5a7317167fc8139c57c0bd3689d74f794.lean#L94).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `349f86795102c1cae76a6a03901e769fecc18c3c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
