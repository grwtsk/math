# card_add_two_mul_card_eq_rank

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bde7e08f-c66b-60a9-9b4a-5422fd51e331",
  "kind": "theorem",
  "lexical_name": "card_add_two_mul_card_eq_rank",
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
  "slug": "card-add-two-mul-card-eq-rank--7293fc2199c2bf6474fe4410",
  "source": {
    "blob": "c695658a1815808a9ab9757565a74081ad15a4e4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 495,
    "line": 483,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/Basic/Variant9e67f51d657c0cb273634ba4a2d04b5521ef557fe71fa8f1ba576e0646391735.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7293fc2199c2bf6474fe4410705683eee85bb5af2c725d912dbe5a015a04bf8d",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/Basic/Variant9e67f51d657c0cb273634ba4a2d04b5521ef557fe71fa8f1ba576e0646391735.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bde7e08f-c66b-60a9-9b4a-5422fd51e331`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 483–495.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem card_add_two_mul_card_eq_rank :
    nrRealPlaces K + 2 * nrComplexPlaces K = finrank ℚ K := by
  classical
  rw [← card_real_embeddings, ← card_complex_embeddings, Fintype.card_subtype_compl,
    ← Embeddings.card K ℂ, Nat.add_sub_of_le]
  exact Fintype.card_subtype_le _

set_option backward.isDefEq.respectTransparency false in
open scoped Classical in
/--
The signature of the permutation on the complex embeddings of `K` defined by sending an embedding
to its conjugate has signature `(-1) ^ nrComplexPlaces K`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AlgebraicNumberTheory/Basic/Variant9e67f51d657c0cb273634ba4a2d04b5521ef557fe71fa8f1ba576e0646391735.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/Basic/Variant9e67f51d657c0cb273634ba4a2d04b5521ef557fe71fa8f1ba576e0646391735.lean#L483).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c695658a1815808a9ab9757565a74081ad15a4e4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
