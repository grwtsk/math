# subset_of_dualFamily_shatters

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c3f7d67d-ec8a-4595-5925-d3dc1b3bdd76",
  "kind": "lemma",
  "lexical_name": "subset_of_dualFamily_shatters",
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
  "slug": "subset-of-dualfamily-shatters--8cc98223f2a4204e26d7202b",
  "source": {
    "blob": "fefe1b5df388d1413398adc629f6cda8e373c715",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 87,
    "line": 80,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/DualVC/Variant7348a3f182128be9a1c038c5d7f27a11817f6fea6f4f59600241720266cb6065.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8cc98223f2a4204e26d7202be19a7a03e120b58c64b20b44358faa08b6982764",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/DualVC/Variant7348a3f182128be9a1c038c5d7f27a11817f6fea6f4f59600241720266cb6065.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c3f7d67d-ec8a-4595-5925-d3dc1b3bdd76`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 80–87.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma subset_of_dualFamily_shatters {S : Finset (Finset α)}
    (hS : (𝒜.dualFamily X).Shatters S) : S ⊆ 𝒜 := by
  obtain ⟨u, hu, hSu⟩ := hS.exists_superset
  obtain ⟨_, _, rfl⟩ := mem_dualFamily.mp hu
  exact hSu.trans (filter_subset _ _)

/-- Embedding `(Fin n → Bool) ↪ ↥S` when `2 ^ n ≤ #S`,
via `(Fin n → Bool) ≃ Fin (2 ^ n) ↪ Fin #S ≃ ↥S`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/DualVC/Variant7348a3f182128be9a1c038c5d7f27a11817f6fea6f4f59600241720266cb6065.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/DualVC/Variant7348a3f182128be9a1c038c5d7f27a11817f6fea6f4f59600241720266cb6065.lean#L80).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fefe1b5df388d1413398adc629f6cda8e373c715` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
