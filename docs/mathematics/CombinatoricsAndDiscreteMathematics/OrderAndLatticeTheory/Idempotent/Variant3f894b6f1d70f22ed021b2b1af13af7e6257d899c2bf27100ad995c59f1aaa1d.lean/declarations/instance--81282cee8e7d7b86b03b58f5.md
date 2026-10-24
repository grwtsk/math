# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e3a1509361a0fe7f0560dda4030618196bd9e4f7d1ef79d55afe0caa04eea6e4",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--81282cee8e7d7b86b03b58f5",
  "source": {
    "blob": "1b414eef859e3fcbb65e0fdfb9cb41654787ba2b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 100,
    "line": 91,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Idempotent/Variant3f894b6f1d70f22ed021b2b1af13af7e6257d899c2bf27100ad995c59f1aaa1d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:81282cee8e7d7b86b03b58f577d565f61523c03c9cd32d01cfaa54d2a003f3fc",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Idempotent/Variant3f894b6f1d70f22ed021b2b1af13af7e6257d899c2bf27100ad995c59f1aaa1d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e3a1509361a0fe7f0560dda4030618196bd9e4f7d1ef79d55afe0caa04eea6e4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 91–100.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance {S : Type*} [CommSemigroup S] : SemilatticeInf {a : S // IsIdempotentElem a} where
  le a b := a.1 * b = a
  le_refl a := a.2
  le_trans a b c hab hbc := show _ = _ by rw [← hab, mul_assoc, hbc]
  le_antisymm a b hab hba := Subtype.ext <| by rw [← hab, mul_comm, hba]
  inf a b := ⟨_, a.2.mul b.2⟩
  inf_le_left a b := show _ = _ by simp_rw [mul_right_comm]; rw [a.2]
  inf_le_right a b := show _ = _ by simp_rw [mul_assoc]; rw [b.2]
  le_inf a b c hab hac := by simp_rw [← mul_assoc]; rw [hab, hac]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Idempotent/Variant3f894b6f1d70f22ed021b2b1af13af7e6257d899c2bf27100ad995c59f1aaa1d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Idempotent/Variant3f894b6f1d70f22ed021b2b1af13af7e6257d899c2bf27100ad995c59f1aaa1d.lean#L91).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1b414eef859e3fcbb65e0fdfb9cb41654787ba2b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
