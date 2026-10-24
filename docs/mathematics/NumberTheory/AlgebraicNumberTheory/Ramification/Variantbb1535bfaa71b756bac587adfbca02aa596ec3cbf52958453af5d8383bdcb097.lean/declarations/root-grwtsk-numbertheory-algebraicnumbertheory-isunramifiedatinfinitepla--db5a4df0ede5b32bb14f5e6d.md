# _root_.GRWTSK.NumberTheory.AlgebraicNumberTheory.IsUnramifiedAtInfinitePlaces.Variant74bb414aeace7294191f2a8b804bc6849f12de9d07f463c9a09a9bbc85696ce6.NumberField.ComplexEmbedding.IsConj.isUnramified_mk_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2a293378-8d7d-e456-76bc-489e825b820a",
  "kind": "lemma",
  "lexical_name": "_root_.GRWTSK.NumberTheory.AlgebraicNumberTheory.IsUnramifiedAtInfinitePlaces.Variant74bb414aeace7294191f2a8b804bc6849f12de9d07f463c9a09a9bbc85696ce6.NumberField.ComplexEmbedding.IsConj.isUnramified_mk_iff",
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
  "slug": "root-grwtsk-numbertheory-algebraicnumbertheory-isunramifiedatinfinitepla--db5a4df0ede5b32bb14f5e6d",
  "source": {
    "blob": "86f95a1669795aaa94cc8c27a51437b1c637d46a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 336,
    "line": 330,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/Ramification/Variantbb1535bfaa71b756bac587adfbca02aa596ec3cbf52958453af5d8383bdcb097.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:db5a4df0ede5b32bb14f5e6daa513d984cf23c84f2089fa101512bc2ff50cfef",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/Ramification/Variantbb1535bfaa71b756bac587adfbca02aa596ec3cbf52958453af5d8383bdcb097.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2a293378-8d7d-e456-76bc-489e825b820a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 330–336.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma _root_.GRWTSK.NumberTheory.AlgebraicNumberTheory.IsUnramifiedAtInfinitePlaces.Variant74bb414aeace7294191f2a8b804bc6849f12de9d07f463c9a09a9bbc85696ce6.NumberField.ComplexEmbedding.IsConj.isUnramified_mk_iff
    {φ : K →+* ℂ} (h : ComplexEmbedding.IsConj φ σ) :
    IsUnramified k (mk φ) ↔ σ = 1 := by
  rw [h.ext_iff, ComplexEmbedding.isConj_one_iff, ← not_iff_not, not_isUnramified_iff,
    ← not_isReal_iff_isComplex, comap_mk, isReal_mk_iff, isReal_mk_iff, eq_true h.isReal_comp,
    and_true]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AlgebraicNumberTheory/Ramification/Variantbb1535bfaa71b756bac587adfbca02aa596ec3cbf52958453af5d8383bdcb097.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/Ramification/Variantbb1535bfaa71b756bac587adfbca02aa596ec3cbf52958453af5d8383bdcb097.lean#L330).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `86f95a1669795aaa94cc8c27a51437b1c637d46a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
