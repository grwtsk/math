# Ideal.ncard_primesOver_lt_of_not_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cd7b2444-7e9e-c70d-4885-c5fc1abe14e7",
  "kind": "lemma",
  "lexical_name": "Ideal.ncard_primesOver_lt_of_not_le",
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
  "slug": "ideal-ncard-primesover-lt-of-not-le--0b9445f093df8c8b1b273b8f",
  "source": {
    "blob": "81a8c730827f947efcc4a88b8c837435092bdda4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 41,
    "line": 31,
    "path": "GRWTSK/Algebra/Over/Variant78f2c8b0714235f9529a0d9256e9dcd0f40fea3aa7288eb7b5c4c2d263e137fb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0b9445f093df8c8b1b273b8f78594562f3425449f772d2c65f62fde2680d5a21",
  "verification": {
    "reference": "docs/verification/Algebra/Over/Variant78f2c8b0714235f9529a0d9256e9dcd0f40fea3aa7288eb7b5c4c2d263e137fb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cd7b2444-7e9e-c70d-4885-c5fc1abe14e7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 31–41.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Ideal.ncard_primesOver_lt_of_not_le
    (f : S →ₐ[R] T) (Hf : Function.Surjective f)
    (P : Ideal R) (P' : Ideal S) [P'.IsPrime] [P'.LiesOver P]
    (hkP' : ¬ RingHom.ker f.toRingHom ≤ P') (H : (P.primesOver S).Finite) :
    (P.primesOver T).ncard < (P.primesOver S).ncard := by
  rw [← Set.ncard_image_of_injective _ (Ideal.comap_injective_of_surjective _ Hf)]
  refine Set.ncard_lt_ncard (Set.ssubset_iff_exists.mpr ⟨?_, P', ⟨‹_›, ‹_›⟩, ?_⟩) H
  · rintro _ ⟨q, ⟨_, _⟩, rfl⟩
    exact ⟨inferInstance, inferInstanceAs ((q.comap f).LiesOver _)⟩
  · rintro ⟨q, ⟨_, _⟩, rfl⟩; exact hkP' (Ideal.ker_le_comap _)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Over/Variant78f2c8b0714235f9529a0d9256e9dcd0f40fea3aa7288eb7b5c4c2d263e137fb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Over/Variant78f2c8b0714235f9529a0d9256e9dcd0f40fea3aa7288eb7b5c4c2d263e137fb.lean#L31).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `81a8c730827f947efcc4a88b8c837435092bdda4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
