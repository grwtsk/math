# pairing_two_two_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ba3c5414-cb03-8b9c-e62d-96f6a9346c6c",
  "kind": "lemma",
  "lexical_name": "pairing_two_two_iff",
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
  "slug": "pairing-two-two-iff--20ab86669882a6509457a1e9",
  "source": {
    "blob": "4913c743b0f911d113e76ed0fccbf0b833d01185",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 213,
    "line": 204,
    "path": "GRWTSK/Algebra/LinearAlgebra/Reduced/Variantf522817050202b6b1c73fb5bd31ceec5339c7a6eefb5ad3f44aa1f7694cd55ef.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:20ab86669882a6509457a1e9502acc4a64e70c9c0643d62a3395ae830e328471",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Reduced/Variantf522817050202b6b1c73fb5bd31ceec5339c7a6eefb5ad3f44aa1f7694cd55ef.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ba3c5414-cb03-8b9c-e62d-96f6a9346c6c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 204–213.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma pairing_two_two_iff :
    P.pairing i j = 2 ∧ P.pairing j i = 2 ↔ i = j := by
  refine ⟨fun ⟨h₁, h₂⟩ ↦ ?_, fun h ↦ by simp [h]⟩
  have : ¬ LinearIndependent R ![P.root i, P.root j] := by
    rw [← coxeterWeight_eq_four_iff_not_linearIndependent, coxeterWeight, h₁, h₂]; norm_num
  replace this := P.pairing_smul_root_eq_of_not_linearIndependent this
  exact P.root.injective <| smul_right_injective M two_ne_zero (h₂ ▸ this)

/-- See also `RootPairing.pairingIn_neg_two_neg_two_iff`. -/
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Reduced/Variantf522817050202b6b1c73fb5bd31ceec5339c7a6eefb5ad3f44aa1f7694cd55ef.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Reduced/Variantf522817050202b6b1c73fb5bd31ceec5339c7a6eefb5ad3f44aa1f7694cd55ef.lean#L204).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4913c743b0f911d113e76ed0fccbf0b833d01185` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
