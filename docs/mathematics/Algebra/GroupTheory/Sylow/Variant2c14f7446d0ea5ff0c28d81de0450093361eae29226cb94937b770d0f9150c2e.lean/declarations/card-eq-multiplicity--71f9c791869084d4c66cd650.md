# card_eq_multiplicity

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3b64a56e684a27db95e3f25558fcd30be78a6dce",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 833,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2c/2c14f7446d0ea5ff0c28d81de0450093361eae29226cb94937b770d0f9150c2e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:27a89685-5d55-7882-a994-7f522dbe231e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a633b30d-73dc-afd1-cc0e-5bd137c1c29e",
  "kind": "theorem",
  "lexical_name": "card_eq_multiplicity",
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
  "slug": "card-eq-multiplicity--71f9c791869084d4c66cd650",
  "source": {
    "blob": "3b64a56e684a27db95e3f25558fcd30be78a6dce",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 840,
    "line": 833,
    "path": "GRWTSK/Algebra/GroupTheory/Sylow/Variant2c14f7446d0ea5ff0c28d81de0450093361eae29226cb94937b770d0f9150c2e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:71f9c791869084d4c66cd650178e79d6c6e024c90355f9c944092b8599f77057",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Sylow/Variant2c14f7446d0ea5ff0c28d81de0450093361eae29226cb94937b770d0f9150c2e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a633b30d-73dc-afd1-cc0e-5bd137c1c29e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 833–840.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem card_eq_multiplicity [Finite G] {p : ℕ} [hp : Fact p.Prime] (P : Sylow p G) :
    Nat.card P = p ^ Nat.factorization (Nat.card G) p := by
  obtain ⟨n, heq : Nat.card P = _⟩ := IsPGroup.iff_card.mp P.isPGroup'
  refine Nat.dvd_antisymm ?_ (P.pow_dvd_card_of_pow_dvd_card (Nat.ordProj_dvd _ p))
  rw [heq, ← hp.out.pow_dvd_iff_dvd_ordProj (show Nat.card G ≠ 0 from Nat.card_pos.ne'), ← heq]
  exact P.1.card_subgroup_dvd_card

variable (G) in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Sylow/Variant2c14f7446d0ea5ff0c28d81de0450093361eae29226cb94937b770d0f9150c2e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Sylow/Variant2c14f7446d0ea5ff0c28d81de0450093361eae29226cb94937b770d0f9150c2e.lean#L833).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3b64a56e684a27db95e3f25558fcd30be78a6dce` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
