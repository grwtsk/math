# weight_p03_1_2

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ae6f8a63-79bc-9970-b094-47915b221165",
  "kind": "theorem",
  "lexical_name": "weight_p03_1_2",
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
  "slug": "weight-p03-1-2--340eff2a66ea66cd0a656aad",
  "source": {
    "blob": "4413da7f9e8ab84dfd22f300309d1d2977b0bae0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 607,
    "line": 594,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/07c69accc45b354df6c50c33609fb47ab41a4bb003a45dfb9552edf2def7e37dOrderFourRecursi/Variant1c37acb083751ddbb2e0311d57b128f69194ea4db9ef5e43929897c3f6e56437.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:340eff2a66ea66cd0a656aad41d7d19cf9b7793b507d59a8e1b85e1dc38de877",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/07c69accc45b354df6c50c33609fb47ab41a4bb003a45dfb9552edf2def7e37dOrderFourRecursi/Variant1c37acb083751ddbb2e0311d57b128f69194ea4db9ef5e43929897c3f6e56437.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ae6f8a63-79bc-9970-b094-47915b221165`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 594–607.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem weight_p03_1_2
    (κ : DirectionCumulantFamily E R) (d : Fin 4 → E) :
    directionalPartitionWeight κ d p03_1_2 =
      κ 2 ![d 0, d 3] * κ 1 (fun _ : Fin 1 => d 1) *
        κ 1 (fun _ : Fin 1 => d 2) := by
  classical
  unfold directionalPartitionWeight partitionWeight
  rw [p03_1_2_parts]
  have h0 : ({0, 3} : Finset (Fin 4)) ∉
      ({({1} : Finset (Fin 4)), ({2} : Finset (Fin 4))} : Finset (Finset (Fin 4))) := by decide
  have h1 : ({1} : Finset (Fin 4)) ∉
      ({({2} : Finset (Fin 4))} : Finset (Finset (Fin 4))) := by decide
  simp [blockCumulantFunctional, blockCumulantValue_singleton, h0, h1, mul_assoc]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/07c69accc45b354df6c50c33609fb47ab41a4bb003a45dfb9552edf2def7e37dOrderFourRecursi/Variant1c37acb083751ddbb2e0311d57b128f69194ea4db9ef5e43929897c3f6e56437.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/07c69accc45b354df6c50c33609fb47ab41a4bb003a45dfb9552edf2def7e37dOrderFourRecursi/Variant1c37acb083751ddbb2e0311d57b128f69194ea4db9ef5e43929897c3f6e56437.lean#L594).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4413da7f9e8ab84dfd22f300309d1d2977b0bae0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
